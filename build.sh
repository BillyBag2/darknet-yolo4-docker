set -e
echo "Building image for compute 3.7 e.g K80"
cd docker
docker build -t billybag2/darknet-yolo4:k80  .

