FROM ubuntu:latest

RUN apt-get update && apt-get install -y -q nginx

COPY ./index.html /usr/share/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
