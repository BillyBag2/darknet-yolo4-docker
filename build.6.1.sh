set -e
echo "Building image for compute 6.1 e.g P40 P6 and p4"
cd docker
docker build --build-arg DARKNET_MAKEFILE=Makefile.6.1 -t billybag2/darknet-yolo4:c6.1 .

