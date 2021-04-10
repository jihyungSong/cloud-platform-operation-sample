FROM nginx:latest

RUN rm /etc/nginx/conf.d/*.conf
ADD flask.conf /etc/nginx/conf.d/flask.conf

EXPOSE 80
ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]
