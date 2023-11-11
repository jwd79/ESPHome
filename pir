esphome:
  name: pir
  friendly_name: PIR

esp8266:
  board: nodemcuv2

# Enable logging
logger:

# Enable Home Assistant API
api:
  encryption:
    key: "HeKaY2SCZzAZPYIE1JBnBnhLJVaJ8H3lpUHMjwWHbkY="

ota:
  password: "7cf02e3a8352231f77282fa971e07b29"

wifi:
  ssid: !secret wifi_ssid
  password: !secret wifi_password

  # Enable fallback hotspot (captive portal) in case wifi connection fails
  ap:
    ssid: "Pir Fallback Hotspot"
    password: "MFak4tHhAoHN"

captive_portal:

# Example configuration entry
binary_sensor:
  - platform: gpio
    pin: D2
  
    name: "PIR Sensor"
    device_class: motion
