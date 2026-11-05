LOCAL_PATH := $(call my-dir)
ifeq ($(TARGET_DEVICE),8492A)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
