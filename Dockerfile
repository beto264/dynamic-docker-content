FROM nginx:alpine

# Here set the code folder. Example (/src/index.html)
ENV FOLDER = /src/index.html
COPY ${FOLDER} /usr/share/nginx/html
