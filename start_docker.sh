#!/bin/sh

# Simple script to start the docker container for Luckfox Pico SDK development environment

if [ -z "`docker ps -a | grep luckfox`" ]; then
	docker run -it --name luckfox --privileged -v /home/epsilon/Documents/luckfox:/home luckfoxtech/luckfox_pico:1.0 /bin/bash
else 
	docker start luckfox > /dev/null
	docker attach luckfox
fi
