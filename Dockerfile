FROM nginx

#RUN apt-get update && apt-get install -y git

WORKDIR /usr/share/nginx/html

Run rm -rf index.html

#RUN git clone https://github.com/yerkoc/static-basic-website.git

#WORKDIR /usr/share/nginx/html/static-basic-website
#RUN mv /usr/share/nginx/html/static-basic-website/* .
#COPY entrypoint.sh /entrypoint.sh
#RUN chmod +x /entrypoint.sh
#ENTRYPOINT  /entrypoint.sh
COPY ./static-basic-website/* .
CMD ["nginx", "-g", "daemon off;"]
