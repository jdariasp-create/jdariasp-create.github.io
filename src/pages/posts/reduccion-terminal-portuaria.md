---
layout: ../../components/MarkdownPost.astro
title: "Reducción a tablas: Terminal Portuaria Bahía Verde"
description: "Transformé un modelo conceptual completo para dejarlo listo para pasar a tablas, aplicando una regla distinta en cada caso."
categoria: "modelado"
orden: 2
image:
  url: "/img/mer-portuario-modelo.png"
  alt: "Modelo entidad–relación de la terminal portuaria"
tags: ["Reglas de transformación", "Peter Chen", "draw.io"]
pubDate: "Semestre 2026-2"
---

## El problema

El docente nos entregó el modelo conceptual de la Terminal Portuaria Bahía Verde, ya revisado con el área funcional. El modelo describe a los importadores dueños de la carga, las rutas marítimas, la llegada de cada buque al puerto (recalada), los certificados de los buques, los operarios, los contratistas que entregan suministros y las bodegas donde se guarda la carga.

La tarea no era corregir ni rediseñar el modelo, sino **transformarlo**. Al final solo podían quedar entidades, atributos simples y relaciones de uno a uno o de uno a muchos. Este es el paso previo para convertir el diagrama en tablas, y cada transformación debía ir acompañada de la regla aplicada.

<div class="docs">
  <a href="/docs/Taller_MER_Terminal_Portuaria.pdf" target="_blank">Ver mi solución (PDF)</a>
  <a href="/docs/enunciados/Enunciado_Taller1_Reglas_de_Transformacion.pdf" target="_blank" class="enunciado">Enunciado del taller (PDF)</a>
</div>

![Modelo de la terminal portuaria](/img/mer-portuario-modelo.png)

## Cómo lo resolví

Lo primero fue identificar todo lo que no podía quedar como estaba. Luego apliqué a cada caso la regla que le correspondía:

- **Atributos que se dividen.** El nombre completo del importador lo separé en nombres y apellidos. El correo, como puede haber varios, lo pasé a una entidad aparte que depende del importador.
- **Atributos que se calculan.** La antigüedad del cliente y la del buque desaparecen, porque se pueden obtener en cualquier momento a partir de la fecha de registro y del año de construcción.
- **La sede del contratista.** Era al mismo tiempo multivaluada (puede haber varias) y compuesta (ciudad y dirección). Primero la separé como entidad y después dividí sus partes. Expliqué por qué el orden importa: al hacerlo al revés, la ciudad y la dirección de una misma sede quedan desconectadas.
- **Relaciones de muchos a muchos con datos propios.** El embarque y la cuadrilla se convirtieron en entidades. Así, el turno y las horas trabajadas quedan en la participación del operario en cada recalada, y no en el operario ni en la recalada, donde se perdería el detalle.
- **Relación entre tres entidades.** El abastecimiento (contratista, recalada y suministro) pasó a ser una entidad con tres relaciones. Su identificador combina el de las tres entidades, porque ninguna por sí sola distingue un registro.
- **Agregación.** La bodega se conecta con el embarque ya transformado, porque la carga que se almacena es la de un importador en una recalada específica.
- **Tipos de operario.** Los grueros y los estibadores quedaron como entidades unidas al operario por relaciones uno a uno. Como un operario puede ser las dos cosas, o ninguna, no se podía resolver con una sola tabla y un campo de tipo.

![Transformación del embarque](/img/mer-portuario-embarque.png)

![Desarrollo de los literales](/img/mer-portuario-literales.png)
