from machine import Pin, I2C
import time

# -----------------------------
# Configuración I2C
# -----------------------------
SDA_PIN = 8
SCL_PIN = 9
MCP23017_ADDR = 0x20

i2c = I2C(
    0,
    scl=Pin(SCL_PIN),
    sda=Pin(SDA_PIN),
    freq=400000
)

# -----------------------------
# Registros MCP23017
# -----------------------------
IODIRA = 0x00   # Dirección GPIOA
IODIRB = 0x01   # Dirección GPIOB
GPIOA  = 0x12   # Estado GPIOA
GPIOB  = 0x13   # Estado GPIOB

# -----------------------------
# Configurar:
# Puerto A = salidas
# Puerto B = entradas
# -----------------------------
i2c.writeto_mem(MCP23017_ADDR, IODIRA, b'\x00')
i2c.writeto_mem(MCP23017_ADDR, IODIRB, b'\xFF')

print("MCP23017 iniciado")

# -----------------------------
# Bucle principal
# -----------------------------
while True:
    # Leer Port B
    estado_b = i2c.readfrom_mem(MCP23017_ADDR, GPIOB, 1)[0]

    # Copiar Port B -> Port A
    i2c.writeto_mem(MCP23017_ADDR, GPIOA, bytes([estado_b]))

    time.sleep_ms(10)
