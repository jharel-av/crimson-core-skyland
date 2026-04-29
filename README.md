# ⚔️ Skyland Abilities (Datapack)

![Minecraft Version](https://img.shields.io/badge/Minecraft-1.20.1-brightgreen?style=flat-square)
![License](https://img.shields.io/badge/License-MIT-blue?style=flat-square)
![Status](https://img.shields.io/badge/Status-Work_In_Progress-orange?style=flat-square)

**Skyland Abilities** es un datapack avanzado y altamente modular diseñado para Minecraft 1.20.1. Introduce un robusto motor lógico (engine) que permite la creación, gestión y ejecución de habilidades activas, pasivas, efectos visuales y sistemas de combate complejos sin necesidad de plugins de Java.

> **⚠️ AVISO: Proyecto en Desarrollo**
> Este proyecto está en fase de desarrollo activo. Las mecánicas y la estructura del código pueden cambiar en futuras actualizaciones.

---

## 🌟 Características Principales

- **⚙️ Motor de Eventos (Routers):** Sistema optimizado que detecta acciones de los jugadores (clics, daño, uso de ítems, muertes) y las dirige al módulo correspondiente sin sobrecargar el servidor (`00_routers`).
- **🛡️ Sistema de Clases/Roles:** Habilidades categorizadas en Ataque, Movilidad, Soporte y Tanque y mas a futuro (`05_public`).
- **✨ Efectos Visuales Separados:** Lógica de partículas y efectos visuales completamente modularizada (`02_visuals`).
- **⚡ Optimización Extrema:** Uso inteligente de `Tags`, `Scoreboards` y selectores condicionales (`execute if`) para garantizar un impacto mínimo en el TPS (Ticks per Second) del servidor.
- **🧩 Diseño Modular:** Activa o desactiva habilidades o personajes individuales de forma limpia.

---

## 📂 Estructura del Proyecto

El corazón de este datapack reside en su diseño modular.

```text
data/sistems_sky/functions/
├── 00_routers/      # Sistema central de detección (clics, muertes, estados)
├── 01_players/      # Lógicas y variables internas de cada jugador/clase
├── 02_visuals/      # Gestión de partículas y efectos cosméticos
├── 03_pasivas/      # Habilidades pasivas y auras
├── 04_sistema/      # Lógicas de cooldowns y primeros impactos
├── 05_public/       # Habilidades de uso general (Atk, Mov, Sup, Tnk)


 ---- Se encuentran por separado en las carpetas antes dichas
├── private/         # 🔒 Habilidades y sistemas con Lore exclusivo
└── private_players/ # 🔒 Lógicas de personajes específicos (Dygo, Aiko, etc.)
```

---

## ⚖️ Licencia y Uso (¡Importante!)

Este código es de código abierto, pero está dividido en dos partes principales:

### ✅ Contenido Público (`05_public`, Motores y Sistemas Base)

Eres libre de descargar, usar en tu servidor, modificar y aprender de la arquitectura principal del datapack.

### 🚫 Contenido Privado (`private/` y `private_players/`)

Estas carpetas contienen habilidades, mecánicas y lore que pertenecen a **personajes originales de series específicas** (ej. Dygo, Jharel, Aiko, etc.).

- **No puedes** usar este contenido tal cual en tu servidor o proyecto público.
- Si deseas usar las mecánicas de estas carpetas, **estás obligado a modificarlas** (cambiar nombres, lore, partículas, temáticas) para que dejen de ser nuestros personajes.

Para más detalles, por favor lee el archivo [LICENSE.md](./LICENSE.md) incluido en este repositorio.

---

## 💻 Autores

- **Jharel.AAV** (Desarrollo principal y lógica de sistemas)
- **xLejks** (Co-autor / Desarrollo)
- **SeruVT** (Creditos Especiales, Desarrollador principal de la primera versión del motor)

---

_Hecho con ❤️ para la comunidad de creadores de Minecraft._
