# BWHazel Info Web Site

This repository contains the source code for my info web site, including legal and technical details.

## ARCHIVE NOTICE _(12/04/2025)_

This site has now closed and all content merged into my main web site.  The source code can be found [here](https://github.com/bhazel/bwhazel-portfolio-web-site.git).  As such, this repository has been archived.

## Technologies

* Material for MkDocs

## Getting Started

It is recommended to use Docker for the development environment, for which the image can be built using the `dev-env.Dockerfile` in the root of the repository.

```
docker image build -t x-bwhazel-info -f dev-env.Dockerfile .
docker container run -it --rm -p 8000:8000 -v /path/to/repository:/src x-bwhazel-info bash
```

Once the container is running, the source code can be accessed in the `/src` directory.

> **NOTE:** Prior to performing any development, you will need to remove `{{secrets.azureAppInsightsKey}}` in the `src/overrides/main.html` file or replace it with a suitable Application Insights instrumentation key.  If this is not done the build process will result in an error.

A Makefile wraps the MkDocs server and build functionality.

Command | Description
--- | ---
`make start` | Start the MkDocs server.
`make build` | Build the site into a `dist` directory.
`make clean` | Delete a built site.