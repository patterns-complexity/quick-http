# Quick HTTP

Quick HTTP is a simple HTTP server that can be used to serve static files.

## Description
This is a simple docker image that can be used to serve static files. It is based on the `nginx:1.26.1-alpine` image and uses the `nginx` web server to serve the files.

## Usage
To use this image, you need to run the `run.sh` script with the following arguments:

```bash
./run.sh <path_to_serve> [port] [container_name] [image_name] [image_tag]
```

To stop the container, you can run the `stop.sh` script with matching arguments:

```bash
./stop.sh [container_name] [image_name] [image_tag]
```

### Arguments
| Argument | Description | REQUIRED |
| --- | --- | --- |
| `path` | The path to the directory containing the files you want to serve. | YES |
| `port` | The port you want to use to serve the files. | NO |
| `container_name` | The name you want to give to the container. | NO |
| `image_name` | The name you want to give to the image. | NO |
| `image_tag` | The tag you want to give to the image. | NO |

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE.MD) file for details.
