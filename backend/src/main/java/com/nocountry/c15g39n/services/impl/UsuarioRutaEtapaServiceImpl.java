package com.nocountry.c15g39n.services.impl;

import com.nocountry.c15g39n.dto.request.UsuarioRutaRequestDto;
import com.nocountry.c15g39n.entities.Etapa;
import com.nocountry.c15g39n.entities.Ruta;
import com.nocountry.c15g39n.entities.UsuarioRuta;
import com.nocountry.c15g39n.entities.UsuarioRutaEtapa;
import com.nocountry.c15g39n.exception.RutaNoExisteException;
import com.nocountry.c15g39n.exception.UsuarioAprendizNoAutenticadoException;
import com.nocountry.c15g39n.repositories.RutaRepository;
import com.nocountry.c15g39n.repositories.UsuarioRutaEtapaRepository;
import com.nocountry.c15g39n.repositories.UsuarioRutaRepository;
import com.nocountry.c15g39n.services.IEtapaService;
import com.nocountry.c15g39n.services.IToken;
import com.nocountry.c15g39n.services.IUsuarioRutaEtapaService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional
public class UsuarioRutaEtapaServiceImpl implements IUsuarioRutaEtapaService {
    private final IToken token;
    private final RutaRepository rutaRepository;
    private final UsuarioRutaRepository usuarioRutaRepository;
    private final UsuarioRutaEtapaRepository usuarioRutaEtapaRepository;
    private final IEtapaService etapaService;

    @Override
    public void registrarUsuarioRutaEtapa(UsuarioRutaRequestDto usuarioRutaRequestDto) {
        String bearerToken = token.getBearerToken();
        if(bearerToken== null) throw new UsuarioAprendizNoAutenticadoException();
        Long idAprendizAuth = token.getUsuarioAutenticadoId(bearerToken);
        List<Long> idRutasDadas = usuarioRutaRequestDto.getIdRutas();
        for (Long idRuta : idRutasDadas) {
            Ruta ruta = rutaRepository.findById(idRuta).orElse(null);
            if (ruta == null) throw new RutaNoExisteException();

            List<Etapa> etapas= etapaService.obtenerEtapasPorRutaId(idRuta);
            UsuarioRuta usuarioRuta = usuarioRutaRepository.findByUsuarioIdAndRutaId(idAprendizAuth, idRuta).orElseThrow();
            for(Etapa etapa: etapas){
                UsuarioRutaEtapa usuarioRutaEtapa = new UsuarioRutaEtapa();
                usuarioRutaEtapa.setUsuarioRuta(usuarioRuta);
                usuarioRutaEtapa.setFlagEtapaRealizada(false);
                usuarioRutaEtapa.setEtapa(etapa);
                usuarioRutaEtapaRepository.save(usuarioRutaEtapa);
            }


        }


    }
}
