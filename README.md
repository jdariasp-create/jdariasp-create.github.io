# Portafolio de Bases de Datos I · Juan Diego Arias Páez

Portafolio web de la asignatura **Bases de Datos I** (Ingeniería de Sistemas, Universidad El Bosque). Está hecho con [Astro](https://astro.build) sobre la plantilla *Angie* y se publica gratis con GitHub Pages.

## Secciones

| Sección | Trabajos |
|---|---|
| Modelado | Taller MER (clínica veterinaria, biblioteca, ternaria/especialización/agregación) · Reducción a tablas de la Terminal Portuaria · Modelo relacional Arkanix |
| Normalización | Taller de normalización (hospitalización, pedidos, empleados) · Ejercicio de repaso (enunciado) · Taller avanzado (enunciado) |
| Álgebra relacional y SQL | 50 ejercicios de álgebra relacional · Ejercicios de empleados y universidades (enunciado) · Consultas, procedimientos y triggers de Arkanix |
| Proyecto | Proyecto final Arkanix con sus anexos A–F |

## Cómo publicarlo (una sola vez)

1. Crear en GitHub un repositorio **público** llamado exactamente `USUARIO.github.io` (cambiar `USUARIO` por el usuario de GitHub).
2. Abrir `src/sample.ts` y cambiar `USUARIO_GITHUB` por el usuario de GitHub. Hacer lo mismo en `astro.config.mjs`.
3. Subir todo el contenido de esta carpeta a ese repositorio, en la rama `main`.
4. En el repositorio, ir a **Settings → Pages → Source** y elegir **GitHub Actions**.
5. Esperar uno o dos minutos. La página queda en `https://USUARIO.github.io`.

Cada vez que se suba un cambio a `main`, la página se actualiza sola.

## Personalizar

- **Nombre, enlaces, correo, redes, video, frase y texto de "Sobre mí":** todo está en `src/sample.ts`.
- **Colores y tipografías:** al inicio de `src/styles/global.css`.
- **Foto:** poner la foto en `public/` (por ejemplo `public/foto-perfil.jpg`) y cambiar la ruta `foto` en `src/sample.ts`.
- **Agregar un trabajo nuevo:** copiar cualquier archivo de `src/pages/posts/`, cambiar el texto y poner en `categoria` una de estas: `modelado`, `normalizacion`, `sql` o `proyecto`. Aparece solo en su sección.
  - Los PDF y archivos para descargar van en `public/docs/`.
  - Las imágenes van en `public/img/`.
  - Si el trabajo es solo un enunciado, agregar `tipo: "enunciado"`. Los enunciados en PDF van en `public/docs/enunciados/`.

## Probarlo en el computador

Requiere [Node.js](https://nodejs.org) 18 o superior.

| Comando | Qué hace |
|---|---|
| `npm install` | Instala las dependencias |
| `npm run dev` | Abre la página en `http://localhost:4321` |
| `npm run build` | Genera la versión final en `dist/` |
