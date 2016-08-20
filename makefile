PYTHON=python2
DOCKER_PREFIX=sudo docker run -d -P --name web -v /home/preston/docker-experiment:/opt/src upython

run:
	$(DOCKER_PREFIX) $(PYTHON) -m simple.html
