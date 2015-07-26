## Specify phone tech before including full_phone
$(call inherit-product, vendor/omni/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := C230w

# Inherit some common CM stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/PHICOMM/C230w/device_C230w.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := C230w
PRODUCT_NAME := omni_C230w
PRODUCT_BRAND := PHICOMM
PRODUCT_MODEL := C230w
PRODUCT_MANUFACTURER := PHICOMM
