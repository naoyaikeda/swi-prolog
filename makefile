swi-prolog.sif: makefile image.def
	singularity build --fakeroot swi-prolog.sif image.def
build: swi-prolog.sif
run: build
	singularity exec --bind ./notebooks:/apps/notebooks --bind ./container_bashrc:/apps/container_bashrc swi-prolog.sif /bin/bash --rcfile /apps/container_bashrc
