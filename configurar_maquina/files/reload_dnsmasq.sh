#!/bin/sh

sudo date
ps -ef | grep [d]nsmasq | awk -F' ' '{print $2}' | xargs -I{} sudo kill -SIGHUP {}