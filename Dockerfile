# Cài image Nginx từ Docker Hub
FROM nginx
WORKDIR /usr/share/nginx/html

# copy source to container
COPY . .

# nhan biet port private, ung dung phia trong
EXPOSE 80

# docker build -t img-html .
# docker run -d -p 8080:80 --name cons-html img-html