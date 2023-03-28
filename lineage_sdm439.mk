#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from r5q device
$(call inherit-product, device/samsung/sdm439/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_sdm439
PRODUCT_DEVICE := sdm439
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SAMSUNG GALAXY
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Screen density
# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := large
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
# A list of dpis to select prebuilt apk, in precedence order.
PRODUCT_AAPT_PREBUILT_DPI :=xxhdpi xhdpi hdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1520 
TARGET_SCREEN_WIDTH := 720 

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=sdm439 \
    PRODUCT_NAME=sdm439 \
    PRIVATE_BUILD_DESC="sdm439-user 11 RP1A.200720.012 M015GXXU3BUD9 release-keys"

BUILD_FINGERPRINT := "samsung/sdm439/sdm439:11/RP1A.200720.012/M015GXXU3BUD9:user/release-keys"

WITH_GMS := true
