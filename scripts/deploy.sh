#!/bin/bash

PROJECT=codingFriends-2.7.8-SNAPSHOT.jar
REPOSITORY=/home/ubuntu/codingFriends

echo "> jar 파일 위치로 이동"
cd $REPOSITORY
cd build/libs

echo "> 현재 구동중인 애플리케이션 pid 확인"
CURRNET_PID=$(pgrep -f $PROJECT)
echo ">kill -15 $CURRNET_PID"
kill -15 $CURRENT_PID

echo "> 새 애플리케이션 배포"
nohup java -jar $PROJECT &
nohup java -jar $PROJECT>> /home/ubuntu/deploy.log 2>&1 &
