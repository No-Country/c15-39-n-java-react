package com.nocountry.c15g39n.services.impl;

import com.nocountry.c15g39n.dto.request.UsuarioRequestDto;
import com.nocountry.c15g39n.dto.response.UsuarioResponseDto;
import com.nocountry.c15g39n.entities.Rol;
import com.nocountry.c15g39n.entities.Usuario;
import com.nocountry.c15g39n.mapper.UsuarioRequestToUsuario;
import com.nocountry.c15g39n.mapper.UsuarioToReponseDto;
import com.nocountry.c15g39n.repositories.RolRepository;
import com.nocountry.c15g39n.repositories.UsuarioRepository;
import com.nocountry.c15g39n.services.IUsuarioService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.security.PrivateKey;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Date;


@Service
@RequiredArgsConstructor
@Transactional
public class UsuarioServiceImpl implements IUsuarioService {
    private final UsuarioToReponseDto usuarioToReponseDto;
    private final UsuarioRequestToUsuario usuarioRequestToUsuario;
    private final UsuarioRepository usuarioRepository;
    private final RolRepository rolRepository;
    private final PasswordEncoder passwordEncoder;
    @Override
    public UsuarioResponseDto registrarUsuario(UsuarioRequestDto usuarioRequestDto) {
      /*  UsuarioResponseDto usuarioResponseDto = new UsuarioResponseDto();*/

        Usuario usuario = new Usuario();
        usuario = usuarioRequestToUsuario.toUsuario(usuarioRequestDto);
        usuario.setFechaRegistro(Date.from(LocalDateTime.now().atZone(ZoneId.systemDefault()).toInstant()));
        usuario.setClave(passwordEncoder.encode(usuarioRequestDto.getClave()));

        Rol rolAprendiz = new Rol();
        rolAprendiz = rolRepository.findById(1L).orElse(null);
        usuario.setRol(rolAprendiz);
        usuarioRepository.save(usuario);


        return usuarioToReponseDto.toRespondeDto(usuario);

}

}

