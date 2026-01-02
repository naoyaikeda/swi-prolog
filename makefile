swi-prolog.sif: makefile image.def
	singularity build --fakeroot swi-prolog.sif image.def
build: swi-prolog.sif
run: build
	singularity shell --shell /bin/bash --bind ./notebooks:/apps/notebooks swi-prolog.sif
