# Singularity image for SWI-Prolog

This repository contains a Singularity definition file (`image.def`) to build a containerized environment for SWI-Prolog. It comes pre-installed with a Jupyter kernel for Prolog, allowing you to run Prolog code in Jupyter notebooks.

## Features

*   **Base Image**: Alpine Linux (lightweight)
*   **SWI-Prolog**: Installed from Alpine's edge/testing repository.
*   **Python/Jupyter**: Includes Python 3 and `uv` package manager for efficient dependency management.
*   **Prolog Kernel**: Configured `prolog_kernel` for Jupyter notebooks.
*   **Enhanced Shell**: 
    *   **Starship**: A fast, customizable prompt for an improved CLI experience.
    *   **Custom Bash Context**: Pre-configured aliases and visual indicators for the container environment.
*   **Development Tools**: `git`, `curl`, and `bash` are pre-installed.

## Prerequisites

*   [Singularity](https://apptainer.org/) (or Apptainer) installed on your machine.
*   `make` (optional, for using the Makefile).

## Usage

### Building the Image

To build the Singularity image (`swi-prolog.sif`), run:

```bash
make build
```

Or manually:

```bash
singularity build --fakeroot swi-prolog.sif image.def
```

### Running the Container

To start a shell inside the container and bind the `./notebooks` directory to `/apps/notebooks`:

```bash
make run
```

Inside the container, you can start the Jupyter server (configuration may vary depending on your environment).

## Structure

*   `image.def`: Singularity definition file.
*   `makefile`: Helper commands for building and running.
*   `apps/`: Directory copied into the container at `/apps`.
*   `notebooks/`: Directory for storing your Jupyter notebooks (mounted at runtime).
