
FROM nginx:latest
RUN echo "Hello! commits" > /usr/share/nginx/html/index.html
