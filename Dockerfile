FROM public.ecr.aws/docker/library/nginx:1.21.6
MAINTAINER massimo@it20.info
RUN apt-get update && apt-get install -y curl && apt-get clean
ADD startup.sh . 
RUN chmod +x startup.sh
CMD ["./startup.sh"]