PARENT_DIR=/home/preston/docker-experiment
DOCKER=sudo docker run --rm -v $(PARENT_DIR):/opt/src upython
CURRENT_DIR=subdir

PYTHON=python3

docker-test:
	$(DOCKER) $(MAKE) -C $(CURRENT_DIR) test

test:	./child.py ../parent.py
	$(PYTHON) child.py
	echo hello > test
