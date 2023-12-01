package com.nocountry.c15g39n.services;


import com.nocountry.c15g39n.dto.request.UsuarioRequestDto;
import com.nocountry.c15g39n.dto.response.UsuarioResponseDto;

public interface IUsuarioService {
    UsuarioResponseDto registrarUsuario(UsuarioRequestDto usuarioRequestDto);

}
