LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := game_shared
LOCAL_MODULE_FILENAME := libgame
LOCAL_SRC_FILES := main.cpp

LOCAL_CFLAGS += -g
LOCAL_CPPFLAGS += -g
LOCAL_STRIP_MODULE :=false

include $(BUILD_SHARED_LIBRARY)
