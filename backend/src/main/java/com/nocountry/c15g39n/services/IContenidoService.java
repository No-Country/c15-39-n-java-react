package com.nocountry.c15g39n.services;

import com.nocountry.c15g39n.entities.Contenido;

import java.util.List;

public interface IContenidoService {
    List<Contenido> onbtenerContenidosPorEtapaId(Long etapaId);
}
