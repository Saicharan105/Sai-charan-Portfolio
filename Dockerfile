FROM nginx:alpine
COPY . /urs/share/ngnix/html
EXPOSE 80
CMD ['ngnix', '-g', 'deamon off;']