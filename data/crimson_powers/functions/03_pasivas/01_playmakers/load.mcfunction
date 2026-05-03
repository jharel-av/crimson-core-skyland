# --- Load.mcfunction de las pasivas de los Playmakers ---
# Cadena 1: Run de las Scoreboards de los timers
scoreboard objectives add playmakers_timer dummy
scoreboard objectives add cat_aura_timer dummy
scoreboard objectives add buff_cd dummy "Cooldown Frenesí"
tellraw @a[tag=admin] {"text":"Crimson Core & Powers: Pasivas de PlayMakers Load"}