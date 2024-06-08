if [ -z "$1" ]; then
    echo "Usage: ./run.sh <path_to_serve> [port] [container_name] [image_name] [image_tag]"
    exit 1
fi

if [ ! -d "$2" ]; then
    PORT=80
else
    PORT=$2
fi

if [ -z "$3" ]; then
    CNT_NAME=http
else
    CNT_NAME=$2
fi

if [ -z "$4" ]; then
    IMG_NAME=http
else
    IMG_NAME=$3
fi

if [ -z "$5" ]; then
    IMG_TAG=0.0.1
else
    IMG_TAG=$4
fi

docker stop $CNT_NAME
docker rm $CNT_NAME
docker rmi $IMG_NAME:$IMG_TAG
docker build -f ./Dockerfile -t $IMG_NAME:$IMG_TAG .
docker run -v $1:/usr/share/nginx/html/ -p $PORT:80 --name $CNT_NAME -d $IMG_NAME:$IMG_TAG
