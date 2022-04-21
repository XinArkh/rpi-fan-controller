# rpi-fan-ctrler

Raspberry Pi Fan Controller——an electronic module for Raspberry Pi fan controlling. Tested on Raspberry Pi 3B+, while other Raspberry Pi versions should be exchangeable.

## RPi 3B+ Pinout

![Raspberry Pi 3 B+ Pinout](media/ngcb40.webp)

The GPIO 14 and above 5V and GND pins are chosen to be controller output.

## Circuit Diagram

Refer to [this article](http://www.raspigeek.com/index.php?c=read&id=126&page=1).

![Image](media/014818_IMnFE6.png)

## PCB Design

The PCB project has been uploaded to [OSHWHub](https://oshwhub.com/wuxinzju/rpi_fan_controller).

![image-20220421222219354](media/image-20220421222219354.png)

![image-20220421222224476](media/image-20220421222224476.png)

![img](media/5UiKTdkbuwQE8DVg5nmOoOX4pEJtTx4F6eU5M4tp.jpeg)

![image-20220421222251247](media/image-20220421222251247.png)

## Controller Configurations

1. Put `fan_ctrl.sh` into your environment (`/root` for example). 
2. Configure `rc.local` to set auto start:

```bash
chmod +x /etc/rc.local
vim /etc/rc.local

# edit in rc.local, insert before the last line (i.e. exit 0)
/root/fan_ctrl.sh 2>>/root/fan_ctrl.log
```

