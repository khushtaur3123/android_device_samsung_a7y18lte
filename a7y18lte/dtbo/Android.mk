ifeq ($(TARGET_DEVICE),a7y18lte)
LOCAL_PATH := $(call my-dir)
$(call add-radio-file,eureka_dtbo.img)
endif
