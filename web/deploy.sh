#!/bin/sh
if [ -d "build" ]; then
	docker run -d \
		-v $(pwd)/build:/build \
		--name=donit-web iocat/donit-web
else 
	printf "build directory does not exist"
fi

