#!/bin/bash

echo "=============================================="
echo "     GAMEMT – FORMATTER (FAT32 32KB)"
echo "=============================================="
echo
echo "Wykryte urządzenia blokowe:"
echo

lsblk -o NAME,SIZE,TYPE,MOUNTPOINT

echo
echo "UWAGA! Wybierz TYLKO urządzenie odpowiadające karcie SD,"
echo "np. sdb, sdc — NIGDY sda (to zwykle dysk systemowy)."
echo

read -p "Podaj nazwę urządzenia (np. sdb): " DEV

# Walidacja
if [[ -z "$DEV" ]]; then
    echo "❌ Nie podano urządzenia."
    exit 1
fi

if [[ "$DEV" == "sda" ]]; then
    echo "❌ sda to zwykle dysk systemowy – NIE FORMATUJĘ!"
    exit 1
fi

# Sprawdzenie czy istnieje
if [[ ! -b /dev/$DEV ]]; then
    echo "❌ Urządzenie /dev/$DEV nie istnieje."
    exit 1
fi

echo
echo "Wybrane urządzenie: /dev/$DEV"
lsblk /dev/$DEV
echo

read -p "Czy na pewno CHCESZ WYMAZAĆ to urządzenie? (tak/nie): " CONFIRM

if [[ "$CONFIRM" != "tak" ]]; then
    echo "Anulowano."
    exit 0
fi

echo
echo "=== Odmontowuję wszystkie partycje... ==="
sudo umount /dev/${DEV}?* 2>/dev/null

echo "=== Tworzę nową tablicę MBR (msdos)... ==="
sudo parted -s /dev/$DEV mklabel msdos

echo "=== Tworzę partycję primary FAT32... ==="
sudo parted -s /dev/$DEV mkpart primary fat32 1MiB 100%

echo "Czekam aż system wykryje nową partycję..."
sleep 2

PART="/dev/${DEV}1"

echo
echo "=== Formatuję FAT32 (klaster 32KB, -s 64) ==="
sudo mkfs.vfat -F 32 -s 64 -n GAMEMT $PART

echo
echo "=== GOTOWE! ==="
echo "Karta została sformatowana jako FAT32 (32KB cluster)."
echo "Urządzenie: $PART"
echo
lsblk $PART
echo
echo "Możesz teraz wyjąć kartę i użyć jej w Windows."
