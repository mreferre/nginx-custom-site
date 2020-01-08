FROM nginx:1.11.5
MAINTAINER massimo@it20.info
ADD startup.sh . 
RUN chmod +x startup.sh
CMD ["./startup.sh"]
