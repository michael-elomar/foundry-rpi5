# ========= linux kernel variables ==========
PRODUCT_FILE_PATH := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

SKEL_PATH := $(PRODUCT_FILE_PATH)/skel

TARGET_OS := linux
TARGET_OS_VERSION := 6.18.43
TARGET_OS_MAJOR_VERSION := $(firstword $(subst ., ,$(TARGET_OS_VERSION)))
TARGET_ARCH := aarch64
TARGET_LINUX_CROSS := aarch64-linux-gnu-
TARGET_CC := $(TARGET_LINUX_CROSS)

TARGET_KERNEL_ARCHIVE_LINK := https://github.com/raspberrypi/linux/archive/refs/tags/stable_20260911.tar.gz
KERNEL_ARCHIVE_NAME := stable_20260911.tar.gz
KERNEL_SRC_FOLDER = linux-stable_20260911
TARGET_KERNEL_CONFIG := bcm2712_defconfig

# define LOCAL_LINUX_MAKE_BUILD_ARGS with extra make args for building linux


# ========= busybox variables ==========
TARGET_BUSYBOX_VERSION := 1.37.0
TARGET_BUSYBOX_CONFIG_FILE := $(PRODUCT_FILE_PATH)/busybox.config

# include call for building rootfs
include linux.mk
