---
layout: ../../components/MarkdownPost.astro
title: "Taller avanzado de normalización"
description: "Dos casos más exigentes, una empresa de envíos internacionales y una cadena de videoclubes, con datos repetidos dentro de otros datos repetidos."
categoria: "normalizacion"
orden: 3
tipo: "enunciado"
image:
  url: "/img/enunciado-taller-avanzado-normalizacion.png"
  alt: "Enunciado del taller avanzado de normalización"
tags: ["1FN", "2FN", "3FN"]
pubDate: "Semestre 2026-2"
---

## El problema

Este taller toma los ejercicios más difíciles de las guías anteriores y les agrega más atributos, más dependencias y nuevas entidades. El alcance llega hasta la tercera forma normal.

<div class="docs">
  <a href="/docs/enunciados/Enunciado_Taller_Avanzado_Normalizacion.pdf" target="_blank" class="enunciado">Ver enunciado (PDF)</a>
</div>

### Caso 1: envíos internacionales

La empresa Logistic Systems S.A.S. hace envíos puerta a puerta entre ciudades y países. Cada guía puede incluir varios paquetes. La despacha un conductor en un vehículo y tiene un plan de tarifas que depende de la zona de destino. Además, el sistema registra cada evento de rastreo de un paquete (recogida, tránsito, aduana y entrega) y la forma de pago del cliente. Toda esta información está en una sola tabla.

### Caso 2: videoclub

La cadena Stream&Go tiene varios locales que todavía alquilan películas en DVD y Blu-ray. Cada película tiene varias copias físicas, varios actores con papeles distintos, un director y una o más categorías. Los clientes tienen una membresía con un plan mensual, semestral o anual. Igual que en el primer caso, todo está en una sola tabla.

## Qué se pide

- Encontrar el identificador de la tabla original y justificar por qué se eligió.
- Decir en qué forma normal está y qué datos incumplen cada una.
- Eliminar los grupos que se repiten (paquetes y eventos, o actores y categorías), luego los datos que dependen solo de una parte del identificador y por último los que dependen de otro dato que no es el identificador.
- Entregar el diagrama de dependencias final y el esquema de tablas, con sus claves.

## Por qué lo incluyo

Lo que hace difícil este taller es que la información se repite en varios niveles: una guía tiene varios paquetes y cada paquete tiene varios eventos. Por eso es una buena práctica para aprender a separar la información en el orden correcto.
