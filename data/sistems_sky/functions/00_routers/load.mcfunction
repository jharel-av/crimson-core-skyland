# =================================================================
# INICIALIZACIÓN DE SCOREBOARDS (ROUTERS Y HABILIDADES)
# -----------------------------------------------------------------
# Este archivo se ejecuta una vez al cargar el datapack.
# Su función es crear todos los objetivos (scoreboards) necesarios
# para el funcionamiento de los routers y diversas habilidades.
# =================================================================

# ---------------------------------
# Scoreboards de Eventos Globales
# ---------------------------------
# Detecta el click derecho con "Carrot on a Stick" para activar habilidades.
scoreboard objectives add clic_za minecraft.used:minecraft.carrot_on_a_stick

# Detecta el click derecho con "Warped Fungus on a Stick" para otros tipos de habilidades.
scoreboard objectives add clic_fu minecraft.used:minecraft.warped_fungus_on_a_stick

# Contador de muertes para reiniciar habilidades o activar eventos post-muerte.
scoreboard objectives add death_co minecraft.custom:minecraft.deaths

# ---------------------------------
# Scoreboards Específicos (Habilidades / Jugadores)
# ---------------------------------
# --- Habilidades Místicas (Mystic) ---
# Controla el estado del Mystic Dash (0: off, 1: on).
scoreboard objectives add mc_dash dummy

# Almacena el nivel del Mystic Dash (0: Nivel 1, 1: Nivel 2, 2: Nivel 3).
scoreboard objectives add dash_est dummy

# Controla el estado de la Mystic Form (0: off, 1: on).
scoreboard objectives add mc_form dummy

# Controla el estado del vuelo místico (Mystic Fly).
scoreboard objectives add mysticFly dummy