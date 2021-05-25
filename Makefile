run-windows:
	docker run -v C:\Users\Admin\PhpstormProjects\nginx_course\content:/sites \
		   -v C:\Users\Admin\PhpstormProjects\nginx_course\docker\nginx.conf:/etc/nginx/nginx.conf \
		   -v C:\Users\Admin\PhpstormProjects\nginx_course\docker\www.conf:/etc/php/7.4/fpm/pool.d/www.conf \
		   -v C:\Users\Admin\PhpstormProjects\nginx_course\nginx-1.18.0.tar.gz:/sites/nginx-1.18.0.tar.gz \
		   -p 8080:80 \
		   -it nginx_course

run-linux:
	docker run -v ${PWD}/content:/sites \
    		   -v ${PWD}/docker/nginx.conf:/etc/nginx/nginx.conf \
    		   -v ${PWD}/docker/www.conf:/etc/php/7.4/fpm/pool.d/www.conf \
    		   -v ${PWD}/nginx-1.18.0.tar.gz:/sites/nginx-1.18.0.tar.gz \
    		   -p 8080:80 \
    		   -it nginx_course