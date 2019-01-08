# docker-gwan-python

docker build -t dincer/gwan .

docker run -d -p 8080:8080 dincer/gwan

curl 127.0.0.1:8080?hello.py
