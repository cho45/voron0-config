#!/usr/bin/env bash

set -x

KLIPPER_PATH="${HOME}/klipper"
SRCDIR="$HOME//klipper_config"

ln -sf "${SRCDIR}/network_status.py" "${KLIPPER_PATH}/klippy/extras/network_status.py"
ln -sf "${SRCDIR}/led_effect.py" "${KLIPPER_PATH}/klippy/extras/led_effect.py"

sudo ln -sf "${SRCDIR}/99-i2c.rules" "/etc/udev/rules.d/99-i2c.rules"
sudo ln -sf ~/klipper_config/powerdown.py /usr/lib/systemd/system-shutdown/
