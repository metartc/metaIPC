# metaIPC2.0

metaIPC2.0 sdk基于mqtt通信，基于metaRTC7.0开发，可以和yangipcclient无缝对接。

# 参数设置

## 启动参数

metaipc2_hd -c /root/config -l /root/log -t test1001
~~~
-c 指定配置文件目录，系统将在此目录里寻找yang_config.ini
-l 日志文件目录
-t 发布到mqtt的serverTopic，客户端根据这个serverTopic和设备进行连接
~~~
## 配置文件yang_config.ini
~~~
[video]
width=1920
height=1080
outWidth=1920
outHeight=1080
rate=2048000
frame=25

[rtc]
iceTransportPolicy=0
iceCandidateType=2
iceServerPort=3478
iceServerIP=192.168.0.104
iceUserName=metartc
icePassword=metartc

[sys]
userId=20005
enableLogFile=1
logLevel=5

[mqtt]
enableMqttTls=0
mqttPort=1883
mqttServerIP=192.168.0.104
maxReconnectTimes=1000
reconnectIntervalTime=1000

[enc]
gop_len=600
rc_mode=3
bps_max=4096000
qp_max=51
qp_min=43
~~~

# 码率设置
[enc] rc_mode= 1,2,3 默认值为3  
rc_mode值为1是cbr模式  
rc_mode值为2是vbr模式  
rc_mode值为3是avbr模式  

## cbr
[video] rate 输出码率
## vbr/avbr
[video] rate  输出码率  
[enc] bps_max 最大码率
## 弱网策略
 1. 设置输出码率rate
 2. 设置最大码率bps_max

# 服务器
## mqtt服务器
[https://mosquitto.org/download/](https://mosquitto.org/download/)  

## coturn
[https://github.com/coturn/coturn](https://github.com/coturn/coturn)



