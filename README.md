# vedirect2mqtt

Victron VeDirect Protocol to MQTT

This Python script will parse the VeDirect protocol data from Victron devices and post to an MQTT broker.

#### To use this docker:

`mkdir Docker`

`mkdir vedirect2mqtt`

`cd vedirect2mqtt`

`git clone https://github.com/GrRivero/vedirect2mqtt.git ./`

`docker build -t vedirect2mqtt .`

#### Create stack in portainer use:

`stack.yml`

#### To find the device VeDirect USB:

`ls -l /dev/serial/by-id`

#### To use py:

`python3 vedirect2mqtt/vedirectmqtt.py -s /dev/serial/by-id/usb-VictronEnergy_BV_VE_Direct_cable_VE7X63FI-if00-port0 -o 192.168.1.123 -p 1883 -t vedirect2mqtt/mppt/`

#### To add sensors in home assistant use:

`configuration.yaml`

    type: entities
	entities:
		- entity: sensor.mppt_panel_power
		- entity: sensor.mppt_panel_voltage
		- entity: sensor.mppt_state_of_operation
		- entity: sensor.mppt_battery_voltage
		- entity: sensor.mppt_battery_current
		- entity: sensor.mppt_load_current
		- entity: sensor.mppt_maximum_power_today
		- entity: sensor.mppt_maximum_power_yesterday
		- entity: sensor.mppt_yield_today
		- entity: sensor.mppt_yield_yesterday
		- entity: sensor.mppt_yield_total_user_resettable_counter
		- entity: sensor.mppt_tracker_operation_mode
		- entity: sensor.mppt_error_code
		- entity: sensor.mppt_off_reason