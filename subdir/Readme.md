# Summary

The goal of this directory is to mimic when a subdirectory
relies on a parent directory.
This poses an interesting problem for docker.
We have to make sure to include the parent's directory as the mount point,
but how do we call the child make in the container from the child
directory on the host?

We accomplish this by having two makefiles.
One makefile, `makefile`, is used to actually run and compiler our code.
The other makefile, `makefile.docker`, is used as a wrapper around the other makefile.
If we want to run it, we would do something like
```sh
make -f makefile.docker
```
Then as we have two separate makefiles,
our wrapper can safely call our actual target.

## One versus two makefiles
Note that if we did not have two, we would end up recursing.
On the other hand, we could have two separate targets,
one for the docker wrapper which calls the other real target.
```makefile
docker-target:  something
  $(DOCKER_PREFIX) $(MAKE) -C <actual make target>

actual-target: something
  python something
```

Though the separation is nice,
it might be more convenient to have one makefile.
`one_make` is a branch that demonstrates this.
This might be better for smaller projects, or rather,
one makefile might not be good for larger projects.
