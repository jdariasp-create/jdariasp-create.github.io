---
layout: ../../components/MarkdownPost.astro
title: "Taller MER: clínica veterinaria, biblioteca y casos especiales"
description: "Corregí un modelo con errores, diseñé el modelo de una biblioteca y analicé tres situaciones que no se resuelven con relaciones simples."
categoria: "modelado"
orden: 1
image:
  url: "/img/mer-ejercicios.png"
  alt: "Diagramas entidad–relación del taller"
tags: ["Modelo entidad–relación", "Peter Chen", "draw.io"]
pubDate: "Semestre 2026-2"
---

## El problema

El taller tenía tres partes. En la primera, una clínica veterinaria había contratado a un estudiante para modelar su base de datos, y el modelo que él entregó tenía errores. Las reglas del negocio eran claras: un dueño puede registrar varias mascotas, cada mascota tiene un solo dueño, un dueño puede dejar varios números de contacto y una mascota puede ser atendida muchas veces y por veterinarios distintos. De cada atención se guarda la fecha y el motivo, y la edad de la mascota se calcula a partir de su fecha de nacimiento.

En la segunda parte, la biblioteca de la universidad necesitaba un modelo para sus títulos, ejemplares, usuarios y préstamos. Cada título tiene un ISBN, un año de publicación y uno o varios autores. La biblioteca tiene varias copias físicas de un mismo título, y cada copia se numera dentro de su título (copia 1, 2, 3 del mismo ISBN). También se necesitaba saber cuántos días de mora lleva un préstamo.

La tercera parte proponía tres situaciones especiales: un médico que atiende a un paciente en un consultorio y en una fecha; usuarios de la biblioteca que son estudiantes o docentes; y docentes que trabajan en proyectos de investigación y reciben un equipo por esa participación.

<div class="docs">
  <a href="/docs/Taller_MER_Ejercicios.pdf" target="_blank">Ver taller completo (PDF)</a>
</div>

## Cómo lo resolví

### Clínica veterinaria

Al comparar el modelo con las reglas encontré cuatro errores y los corregí así:

- La relación entre dueño y mascota estaba definida como uno a uno. Como un dueño puede tener varias mascotas, la cambié a **uno a muchos**.
- Los teléfonos aparecían como dos campos separados (`telefono1` y `telefono2`). Eso limita al dueño a dos números, así que lo dejé como un **atributo multivaluado**.
- La edad estaba guardada como un dato fijo, pero cambia con el tiempo. La marqué como **atributo derivado**, porque se calcula a partir de la fecha de nacimiento.
- La atención entre mascota y veterinario debía ser de **muchos a muchos**, y la fecha y el motivo tenían que quedar en la relación, porque pertenecen a cada atención y no a la mascota ni al veterinario.

### Biblioteca

Identifiqué las entidades (título, ejemplar, usuario y préstamo), sus atributos y las relaciones entre ellas. Señalé el nombre del usuario como atributo compuesto, los autores como multivaluado y los días de mora como derivado. El **ejemplar** lo definí como entidad débil, porque su número solo tiene sentido dentro del título al que pertenece: la copia 2 de un libro no es la misma que la copia 2 de otro.

### Casos especiales

- **Médico, paciente y consultorio:** expliqué que tres relaciones de a dos no reemplazan una relación entre los tres, porque se pierde la información de qué médico atendió a qué paciente, en qué consultorio y en qué fecha.
- **Estudiantes y docentes:** los representé como dos tipos de usuario que heredan sus datos generales y agregan los propios, por ejemplo el semestre en el caso del estudiante.
- **Docentes y proyectos:** el equipo no se asigna al docente ni al proyecto por separado, sino a la participación de ese docente en ese proyecto. Por eso usé una **agregación**: primero se agrupa la relación docente–proyecto y después se conecta con el equipo.

![Diagramas del taller](/img/mer-ejercicios.png)
