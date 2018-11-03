# Open Policy Agent for Docker

Docker image for playing around with [Open Policy Agent](https://www.openpolicyagent.org/).

Includes some sample data from the [OPA Getting Started](https://www.openpolicyagent.org/docs/get-started.html) guide.

## Building the image

```
docker build -t opa .
```

## Running OPA

The default `CMD` for the image is the `run` command, so you can run OPA in interactive mode like this:
```
docker run -it --rm opa
```

You can run other OPA commands by including the command when yu run the container. E.g.

```
docker run -it --rm opa help
```

...to run `opa help`.

To load local files, you can mount the local volume into the container. E.g.

```
docker run -it --rm -v $(pwd)/policy:/opt/opa opa run /opt/opa/data.json /opt/opa/example.rego 
```



