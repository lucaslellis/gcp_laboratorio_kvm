#!/bin/sh

sudo date
ps -ef | grep dnsmasq | grep 'default.conf' | grep -v grep | awk -F' ' '{print $2}' | xargs -I{} sudo kill -SIGHUP {}