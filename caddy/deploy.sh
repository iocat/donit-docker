#!/bin/bash
if [ -f "Caddyfile" ]; then
	docker run -d \
		--name donit-https \
		--link donit-web:donit-web \
		-v $(pwd)/Caddyfile:/etc/Caddyfile \
		-v $HOME/.caddy:/root/.caddy \
		-p 80:80 -p 443:443 \
		abiosoft/caddy
else 
	printf "Caddyfile does not exist"
fi
