local_target_dir := $(TARGET_OUT)/etc/firmware/ti-connectivity
LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := edit_nvs.sh
LOCAL_MODULE_TAGS := debug
LOCAL_MODULE_PATH := $(local_target_dir)
LOCAL_SRC_FILES := $(LOCAL_MODULE)
LOCAL_MODULE_CLASS := FIRMWARE
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := wl1271-nvs.bin
LOCAL_MODULE_TAGS := debug
LOCAL_MODULE_PATH := $(local_target_dir)
LOCAL_SRC_FILES := $(LOCAL_MODULE)
LOCAL_MODULE_CLASS := FIRMWARE
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := wl18xx-fw-multirole-roc.bin
LOCAL_MODULE_TAGS := debug
LOCAL_MODULE_PATH := $(local_target_dir)
LOCAL_SRC_FILES := $(LOCAL_MODULE)
LOCAL_MODULE_CLASS := FIRMWARE
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := wl18xx-nvs.bin
LOCAL_MODULE_TAGS := debug
LOCAL_MODULE_PATH := $(local_target_dir)
LOCAL_SRC_FILES := $(LOCAL_MODULE)
LOCAL_MODULE_CLASS := FIRMWARE
include $(BUILD_PREBUILT)

