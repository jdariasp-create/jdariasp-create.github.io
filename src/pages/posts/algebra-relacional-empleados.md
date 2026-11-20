---
layout: ../../components/MarkdownPost.astro
title: "Ejercicios de álgebra relacional: empleados y universidades"
description: "Ocho consultas sobre empleados, sus jefes y las universidades donde trabajan, para practicar uniones, diferencias y comparaciones."
categoria: "sql"
orden: 2
tipo: "enunciado"
image:
  url: "/img/enunciado-algebra-relacional-empleados.png"
  alt: "Enunciado de ejercicios de álgebra relacional"
tags: ["Álgebra relacional"]
pubDate: "Semestre 2026-2"
---

## El problema

El ejercicio trabaja con cuatro tablas: **empleado** (código, nombre, calle y ciudad), **trabaja** (qué empleado trabaja en qué universidad y con qué sueldo mensual), **universidad** (código, nombre y ciudad) y **jefe** (código, nombre, calle y ciudad). Con ellas hay que escribir una expresión de álgebra relacional para cada pregunta.

<div class="docs">
  <a href="/docs/enunciados/Enunciado_Algebra_Relacional_Empleados.pdf" target="_blank" class="enunciado">Ver enunciado (PDF)</a>
</div>

## Las preguntas

1. Nombres de los empleados que trabajan en la Universidad Central.
2. Nombre y ciudad de los empleados de la Universidad de Los Andes.
3. Nombre, calle y ciudad de los empleados de la Universidad Central que ganan más de 25 millones al año.
4. Empleados que viven en la misma ciudad que la universidad donde trabajan.
5. Empleados que viven en la misma ciudad y en la misma calle que su jefe.
6. Empleados que no trabajan en la Universidad Central.
7. Empleados que ganan más que cualquier empleado de la Universidad de Los Andes.
8. Universidades que están en todas las ciudades donde está la Universidad Nacional de Colombia.

## Por qué lo incluyo

Estas preguntas me ayudaron a entender cuándo usar cada operación. La sexta se resuelve restando un conjunto de otro. La tercera necesita convertir el sueldo mensual en anual antes de comparar. La octava es la más difícil, porque pide las universidades que cumplen la condición en *todas* las ciudades, y eso corresponde a la división. Después apliqué estas mismas ideas en los ejercicios sobre Arkanix.
