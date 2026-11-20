---
layout: ../../components/MarkdownPost.astro
title: "Consultas SQL, procedimientos y triggers en Arkanix"
description: "Comprobamos con consultas reales que la base de datos responde bien y le agregamos rutinas y controles automáticos."
categoria: "sql"
orden: 3
autores: "Juan Diego Arias Páez y Jairo Esteban Baquero"
image:
  url: "/img/arkanix-doc.png"
  alt: "Consultas SQL del proyecto Arkanix"
tags: ["MySQL", "Procedimientos", "Triggers"]
pubDate: "Noviembre de 2026"
---

## El problema

Con la base de datos de Arkanix ya creada y con datos de prueba, faltaba comprobar dos cosas. La primera, que la estructura permitía responder las preguntas que la plataforma necesita, por ejemplo qué juegos tiene un jugador, cuáles son los mejor calificados o cuánto ha gastado cada usuario. La segunda, que la base de datos pudiera protegerse sola de algunos errores y dejar registro de los cambios en el catálogo.

<div class="docs">
  <a href="/docs/Anexo_D_Consultas_SQL.pdf" target="_blank">Anexo D · Consultas SQL</a>
  <a href="/docs/Anexo_E_Procedimientos_Triggers.pdf" target="_blank">Anexo E · Procedimientos y triggers</a>
  <a href="/docs/arkanix_respaldo_final.sql" target="_blank">Respaldo de la base (.sql)</a>
</div>

## Cómo lo resolvimos

### Consultas

Escribimos once consultas. Empezamos por las más sencillas y fuimos aumentando la dificultad hasta llegar a las que combinan varias tablas:

| # | Pregunta | Qué se usó |
|---|---|---|
| 1 | ¿Qué videojuegos hay en el catálogo? | Consulta general |
| 2 | ¿Qué jugadores viven en Colombia? | Filtro |
| 3 | ¿Quién desarrolló y quién publicó cada juego? | Unión de tres tablas |
| 4 | ¿A qué categorías pertenece cada juego? | Tabla intermedia |
| 5 | ¿Qué juegos tiene cada jugador? | Unión de tres tablas |
| 6 | ¿Cuál es la calificación promedio de cada juego? | Promedio y conteo |
| 7 | ¿Cuáles son los juegos más jugados? | Suma de minutos |
| 8 | ¿Cuántos logros ha desbloqueado cada jugador? | Conteo por jugador |
| 9 | ¿Qué juegos tienen contenido descargable? | Subconsulta |
| 10 | ¿Qué juegos todavía no tienen reseñas? | Unión externa |
| 11 | ¿Cuánto ha gastado cada jugador? | Subconsultas separadas |

En la última consulta tuvimos que calcular por separado lo gastado en juegos y en contenido descargable. Cuando lo hicimos en una sola consulta, algunos valores se sumaban dos veces.

```sql
SELECT v.titulo,
       ROUND(AVG(r.calificacion), 2) AS promedio,
       COUNT(*) AS resenas
FROM videojuego v
INNER JOIN resena r ON v.id_videojuego = r.id_videojuego
GROUP BY v.titulo
ORDER BY promedio DESC;
```

### Procedimientos y funciones

Guardamos las consultas que más se usan para no tener que escribirlas cada vez:

- `consultar_jugador`: datos de un jugador y los juegos de su biblioteca.
- `consultar_videojuegos`: el catálogo con su desarrolladora y publicadora.
- `consultar_compras_jugador`: las compras de un jugador, de la más reciente a la más antigua.
- `consultar_dlc`: el contenido descargable de un juego.
- `total_videojuegos_jugador` y `gasto_total_jugador`: funciones que devuelven cuántos juegos tiene un jugador y cuánto ha pagado en total.

### Triggers

Los triggers son instrucciones que se ejecutan solas cuando ocurre algo en la tabla de videojuegos:

- Dos de ellos impiden que un videojuego quede registrado como su propia versión original, tanto al crearlo como al modificarlo.
- Los otros tres llevan un historial: guardan cada juego que se agrega, cada cambio de título y cada juego que se elimina, con la fecha en que ocurrió.

```sql
CREATE TRIGGER registrar_videojuego
AFTER INSERT ON videojuego
FOR EACH ROW
BEGIN
  INSERT INTO auditoria_videojuegos (id_videojuego, titulo, fecha_registro, accion)
  VALUES (NEW.id_videojuego, NEW.titulo, NOW(), 'INSERT');
END;
```
