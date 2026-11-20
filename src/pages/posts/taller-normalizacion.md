---
layout: ../../components/MarkdownPost.astro
title: "Taller de normalización"
description: "Analizamos tres casos empresariales, encontramos dónde se repetía la información y reorganizamos las tablas paso a paso."
categoria: "normalizacion"
orden: 1
autores: "Jesús David Vega, Juan Diego Arias y Jairo Esteban Baquero"
image:
  url: "/img/normalizacion.png"
  alt: "Taller de normalización"
tags: ["1FN", "2FN", "3FN", "BCNF"]
pubDate: "27 de septiembre de 2026"
---

## El problema

El taller presentaba tres situaciones reales en las que toda la información estaba guardada en una sola tabla:

1. Un **hospital** que registra pacientes hospitalizados, el médico que los atiende, su especialidad y la cama y el ala donde están.
2. Una **empresa** que vende productos a clientes por medio de vendedores que ganan una comisión.
3. Una tabla de **empleados** en la que cada uno tiene varias competencias técnicas y varios idiomas.

En cada caso teníamos que identificar qué dato determina a cuál, decir en qué nivel de organización estaba la tabla, describir los problemas que causaría al insertar, modificar o borrar información, y proponer un diseño mejor. Al final debíamos sustentarlo ante el docente.

<div class="docs">
  <a href="/docs/Taller_Normalizacion.pdf" target="_blank">Documento del taller (PDF)</a>
  <a href="/docs/Normalizacion_Paso_a_Paso.xlsx" target="_blank">Normalización paso a paso (Excel)</a>
  <a href="/docs/enunciados/Enunciado_Taller_Normalizacion.pdf" target="_blank" class="enunciado">Enunciado del taller (PDF)</a>
</div>

## Cómo lo resolvimos

### Caso 1: hospitalización

Tomamos como identificador de cada fila al paciente junto con su fecha de ingreso. Encontramos tres problemas:

- El nombre del paciente depende solo del paciente, no de la hospitalización. Si una persona ingresa varias veces, su nombre se repite en cada fila.
- El teléfono, el correo y la especialidad dependen del médico. Si un médico tiene quinientos pacientes y cambia de número, habría que corregir quinientas filas.
- El ala del hospital depende de la cama, no de la hospitalización.

Fuimos separando la información en tablas, un problema a la vez, hasta llegar a este diseño:

| Tabla | Identificador | Se conecta con |
|---|---|---|
| PACIENTE (paciente, nombre) | ID_Paciente | — |
| MEDICO (médico, teléfono, correo, especialidad) | Médico_Tratante | — |
| CAMA (cama, ala) | Cama_Asignada | — |
| HOSPITALIZACION (paciente, fecha de ingreso, cama, médico, fecha de alta) | Paciente + fecha de ingreso | PACIENTE, MEDICO, CAMA |

### Caso 2: pedidos

Aquí cada fila combinaba un pedido con un producto. Vimos que los datos del producto, los del pedido, los del cliente y los del vendedor se repetían. Lo resolvimos en cuatro pasos y quedaron cinco tablas: producto, cliente, vendedor, pedido y detalle del pedido. En el detalle solo queda lo que de verdad depende del pedido y del producto juntos: la cantidad.

| Tabla | Identificador | Se conecta con |
|---|---|---|
| PRODUCTO (producto, nombre, precio) | ID_Producto | — |
| CLIENTE (cliente, nombre, sector) | ID_Cliente | — |
| VENDEDOR (vendedor, nombre, comisión) | ID_Vendedor | — |
| PEDIDO (pedido, fecha, cliente, vendedor) | ID_Pedido | CLIENTE, VENDEDOR |
| DETALLE_PEDIDO (pedido, producto, cantidad) | Pedido + producto | PEDIDO, PRODUCTO |

### ¿Conviene volver a una sola tabla?

También analizamos si valía la pena juntar de nuevo las tablas para que las búsquedas fueran más rápidas. Concluimos que no. Lo que se gana en velocidad es muy poco. En cambio, se tendrían que actualizar miles de filas al día, con el riesgo de que algún dato quedara desactualizado, como el teléfono de un médico o la comisión de un vendedor. Si las consultas llegaran a ser lentas, la solución sería crear una vista y no deshacer el diseño.

### Caso 3: empleados, competencias e idiomas

La tabla guardaba varias competencias y varios idiomas en un mismo campo, y eso no permite buscar ni actualizar bien la información. Como saber un idioma no tiene relación con dominar una competencia, los separamos en dos tablas distintas, una para las competencias de cada empleado y otra para sus idiomas. Si los hubiéramos dejado juntos, un empleado con tres competencias y tres idiomas ocuparía nueve filas sin necesidad.
