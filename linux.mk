LOCAL_PATH := $(call my-path)

include $(CLEAR_VARS)
LOCAL_MODULE := linux
LOCAL_MODULE_TYPE := linux
include $(FORGE_LINUX)

# ============ build busybox rootfs  ============

include $(CLEAR_VARS)
LOCAL_MODULE := busybox
LOCAL_MODULE_TYPE := busybox
include $(FORGE_BUSYBOX)
