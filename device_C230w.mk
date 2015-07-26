$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

##test
#$(call inherit-product, device/qcom/common/common.mk)
##test

$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)

$(call inherit-product-if-exists, vendor/PHICOMM/C230w/C230w-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/PHICOMM/C230w/overlay

LOCAL_PATH := device/PHICOMM/C230w
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/dt.img:dt.img 
#\
#    $(LOCAL_PATH)/recovery/root/recovery.fstab:recovery/root/etc/recovery.fstab

# TWRP
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/recovery/root/etc/twrp.fstab:recovery/root/etc/twrp.fstab

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_C230w
PRODUCT_DEVICE := C230w

#fstab.qcom & init.qcom.spec.switch.rc
PRODUCT_PACKAGES += fstab.qcom

