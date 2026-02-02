FROM nginx:alpine
COPY . /usr/share/nginx/html
# Configure Nginx to listen on 8989 instead of 80
RUN sed -i 's/listen       80;/listen       8989;/' /etc/nginx/conf.d/default.conf
EXPOSE 8989
CMD ["nginx", "-g", "daemon off;"]
