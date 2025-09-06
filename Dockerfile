
FROM nginx:alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY ./build/web /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
