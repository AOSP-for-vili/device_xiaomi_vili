#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from haydn device
$(call inherit-product, device/xiaomi/vili/device.mk)

# Inherit some common Orion stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Orion
ORION_MAINTAINER := 0mar
ORION_MAINTAINER_LINK := https://t.me/ViliSupport
ORION_GAPPS := true
TARGET_ENABLE_BLUR := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_HAS_UDFPS := false

BUILD_GOOGLE_CONTACTS := true
BUILD_GOOGLE_DIALER := true
BUILD_GOOGLE_MESSAGE := true

# Extras
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := vili
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 2107113SG
PRODUCT_NAME := orion_vili

PRODUCT_SYSTEM_NAME := vili_global
PRODUCT_SYSTEM_DEVICE := vili

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vili_global-user 14 UKQ1.231207.002 V816.0.5.0.UKDMIXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Xiaomi/vili_global/vili:14/UKQ1.231207.002/V816.0.5.0.UKDMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
