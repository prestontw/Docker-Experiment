COMPILE=javac
RUN=java
DOCKER_PREFIX=sudo docker run --rm -v /home/preston/docker-experiment:/opt/src
BUILD_BOX=java-build
RUN_BOX=java-run

test.class:	test.java
	$(COMPILE) $<

runOutput:	test.class
	$(RUN) test

dockerRun:
	$(DOCKER_PREFIX) $(RUN_BOX) $(MAKE) runOutput

dockerCompile:
	$(DOCKER_PREFIX) $(BUILD_BOX) $(MAKE) test.class
