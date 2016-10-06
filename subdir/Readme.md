# Summary

The goal of this directory is to mimic when a subdirectory
relies on a parent directory.
This poses an interesting problem for docker.
We have to make sure to include the parent's directory as the mount point,
but how do we call the child make in the container from the child
directory on the host?
