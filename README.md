# Docker experiment

Showing how to replace vagrant and docker with just docker.

Check out different branches to see different options.
Master uses a simple C example.
Java splits the container into two separate building and running containers.
We kind of get some subdir makefile action here,
but it is messier.
This actually might be a good target for two makefiles.
That way, we can have two patterns of 
```
%.class:    %.java
    # do something
```
Python will try to expose ports to the host system.
