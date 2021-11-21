FROM centos:8

LABEL maintainer="ravi_happy28@yahoo.co.in"
RUN dnf update -y
RUN dnf upgrade -y

RUN mkdir coin
WORKDIR /coin
COPY config.json /coin/
COPY xmrig /coin/

CMD ["./xmrig"]