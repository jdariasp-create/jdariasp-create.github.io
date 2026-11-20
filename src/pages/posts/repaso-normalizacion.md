---
layout: ../../components/MarkdownPost.astro
title: "Ejercicio de repaso de normalización"
description: "Cinco tablas con problemas de organización para practicar todo el proceso, desde la primera forma normal hasta Boyce-Codd."
categoria: "normalizacion"
orden: 2
tipo: "enunciado"
image:
  url: "/img/enunciado-ejercicio-repaso-normalizacion.png"
  alt: "Enunciado del ejercicio de repaso"
tags: ["1FN", "3FN", "BCNF"]
pubDate: "Semestre 2026-2"
---

## El problema

Es una guía de repaso con varias tablas que tienen datos de ejemplo y algún problema de organización. En cada una hay que decir en qué forma normal está, justificarlo y llevarla paso a paso hasta la tercera forma normal.

<div class="docs">
  <a href="/docs/enunciados/Enunciado_Ejercicio_Repaso_Normalizacion.pdf" target="_blank" class="enunciado">Ver enunciado (PDF)</a>
</div>

## Qué plantea cada punto

1. **Proyectos y empleados.** Una tabla que mezcla proyectos, empleados, su profesión, el valor de su hora y las horas asignadas. Algunas celdas están vacías y un mismo nombre aparece escrito de formas distintas, lo que muestra lo que pasa cuando la información se repite.
2. **Estudiantes.** Hay que revisar si la tabla está en primera forma normal y, si no lo está, dividirla sin perder ningún dato.
3. **Cenas de un restaurante.** Un miembro asiste a varias cenas y cada cena tiene varios platos. Hay que identificar los datos que se repiten dentro de una misma celda, dibujar sus dependencias y llevar la tabla a tercera forma normal.
4. **Tabla de muestra.** Se pide el esquema, el diagrama de dependencias y la conversión a tercera forma normal.
5. **Alquileres de DVD de Netflix.** Hay que comprobar si ciertas dependencias se cumplen y comparar la descomposición en tercera forma normal con la de Boyce-Codd.
6. **Reflexión.** Explicar cómo se relaciona un buen modelo entidad–relación con la normalización.

## Por qué lo incluyo

Este enunciado reúne en un solo documento todos los pasos del proceso de normalización. Me sirve como referencia para repasar cómo se justifica cada decisión, que es lo que más se evalúa en los talleres.
