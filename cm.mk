$(call inherit-product, device/xiaomi/kenzo/full_kenzo.mk)

# Inherit some common cos stuff.
$(call inherit-product, vendor/cos/common.mk)

# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := kenzo
PRODUCT_NAME := cos_kenzo
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Redmi Note 3 Pro
TARGET_VENDOR := Xiaomi
COS_RELEASE = true

WITH_SUPERSU := false

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=Xiaomi/kenzo/kenzo:6.0.1/MMB29M/6.11.24:user/release-keys \
    PRIVATE_BUILD_DESC="kenzo-user 6.0.1 MMB29M 6.11.24 release-keys"
endif
