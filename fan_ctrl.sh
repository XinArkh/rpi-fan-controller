#! /bin/bash


FAN_LOG="/root/fan_ctrl.log"
echo -e "\n"$(date)": Script start running." >> ${FAN_LOG}
GPIO_PIN=14
GPIO_FOLDER="/sys/class/gpio/gpio"${GPIO_PIN}
if [ ! -d ${GPIO_FOLDER} ]; then
    echo ${GPIO_PIN} > /sys/class/gpio/export
fi
echo out > ${GPIO_FOLDER}"/direction"
echo 1 > ${GPIO_FOLDER}"/value"

fan_closed=true
while true 
do
    temp=$(cat /sys/class/thermal/thermal_zone0/temp)
    if ${fan_closed}; then
        if [ ${temp} -ge 45000 ]; then 
        echo 0 > /sys/class/gpio/gpio${GPIO_PIN}/value
        CRTDATE=$(date)
        echo "$CRTDATE: Open Fan." >> ${FAN_LOG}
        fan_closed=false
        fi
    elif [ ${temp} -le 38000 ]; then
        echo 1 > /sys/class/gpio/gpio${GPIO_PIN}/value
            CRTDATE=$(date)                         
            echo "$CRTDATE: Close Fan." >> ${FAN_LOG}
            fan_closed=true
    fi
    sleep 60
done
