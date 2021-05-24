run-windows:
	docker run -v C:\Users\Admin\PhpstormProjects\nginx_course\content:/sites \
		   -v C:\Users\Admin\PhpstormProjects\nginx_course\nginx.conf:/etc/nginx/nginx.conf \
		   -p 8080:80 \
		   -it nginx_course

run-linux:
	docker run -v ${PWD}/content:/sites \
    		   -v ${PWD}/nginx.conf:/etc/nginx/nginx.conf \
    		   -p 8080:80 \
    		   -it nginx_course