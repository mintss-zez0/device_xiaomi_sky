# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from common CherishOS configuration
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# Inherit from sky device
$(call inherit-product, device/xiaomi/sky/device.mk)

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/sky/sky-vendor.mk)

# Device identifier
PRODUCT_NAME := cherish_sky
PRODUCT_DEVICE := sky
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 23076RN4BI
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Target
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true

# CherishOS Stuff with GApps
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_ENABLE_BLUR := true
# CHERISH_VANILLA := true
WITH_GMS := true
TARGET_USES_MINI_GAPPS := true

# Maintainer Stuff
CHERISH_BUILD_TYPE := OFFICIAL
CHERISH_MAINTAINER := DUCK

# Cherish props
CHERISH_CHIPSET := SM4450
CHERISH_BATTERY := 5000mAh
CHERISH_DISPLAY := 1080x2460
