FROM nginx
RUN mkdir /samuel-2503285
RUN chmod 777 /samuel-2503285
COPY recursos/img3.jpg /samuel-2503285
COPY main.sh /samuel-2503285
RUN chmod +x /samuel-2503285/main.sh
RUN /samuel-2503285/main.sh
COPY /9/* /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]
