FROM nginx
# Copy our nginx config file inside the  Nginx docker container
COPY nginx.conf /etc/nginx/nginx.conf
