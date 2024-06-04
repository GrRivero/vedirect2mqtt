# vedirect2mqtt

Victron VeDirect Protocol to MQTT

This Python script will parse the VeDirect protocol data from Victron devices and post to an MQTT broker.

####To use this docker:

`mkdir Docker`

`mkdir vedirect2mqtt`

`cd vedirect2mqtt`

`git clone https://github.com/GrRivero/vedirect2mqtt.git ./`

`docker build -t vedirect2mqtt .`

####Create stack in portainer (use stack.yml)

To find the device VeDirect USB:

`ls -l /dev/serial/by-id`

####To use py:

`python3 vedirect2mqtt/vedirectmqtt.py -s /dev/serial/by-id/usb-VictronEnergy_BV_VE_Direct_cable_VE7X63FI-if00-port0 -o 192.168.1.123 -p 1883 -t vedirect2mqtt/mppt/`
