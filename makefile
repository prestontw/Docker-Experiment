PYTHON=python3
DOCKER_PREFIX=sudo docker run -d -P /home/preston/docker-experiment:/opt/src ugcc

run:
	$(DOCKER_PREFIX) $(PYTHON) simple.html
