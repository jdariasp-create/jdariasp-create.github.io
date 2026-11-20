---
layout: ../../components/MarkdownPost.astro
title: "Álgebra relacional sobre Arkanix"
description: "Escribí cincuenta consultas sobre la base de datos de mi proyecto, desde las más sencillas hasta algunas que combinan varias tablas."
categoria: "sql"
orden: 1
image:
  url: "/img/algebra.png"
  alt: "Ejercicios de álgebra relacional"
tags: ["Álgebra relacional", "Arkanix"]
pubDate: "Semestre 2026-2"
---

## El problema

La idea era practicar álgebra relacional con un caso propio y no con uno inventado. Por eso usé las tablas de Arkanix, la base de datos de videojuegos del proyecto final: jugadores, videojuegos, categorías, bibliotecas, compras, reseñas y logros. A partir de ellas planteé cincuenta preguntas que una plataforma así necesitaría responder y escribí la expresión que resuelve cada una.

<div class="docs">
  <a href="/docs/Algebra_Relacional_Arkanix.pdf" target="_blank">Ver los 50 ejercicios (PDF)</a>
</div>

## Cómo lo resolví

Organicé las consultas de menor a mayor dificultad, en cinco partes:

| Parte | Qué practiqué | Ejemplo de pregunta |
|---|---|---|
| 1 | Filtrar filas y escoger columnas | ¿Qué jugadores viven en Colombia? |
| 2 | Filtros con condiciones más precisas | ¿Qué sesiones de juego duraron más de 100 minutos? |
| 3 | Unir información de varias tablas | ¿Qué videojuegos pertenecen a la categoría RPG? |
| 4 | Unir, cruzar y restar resultados | ¿Qué videojuegos no aparecen en ninguna biblioteca? |
| 5 | Consultas más completas | ¿Qué jugadores desbloquearon todos los logros de un videojuego? |

Debajo de cada expresión escribí una explicación corta de lo que devuelve. Algunos ejemplos de la primera parte:

- Todos los jugadores registrados: `R₁ = jugador`
- Solo nombres y apellidos: `R₂ = π nombre, apellido (jugador)`
- Jugadores que residen en Colombia: `R₃ = σ pais_residencia = 'Colombia' (jugador)`

Hacer este ejercicio antes de escribir el SQL del proyecto me ayudó mucho. Cuando ya tenía clara la expresión en álgebra, pasarla a SQL era casi directo.

![Ejercicios de álgebra relacional](/img/algebra.png)
