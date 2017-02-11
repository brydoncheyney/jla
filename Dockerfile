FROM docker/whalesay:latest
COPY ./html/* /opt/jla/
EXPOSE 8000
CMD while true; do nc -lvp 8000 < /opt/jla/index.html; done
