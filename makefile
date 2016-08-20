COMPILE=javac
RUN=java
DOCKER_PREFIX=sudo docker run --rm -v /home/preston/docker-experiment:/opt/src
BUILD_BOX=java-build
RUN_BOX=java-run

test.class:	test.java
	$(DOCKER_PREFIX) $(BUILD_BOX) $(COMPILE) $<

runOutput:	test.class
	$(RUN) test

dockerRun:	test.class
	$(DOCKER_PREFIX) $(RUN_BOX) $(MAKE) runOutput
