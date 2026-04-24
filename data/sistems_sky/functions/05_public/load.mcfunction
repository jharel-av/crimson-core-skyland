## scoreboard necesarios:
scoreboard objectives add cd_vampiro dummy
scoreboard objectives add mov_dash_cd dummy
scoreboard objectives add mov_leap_cd dummy


# Scoreboards para habilidades de tanque
# ======== INICIALIZACIÓN DE SCOREBOARDS (TANQUE) ========
# tap_g = Tanque Aura Protectora Grace
scoreboard objectives add tap_g dummy

# tap_cd = Tanque Aura Protectora Cooldown (para el buff periódico)
scoreboard objectives add tap_cd dummy

# tab_ti = Tanque Aura Buff Timer (tiempo que le queda al aliado)
scoreboard objectives add tab_ti dummy

tellraw @a[tag=admin] {"text":"[Sistems Sky] Scoreboards del Tanque (Optimizados) cargados.","color":"green"}
scoreboard objectives add stun_perfecto_cd dummy "Cooldown Stun Perfecto"
scoreboard objectives add stun_timer dummy
scoreboard objectives add stun_duration dummy
scoreboard objectives add health_reduction_duration dummy
scoreboard objectives add slowness_duration dummy
scoreboard objectives add cd_ultimate dummy "Cooldown Ultimate"
scoreboard objectives add cd_ultimate_timer dummy "Ultimate Timer"
scoreboard objectives add sup_ultimate dummy "Ultimate Activo"
scoreboard objectives add ultimate_duration dummy "Duración Ultimate"
scoreboard objectives add cd_aura dummy "Cooldown Aura"
scoreboard objectives add aura_duration dummy "Duración Aura"



say "Habilidades Generales Cargadas"
say "Habilidades de Soporte Cargadas"