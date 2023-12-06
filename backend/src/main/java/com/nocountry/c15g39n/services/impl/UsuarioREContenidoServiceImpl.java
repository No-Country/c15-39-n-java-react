package com.nocountry.c15g39n.services.impl;

import com.nocountry.c15g39n.dto.request.UsuarioRutaRequestDto;
import com.nocountry.c15g39n.dto.response.ContenidoCompletadoResponseDto;
import com.nocountry.c15g39n.entities.Contenido;
import com.nocountry.c15g39n.entities.Etapa;
import com.nocountry.c15g39n.entities.Ruta;
import com.nocountry.c15g39n.entities.UsuarioREContenido;
import com.nocountry.c15g39n.entities.UsuarioRuta;
import com.nocountry.c15g39n.entities.UsuarioRutaEtapa;
import com.nocountry.c15g39n.exception.RutaNoExisteException;
import com.nocountry.c15g39n.exception.UsuarioAprendizNoAutenticadoException;
import com.nocountry.c15g39n.exception.UsuarioNoTieneContenidosAsociadosException;
import com.nocountry.c15g39n.exception.UsuarioNoTieneEtapaAsociadaException;
import com.nocountry.c15g39n.exception.UsuarioNoTieneRutasAsocidasException;
import com.nocountry.c15g39n.repositories.RutaRepository;
import com.nocountry.c15g39n.repositories.UsuarioREContenidoRepository;
import com.nocountry.c15g39n.repositories.UsuarioRutaEtapaRepository;
import com.nocountry.c15g39n.repositories.UsuarioRutaRepository;
import com.nocountry.c15g39n.services.IContenidoService;
import com.nocountry.c15g39n.services.IEtapaService;
import com.nocountry.c15g39n.services.IToken;
import com.nocountry.c15g39n.services.IUsuarioREContenidoService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional
public class UsuarioREContenidoServiceImpl implements IUsuarioREContenidoService {

    private final IToken token;
    private final RutaRepository rutaRepository;
    private final UsuarioRutaRepository usuarioRutaRepository;
    private final UsuarioRutaEtapaRepository usuarioRutaEtapaRepository;
    private final UsuarioREContenidoRepository usuarioREContenidoRepository;
    private final IEtapaService etapaService;
    private final IContenidoService contenidoService;

    @Override
    public void registrarUsuarioREContenido(UsuarioRutaRequestDto usuarioRutaRequestDto) {
        Long idAprendizAuth = validarUsuarioAutenticado();
        List<Long> idRutasDadas = usuarioRutaRequestDto.getIdRutas();
        for (Long idRuta : idRutasDadas) {
            Ruta ruta = rutaRepository.findById(idRuta).orElse(null);
            if (ruta == null) throw new RutaNoExisteException();

            List<Etapa> etapas= etapaService.obtenerEtapasPorRutaId(idRuta);
            UsuarioRuta usuarioRuta = usuarioRutaRepository.findByUsuarioIdAndRutaId(idAprendizAuth, idRuta).orElseThrow();
            for(Etapa etapa: etapas){
                UsuarioRutaEtapa usuarioRutaEtapa = usuarioRutaEtapaRepository.findByUsuarioRutaIdAndEtapaId(usuarioRuta.getId(), etapa.getId()).orElseThrow();

                List<Contenido> contenidos= contenidoService.onbtenerContenidosPorEtapaId(etapa.getId());

                for(Contenido contenido: contenidos){
                    UsuarioREContenido usuarioREContenido = new UsuarioREContenido();
                    usuarioREContenido.setFlagContenidoRealizado(false);
                    usuarioREContenido.setUsuarioRutaEtapa(usuarioRutaEtapa);
                    usuarioREContenido.setContenido(contenido);
                    usuarioREContenidoRepository.save(usuarioREContenido);
                }

            }
        }
    }

    @Override
    public ContenidoCompletadoResponseDto marcarContenidoCompletado(Long rutaId, Long etapaId, Long contenidoId) {
        Long idAprendizAuth = validarUsuarioAutenticado();

        Ruta ruta = rutaRepository.findById(rutaId).orElse(null);
        if (ruta == null) throw new RutaNoExisteException();

        UsuarioRuta usuarioRuta = usuarioRutaRepository.findByUsuarioIdAndRutaId(idAprendizAuth, ruta.getId()).orElse(null);
        if(usuarioRuta==null) throw new UsuarioNoTieneRutasAsocidasException();

        UsuarioRutaEtapa usuarioRutaEtapa = usuarioRutaEtapaRepository.findByUsuarioRutaIdAndEtapaId(usuarioRuta.getId(), etapaId).orElse(null);
        if(usuarioRutaEtapa==null) throw new UsuarioNoTieneEtapaAsociadaException();

        UsuarioREContenido usuarioREContenido= usuarioREContenidoRepository.findByUsuarioRutaEtapaIdAndContenidoId(usuarioRutaEtapa.getId(),contenidoId).orElse(null);
        if(usuarioREContenido==null) throw new UsuarioNoTieneContenidosAsociadosException();

        usuarioREContenido.setFlagContenidoRealizado(true);
        usuarioREContenidoRepository.save(usuarioREContenido);

        ContenidoCompletadoResponseDto contenidoCompletadoResponseDto = new ContenidoCompletadoResponseDto();
        contenidoCompletadoResponseDto.setMensaje("El nivel ha sido marcado completado de forma correcta: "+usuarioREContenido.getContenido().getTitulo());

        return contenidoCompletadoResponseDto;
    }

    private Long validarUsuarioAutenticado(){
        String bearerToken = token.getBearerToken();
        if(bearerToken== null) throw new UsuarioAprendizNoAutenticadoException();
        return token.getUsuarioAutenticadoId(bearerToken);
    }


}

