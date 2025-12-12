#!/bin/bash

echo "=============================================="
echo "     GAMEMT – FORMATTER (FAT32 32KB)"
echo "=============================================="
echo
echo "Detected block devices:"
echo

lsblk -o NAME,SIZE,TYPE,MOUNTPOINT

echo
echo "WARNING! Choose ONLY the device corresponding to the SD card,"
echo "e.g., sdb, sdc — NEVER sda (this is usually the system disk)."
echo

read -p "Enter device name (e.g., sdb): " DEV

# Validation
if [[ -z "$DEV" ]]; then
    echo "❌ No device specified."
    exit 1
fi

if [[ "$DEV" == "sda" ]]; then
    echo "❌ sda is usually the system disk – NOT FORMATTING!"
    exit 1
fi

# Check if device exists
if [[ ! -b /dev/$DEV ]]; then
    echo "❌ Device /dev/$DEV does not exist."
    exit 1
fi

echo
echo "Selected device: /dev/$DEV"
lsblk /dev/$DEV
echo

read -p "Are you SURE you want to ERASE this device? (yes/no): " CONFIRM

if [[ "$CONFIRM" != "yes" ]]; then
    echo "Operation cancelled."
    exit 0
fi

echo
echo "=== Unmounting all partitions... ==="
sudo umount /dev/${DEV}?* 2>/dev/null

echo "=== Creating new MBR (msdos) partition table... ==="
sudo parted -s /dev/$DEV mklabel msdos

echo "=== Creating primary FAT32 partition... ==="
sudo parted -s /dev/$DEV mkpart primary fat32 1MiB 100%

echo "Waiting for system to detect the new partition..."
sleep 2

PART="/dev/${DEV}1"

echo
echo "=== Formatting FAT32 (32KB cluster, -s 64) ==="
sudo mkfs.vfat -F 32 -s 64 -n GAMEMT $PART

echo
echo "=== DONE! ==="
echo "The card has been formatted as FAT32 (32KB cluster)."
echo "Device: $PART"
echo
lsblk $PART
echo
echo "You can now eject the card and use it in Windows."