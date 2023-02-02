FROM golang:alpine
WORKDIR /opt/hello-gotuna
CMD ["go", "run", "examples/fullapp/cmd/main.go"]
EXPOSE 8888
COPY . .
#RUN apt-get update \
#    && apt-get install -y build-essential \
#    && make \
#    && apt-get purge -y build-essential \
#    && apt-get autoremove -y 
