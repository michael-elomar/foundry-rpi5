TARGET_OS := linux
TARGET_OS_VERSION := 6.18.43
TARGET_OS_MAJOR_VERSION := $(firstword $(subst ., ,$(TARGET_OS_VERSION)))
TARGET_ARCH := aarch64
TARGET_LINUX_CROSS := aarch64-linux-gnu-
TARGET_CC := $(TARGET_LINUX_CROSS)

TARGET_KERNEL_ARCHIVE_LINK := https://github.com/raspberrypi/linux/archive/refs/tags/stable_20260911.tar.gz
KERNEL_ARCHIVE_NAME := stable_20260911.tar.gz
KERNEL_SRC_FOLDER = linux-stable_20260911
# define LOCAL_LINUX_MAKE_BUILD_ARGS with extra make args for building linux

include linux.mk
