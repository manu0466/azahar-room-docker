# azahar-room Docker

Docker image with the `azahar-room` binary to host multiplayer lobbies.

## Build

To build the image, run:

```
docker build -t manu0466/azahar-room:latest .
```

## Usage

To start a multiplayer lobby with the container, run:

```
docker run --rm -p 24872:24872 manu0466/azahar-room:latest
```

- `-p 24872:24872` exposes the default port used by azahar-room (change if your configuration uses a different port).

## Configuration

You can pass additional command-line arguments to `azahar-room` as needed. For example:


```
docker run --rm -p 24872:24872 manu0466/azahar-room:latest --help
```

