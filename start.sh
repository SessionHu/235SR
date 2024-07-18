#!/bin/sh

JAR_PATH="paper-1.20.6.jar"
DOWNLOAD_URL="https://api.papermc.io/v2/projects/paper/versions/1.20.6/builds/148/downloads/paper-1.20.6-148.jar"

if [ ! -f ${JAR_PATH} ]; then
    wget -O ${JAR_PATH} ${DOWNLOAD_URL}
fi

MULTILOGIN_PATH="plugins/multilogin-bukkit.jar"
MULTILOGIN_URL="https://github.com/CaaMoe/MultiLogin/releases/download/v0.6.10/MultiLogin-Bukkit-0.6.10.jar"

if [ ! -f ${MULTILOGIN_PATH} ]; then
    wget -O ${MULTILOGIN_PATH} ${MULTILOGIN_URL}
fi

TABTPS_PATH="plugins/tabtps-spigot.jar"
TABTPS_URL="https://github.com/jpenilla/TabTPS/releases/download/v1.3.24/tabtps-spigot-1.3.24.jar"

if [ ! -f ${TABTPS_PATH} ]; then
    wget -O ${TABTPS_PATH} ${TABTPS_URL}
fi

MINIMOTD_PATH="plugins/minimotd-bukkit.jar"
MINIMOTD_URL="https://github.com/jpenilla/MiniMOTD/releases/download/v2.1.2/minimotd-bukkit-2.1.2.jar"

if [ ! -f ${MINIMOTD_PATH} ]; then
    wget -O ${MINIMOTD_PATH} ${MINIMOTD_URL}
fi

AUTHLIB_PATH="authlib-injector.jar"
AUTHLIB_URL="https://github.com/yushijinhun/authlib-injector/releases/download/v1.2.5/authlib-injector-1.2.5.jar"

if [ ! -f ${AUTHLIB_PATH} ]; then
    wget -O ${AUTHLIB_PATH} ${AUTHLIB_URL}
fi

AUTH_API="https://littleskin.cn/api/yggdrasil"

java -Dfile.encoding=UTF-8 -Xmx2048M -Xms512M -XX:+UseCompressedOops -javaagent:${AUTHLIB_PATH}=${AUTH_API} -jar ${JAR_PATH}

