package com.nocountry.c15g39n.services;

import com.nocountry.c15g39n.dto.request.UsuarioRutaRequestDto;
import com.nocountry.c15g39n.dto.response.ContenidoCompletadoResponseDto;

public interface IUsuarioREContenidoService {
    void registrarUsuarioREContenido(UsuarioRutaRequestDto usuarioRutaRequestDto);

    ContenidoCompletadoResponseDto marcarContenidoCompletado(Long rutaId, Long etapaId, Long contenidoId);

}
