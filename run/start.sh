#!/bin/sh

if [ ! -e /config ]; then
	mkdir /config
fi

if [ ! -e /config/sources.json ]; then
	cp examples/sources.json /config/sources.json
fi

exec dumb-init node ./node-ffmpeg-mpegts-proxy.js -p $PORT -a ffmpeg -s /config/sources.json
