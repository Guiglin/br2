#!/bin/bash

IMAGES_DIR=$1
BUILDROOT_DIR=${IMAGES_DIR%/}
BUILDROOT_DIR=${BUILDROOT_DIR%/*/*}

echo "IMAGES_DIR=${IMAGES_DIR}"
echo "BUILDROOT_DIR=${BUILDROOT_DIR}"

mk_buildroot_images -N nand_configs/Toshiba-SLC-4G-TC58NVG2S0H.config -d "${IMAGES_DIR}" "${BUILDROOT_DIR}"

pushd "${IMAGES_DIR}"
ln -sf "spl-40000-1000-100.bin"     "flash-spl.bin"
ln -sf "uboot-40000.bin"            "flash-uboot.bin"
ln -sf "uboot-env-400000.bin"       "flash-uboot-env.bin"
ln -sf "chip-40000-1000.ubi.sparse" "flash-rootfs.bin"

cp "${BUILDROOT_DIR}/board/nextthing/chippro/flash.sh" "${IMAGES_DIR}/flash"

popd
