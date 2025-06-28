## Getting Started

First, build the Docker container:

```bash
docker build . -t exiftool
```
Add photos to the `./photos` directory and then run the container with the following example commands:

```bash
docker-compose run exiftool -s -G photo/example.jpg
```

```bash
docker-compose run exiftool -DateTimeOriginal -s photos/*.jpg
```

Remember to cleanup once your are done (optional):

```bash
docker-compose down
```