LOCAL_PATH:= $(call my-dir)

define add-rootdir-targets
$(foreach target,$(1), \
   $(eval include $(CLEAR_VARS)) \
   $(eval LOCAL_MODULE       := $(target)) \
   $(eval LOCAL_MODULE_CLASS := ETC) \
   $(eval LOCAL_SRC_FILES    := $(target)) \
   $(eval LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)) \
   $(eval include $(BUILD_PREBUILT)))
endef

$(call add-rootdir-targets, \
    init.carrier.rc \
    init.common_svc.rc \
    init.environ.rc \
    init.mal.rc \
    init.model.rc \
    init.project.rc \
    init.rc \
    init.rilchip.rc \
    init.rilcommon.rc \
    init.rilepdg.rc \
    init.usb.rc \
    init.wifi.rc \
    init.trace.rc \
    fstab.mt6735 \
    init.mt6735.rc \
    init.mt6735.modem.rc \
    init.mt6735.usb.rc \
    meta_init.rc \
    meta_init.modem.rc \
    meta_init.project.rc \
    factory_init.rc \
    factory_init.usb.rc \
    factory_init.project.rc \
    ueventd.mt6735.rc)
