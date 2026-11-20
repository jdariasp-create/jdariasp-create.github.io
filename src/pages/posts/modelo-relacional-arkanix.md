---
layout: ../../components/MarkdownPost.astro
title: "Modelo relacional de Arkanix"
description: "El diagrama que usamos como base para construir la base de datos del proyecto final, junto con su diccionario de datos."
categoria: "modelado"
orden: 3
autores: "Juan Diego Arias Páez y Jairo Esteban Baquero"
image:
  url: "/img/arkanix-barker.png"
  alt: "Modelo relacional de Arkanix"
tags: ["Notación Barker", "Diccionario de datos"]
pubDate: "Noviembre de 2026"
---

## El problema

Para el proyecto final necesitábamos diseñar la base de datos de **Arkanix**, una plataforma que administra un catálogo de videojuegos para computador. La plataforma debía guardar la información de cada videojuego (quién lo desarrolló, quién lo publicó, sus categorías y en qué sistemas operativos funciona) y la actividad de los jugadores: qué juegos tienen, qué compran, qué opinan, qué logros consiguen y cuánto tiempo juegan.

<div class="docs">
  <a href="/docs/Arkanix_Modelo_Relacional_Barker.pdf" target="_blank">Ver diagrama (PDF)</a>
  <a href="/docs/Diccionario_BD.xlsx" target="_blank">Diccionario de datos (Excel)</a>
</div>

## Cómo lo resolvimos

Organizamos el modelo en cuatro grupos de información:

- **El catálogo:** videojuego, desarrolladora, publicadora, categoría y sistema operativo. Como un juego puede tener varias categorías y funcionar en varios sistemas, y lo mismo al revés, usamos tablas intermedias para unirlos.
- **El contenido adicional:** contenidos descargables (DLC), demos y logros, que siempre dependen de un videojuego. También dejamos la posibilidad de que un juego indique cuál es su versión original.
- **Las personas:** jugadores y administradores. El administrador es quien registra los juegos en el catálogo.
- **La actividad del jugador:** biblioteca, compras, reseñas, logros obtenidos y sesiones de juego. Decidimos que las reseñas y las sesiones dependieran de la biblioteca. De esta forma, un jugador solo puede opinar sobre un juego o registrar tiempo de juego si de verdad lo tiene.

![Modelo relacional de Arkanix](/img/arkanix-barker.png)

También elaboramos un diccionario de datos. Para cada tabla describe sus campos, el tipo de dato, si es clave o tiene alguna restricción, si puede quedar vacío y para qué sirve.
