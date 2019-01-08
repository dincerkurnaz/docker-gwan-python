# docker-gwan-python

docker build -t dincer/gwan .

docker run -d -p 8080:8080 dincer/gwan

curl 127.0.0.1:8080?hello.py

OR

docker run -d -p 8080:8080 -v /my/path/to/static/www:/opt/www -v /my/path/to/dynamic/csp:/opt/csp dincer/gwan

openshift
oc new-build https://github.com/dincerkurnaz/docker-gwan-python --strategy=docker --name gwan

