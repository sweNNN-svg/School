# Basic Dockerfile Project

## Overview

Build a basic Dockerfile to create a Docker image that prints "Hello, Captain!" to the console before exiting.

## Requirements

- The Dockerfile should be named `Dockerfile`
- Place the Dockerfile in the project's root directory
- Use `alpine:latest` as the base image
- Include a single instruction to print the greeting message


Basic Implementation
```
FROM alpine:latest
CMD ["echo", "Hello, Captain!"]
```

## Advanced Challenge

For a more advanced version, you can modify the Dockerfile to:

- Accept a name argument
- Print a personalized greeting in the format "Hello, [your name]!"

## Implementation with Name Argument
```
FROM alpine:latest
ENTRYPOINT ["echo", "Hello,"]
CMD ["Captain!"]
```

To run with a custom name:
```
docker run image-name {Name}!
```

This will output: `Hello, {Name}!`