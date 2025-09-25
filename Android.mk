LOCAL_PATH := $(call my-dir)

ifneq ($(filter tulip jasmine_sprout wayne clover lavender platina jason whyred,$(TARGET_DEVICE)),)

include $(CLEAR_VARS)

subdir_makefiles=$(call first-makefiles-under,$(LOCAL_PATH))
$(foreach mk,$(subdir_makefiles),$(info including $(mk) ...)$(eval include $(mk)))
endif
