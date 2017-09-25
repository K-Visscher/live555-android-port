LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

include $(CLEAR_VARS)
LOCAL_MODULE := basic-usage-environment
LOCAL_CPP_FEATURES := exceptions
LOCAL_SRC_FILES := $(wildcard $(LOCAL_PATH)/BasicUsageEnvironment/*.cpp) $(wildcard $(LOCAL_PATH)/BasicUsageEnvironment/*.c)
LOCAL_C_INCLUDES := $(LOCAL_PATH)/BasicUsageEnvironment/include $(LOCAL_PATH)/groupsock/include $(LOCAL_PATH)/UsageEnvironment/include
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/BasicUsageEnvironment/include
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := groupsock
LOCAL_CPP_FEATURES := exceptions
LOCAL_SRC_FILES := $(wildcard $(LOCAL_PATH)/groupsock/*.cpp) $(wildcard $(LOCAL_PATH)/groupsock/*.c)
LOCAL_C_INCLUDES := $(LOCAL_PATH)/groupsock/include $(LOCAL_PATH)/UsageEnvironment/include
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/groupsock/include
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := live-media
LOCAL_CPP_FEATURES := exceptions
LOCAL_SRC_FILES := $(wildcard $(LOCAL_PATH)/liveMedia/*.cpp) $(wildcard $(LOCAL_PATH)/liveMedia/*.c)
LOCAL_C_INCLUDES := $(LOCAL_PATH)/liveMedia/include $(LOCAL_PATH)/groupsock/include $(LOCAL_PATH)/UsageEnvironment/include
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/liveMedia/include
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := usage-environment
LOCAL_CPP_FEATURES := exceptions
LOCAL_SRC_FILES := $(wildcard $(LOCAL_PATH)/UsageEnvironment/*.cpp) $(wildcard $(LOCAL_PATH)/UsageEnvironment/*.c)
LOCAL_C_INCLUDES := $(LOCAL_PATH)/UsageEnvironment/include $(LOCAL_PATH)/groupsock/include
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/UsageEnvironment/include
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := live555
LOCAL_WHOLE_STATIC_LIBRARIES := usage-environment live-media groupsock basic-usage-environment
include $(BUILD_SHARED_LIBRARY)