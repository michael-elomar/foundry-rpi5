TARGET_OS := linux
TARGET_OS_VERSION := 6.18.43
TARGET_OS_MAJOR_VERSION := $(firstword $(subst ., ,$(TARGET_OS_VERSION)))
TARGET_ARCH := aarch64
TARGET_LINUX_CROSS := aarch64-linux-gnu-
TARGET_CC := $(TARGET_LINUX_CROSS)

# define LOCAL_LINUX_MAKE_BUILD_ARGS with extra make args for building linux

include linux.mk
