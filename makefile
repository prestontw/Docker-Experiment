GCC=gcc
DOCKER_PREFIX=sudo docker run --rm -v /home/preston/docker-experiment:/opt/src ugcc

output:	test.c
	$(GCC) $< -o $@

runOutput:	output
	./output

dockerRun:
	$(DOCKER_PREFIX) $(MAKE) runOutput
