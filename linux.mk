LOCAL_PATH := $(call my-path)

include $(CLEAR_VARS)
LOCAL_MODULE := linux
include $(FORGE_LINUX)

# ============ build busybox rootfs  ============

include $(CLEAR_VARS)
LOCAL_MODULE := busybox
include $(FORGE_BUSYBOX)
