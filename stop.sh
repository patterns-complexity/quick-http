if [ -z "$2" ]; then
    CNT_NAME=http
else
    CNT_NAME=$2
fi

if [ -z "$3" ]; then
    IMG_NAME=http
else
    IMG_NAME=$3
fi

if [ -z "$4" ]; then
    IMG_TAG=0.0.1
else
    IMG_TAG=$4
fi

docker stop $CNT_NAME
docker rm $CNT_NAME
docker rmi $IMG_NAME:$IMG_TAG
