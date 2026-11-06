# 1. Capture loop device

set -eux

IMAGE=$1
LOOP=$(sudo losetup -Pf --show ${IMAGE})

echo "Loop device for image ${IMAGE}: ${LOOP}"

# 2. Create mount points

PARTITION1=/tmp/part1
PARTITION2=/tmp/part2

sudo mkdir -p ${PARTITION1} ${PARTITION2} # adjust based on number of partitions
echo "Creating mount points for partition"

# 3. Mount each partition
sudo mount "${LOOP}p1" ${PARTITION1}
sudo mount "${LOOP}p2" ${PARTITION2}

read key

# 5. Unmount
sudo umount ${PARTITION1} ${PARTITION2}

sudo rm -rf ${PARTITION1} ${PARTITION2}

# 6. Detach loop device
sudo losetup -d "${LOOP}"
