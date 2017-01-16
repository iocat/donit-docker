#!/bin/sh
if [ -d "build" ]; then
	docker run -d \
        -p 9000:9000 \
		-v $(pwd)/build:/public \
		--name=donit-web iocat/donit-web
else 
	printf "build directory does not exist"
fi

