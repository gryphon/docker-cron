# Base image:
FROM alpine:3.7

RUN apk add --no-cache curl

RUN echo "0  4  *  *  *    /tasks/tasks.sh > /dev/stdout" > /etc/crontabs/root

CMD crond -l 2 -f
