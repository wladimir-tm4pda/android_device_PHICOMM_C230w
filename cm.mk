## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := C230w

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/PHICOMM/C230w/device_C230w.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := C230w
PRODUCT_NAME := cm_C230w
PRODUCT_BRAND := PHICOMM
PRODUCT_MODEL := C230w
PRODUCT_MANUFACTURER := PHICOMM

# for compatribility with stock ROMs asserts:
# assert(getprop("ro.product.device") == "msm8610" ||
#       getprop("ro.build.product") == "msm8610");

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_PRODUCT=msm8610
#    PRODUCT_DEVICE=msm8610

#PRODUCT_PROPERTY_OVERRIDES :=  ro.build.product=msm8610
#    ro.product.device=msm8610
