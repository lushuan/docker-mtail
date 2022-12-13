# docker-mtail
Docker image for playing with google/mtail

mtail 官方镜像的启动方式
```
docker run -dP \
   --name myapp-mtail \
   --volumes-from myapp \
   -v examples:/etc/mtail \
   mtail --logs /var/log/myapp --progs /etc/mtail
```

优化后的启动方式
需要监控的日志文件通过环境变量进行注入

```
docker run -itd 
 --name myapp-mtail \
 -p 3903:3903       \
 -e LOGFILE=/var/log/zcm/*.log \
 -v /etc/mtail:/etc/mtail \ 
 lushuan/mtail:v3.0.0-rc47 
```
