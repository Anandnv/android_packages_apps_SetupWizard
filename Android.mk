LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_MODULE_TAGS := optional

LOCAL_PACKAGE_NAME := MoKeeSetupWizard
LOCAL_CERTIFICATE := platform
LOCAL_PRIVILEGED_MODULE := true
LOCAL_OVERRIDES_PACKAGES := Provision

LOCAL_PROGUARD_FLAG_FILES := proguard.flags

LOCAL_STATIC_JAVA_LIBRARIES := \
    android-support-v4 \
    android-support-v13 \
    libphonenumber \
    org.mokee.platform.internal \
    org.mokee.platform.sdk

LOCAL_JAVA_LIBRARIES := \
    telephony-common

LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/res
LOCAL_AAPT_FLAGS := --auto-add-overlay

include frameworks/opt/setupwizard/navigationbar/common.mk
include frameworks/opt/setupwizard/library/common.mk

include $(BUILD_PACKAGE)
