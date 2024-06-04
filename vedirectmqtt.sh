#!/bin/bash

vedirectmqtt="python3 /opt/vedirect/vedirectmqtt.py -s /dev/ttyUSB0 -o localhost -p 1883 -u vedirect2mqttpi -w vedirect2mqttpimqtt2016 -t vedirect2mqtt/mppt/"

until $vedirectmqtt; do
    echo "vedirectmqtt crashed with exit code $?.  Respawning....." >&2
    sleep 5
done
