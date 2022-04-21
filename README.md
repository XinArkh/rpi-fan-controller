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

## Resources

- [散热片安装与风扇接线方法/ 和自动温控方法](http://www.raspigeek.com/index.php?c=read&id=126&page=1)
- [树莓派硬件编程——（一）用RPi.GPIO库输出信号](https://blog.csdn.net/u014663232/article/details/105609099)
- [Linux GPIO口的控制（树莓派4B实现）（文件方式）](https://blog.csdn.net/zhou865612640/article/details/106465704)
- [从树莓派的wiringPi库分析Linux对GPIO的控制原理](https://xuanxuanblingbling.github.io/iot/2020/07/01/gpio/)
- [树莓派OpenWrt下的散热风扇控制脚本](https://www.gooneyryan.com/archives/913)
- [Linux系统如何设置开机自动运行脚本？ ](https://www.cnblogs.com/yychuyu/p/13095732.html)
- [OpenWrt crontab 不支持 @ 字符扩展](https://blog.csdn.net/Hsin96/article/details/124326794?spm=1001.2014.3001.5501)

