LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    activity.c \
    db.c \
    su.c\
    utils.c \

LOCAL_MODULE := su

LOCAL_C_INCLUDES += external/sqlite/dist

LOCAL_SHARED_LIBRARIES := \
    liblog \
    libsqlite \

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)
