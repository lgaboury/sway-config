#!/bin/bash

WEATHER_PATH=$HOME/.config/waybar/scripts/weather.py

$WEATHER_PATH --city-id 6171515 --output-format '{"text": "{{current.icon}} {{current.temperature}}°C", "alt": "{{city}}: {{current.temperature_min}}°C -> {{current.temperature_max}}°C", "tooltip": "{{city}}: {{current.temperature}}°C, {{current.description_long}} -> {{next.temperature}}°C, {{next.description_long}}"}'
