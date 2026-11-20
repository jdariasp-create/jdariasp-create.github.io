---
layout: ../../components/MarkdownPost.astro
title: "Proyecto final: base de datos Arkanix"
description: "Diseñamos e implementamos en MySQL, sobre una máquina virtual con Ubuntu, la base de datos de una plataforma de videojuegos."
categoria: "proyecto"
orden: 1
autores: "Juan Diego Arias Páez y Jairo Esteban Baquero"
image:
  url: "/img/arkanix-barker.png"
  alt: "Modelo de la base de datos Arkanix"
tags: ["MySQL 8.4", "Ubuntu", "VirtualBox"]
pubDate: "2 de noviembre de 2026"
---

## El problema

**Arkanix** es una plataforma para administrar un catálogo de videojuegos para computador. El reto era pasar del modelo de datos a una base de datos funcionando. Tenía que guardar los videojuegos con su desarrolladora, publicadora, categorías y sistemas compatibles, y también la actividad de los jugadores: lo que tienen en su biblioteca, lo que compran, sus reseñas, sus logros y sus sesiones de juego.

El proyecto pedía montar el entorno de trabajo desde cero, crear la estructura, cargar datos de prueba, ejecutar consultas y documentar todo con evidencias.

<div class="docs">
  <a href="/docs/Documentacion_Principal_Arkanix.pdf" target="_blank">Documentación principal</a>
  <a href="/docs/arkanix_respaldo_final.sql" target="_blank">Respaldo de la base (.sql)</a>
  <a href="/docs/Diccionario_BD.xlsx" target="_blank">Diccionario de datos</a>
</div>

## Cómo lo resolvimos

### Entorno de trabajo

Decidimos trabajar en una máquina virtual para tener un entorno Linux independiente del computador personal:

| Herramienta | Para qué la usamos |
|---|---|
| Oracle VirtualBox | Crear la máquina virtual |
| Ubuntu 26.04 LTS | Sistema operativo del servidor |
| MySQL 8.4.11 | Motor de la base de datos |
| Terminal de Ubuntu | Ejecutar los comandos y administrar MySQL |

### Construcción

1. Adaptamos el modelo de datos a la forma en que MySQL escribe las tablas.
2. Creamos **19 tablas**, cada una con su identificador y sus conexiones con las demás. También agregamos reglas para evitar datos imposibles: un precio no puede ser negativo, una calificación debe estar entre 1 y 5 y una sesión de juego no puede durar menos de cero minutos.
3. Cargamos datos de prueba en todas las tablas: seis videojuegos conocidos, cinco jugadores, doce categorías, ocho desarrolladoras y siete publicadoras, además de compras, contenidos descargables, logros, reseñas y sesiones.
4. Ejecutamos once consultas para comprobar que las tablas se conectaban bien entre sí.
5. Agregamos cuatro procedimientos, dos funciones y cinco triggers. Los triggers llevan un historial de cambios en tres tablas adicionales.
6. Al final revisamos que todas las tablas usaran el mismo motor, que las claves estuvieran completas y que las reglas se cumplieran.

![Modelo de la base de datos](/img/arkanix-barker.png)

### Anexos

| Anexo | Contenido |
|---|---|
| <a href="/docs/Anexo_A_Configuracion_Entorno.pdf" target="_blank">A · Configuración del entorno</a> | VirtualBox, Ubuntu y verificación de MySQL |
| <a href="/docs/Anexo_B_Estructura_Base_Datos.pdf" target="_blank">B · Estructura de la base de datos</a> | Creación de las tablas y sus conexiones |
| <a href="/docs/Anexo_C_Insercion_Datos.pdf" target="_blank">C · Inserción de datos</a> | Datos de prueba y verificación |
| <a href="/docs/Anexo_D_Consultas_SQL.pdf" target="_blank">D · Consultas SQL</a> | Código y resultado de cada consulta |
| <a href="/docs/Anexo_E_Procedimientos_Triggers.pdf" target="_blank">E · Procedimientos y triggers</a> | Rutinas y controles automáticos |
| <a href="/docs/Anexo_F_Verificaciones_Auditoria.pdf" target="_blank">F · Comprobaciones y auditoría</a> | Revisión final de claves y reglas |

## Lo que aprendí

Este proyecto me permitió ver todo el proceso completo, desde el diagrama hasta una base de datos que responde preguntas reales. Comprendí que un buen diseño desde el inicio ahorra mucho trabajo después: cuando las tablas y sus conexiones estaban bien definidas, las consultas y las pruebas salían sin mayores problemas. También aprendí que documentar cada paso es parte del trabajo, porque permite que otra persona entienda y repita lo que se hizo.
