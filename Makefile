run:
	docker run -v ${PWD}/content:/sites \
		   -v ${PWD}/nginx.conf:/etc/nginx/nginx.conf \
		   -p 8080:80 \
		   -it nginx_course