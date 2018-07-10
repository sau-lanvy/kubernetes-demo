# based on Nginx, to have only the compiled app, ready for production with Nginx
FROM nginx:1.13

## Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

COPY index.html /usr/share/nginx/html

COPY ./nginx-custom.conf /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]