
FROM nginx:latest
RUN echo "env | grep BUILD_NUMBER" > /usr/share/nginx/html/index.html
