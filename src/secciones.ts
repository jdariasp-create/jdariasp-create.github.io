// Secciones del portafolio. Cada trabajo (archivo .md en src/pages/posts)
// aparece en la sección cuyo `slug` coincide con su campo `categoria`.

export const secciones = [
  {
    slug: `modelado`,
    numero: `01`,
    titulo: `Modelado`,
    subtitulo: `Modelo entidad–relación y reducción a tablas`,
    resumen: `Cómo pasar de la descripción de un negocio a un diagrama que muestre qué información se guarda y cómo se relaciona.`,
    img: `/img/mer-portuario-modelo.png`,
  },
  {
    slug: `normalizacion`,
    numero: `02`,
    titulo: `Normalización`,
    subtitulo: `Dependencias, formas normales y anomalías`,
    resumen: `Revisar tablas mal organizadas, encontrar dónde se repite la información y dividirlas para que cada dato quede en un solo lugar.`,
    img: `/img/normalizacion.png`,
  },
  {
    slug: `sql`,
    numero: `03`,
    titulo: `Álgebra relacional y SQL`,
    subtitulo: `Consultas, procedimientos y triggers`,
    resumen: `Escribir preguntas sobre los datos, primero en álgebra relacional y luego en SQL sobre una base de datos real.`,
    img: `/img/algebra.png`,
  },
  {
    slug: `proyecto`,
    numero: `04`,
    titulo: `Proyecto final`,
    subtitulo: `Base de datos Arkanix en MySQL`,
    resumen: `Diseño e implementación de la base de datos de una plataforma de videojuegos, desde el modelo hasta las pruebas.`,
    img: `/img/arkanix-barker.png`,
  },
];

export function postsDe(slug?: string) {
  const all = import.meta.glob(`./pages/posts/*.md`, { eager: true });
  return Object.entries(all)
    .map(([path, post]: any) => ({
      ...post,
      url: `/posts/` + path.split(`/`).pop()!.replace(`.md`, ``) + `/`,
    }))
    .filter((p: any) => !slug || p.frontmatter?.categoria === slug)
    .sort((a: any, b: any) => (a.frontmatter.orden ?? 99) - (b.frontmatter.orden ?? 99));
}
