FROM nginx:1.11.5
MAINTAINER massimo@it20.info
RUN apt-get update && apt-get install -y curl && apt-get clean
ADD startup.sh . 
RUN chmod +x startup.sh
CMD ["./startup.sh"]
