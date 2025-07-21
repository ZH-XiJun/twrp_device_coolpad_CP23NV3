#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)

# Inherit from TWRP product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from CP23NV3 device
$(call inherit-product, device/coolpad/CP23NV3/device.mk)

PRODUCT_DEVICE := CP23NV3
PRODUCT_NAME := twrp_CP23NV3
PRODUCT_BRAND := coolpad
PRODUCT_MODEL := CP23NV3
PRODUCT_MANUFACTURER := coolpad

PRODUCT_GMS_CLIENTID_BASE := android-coolpad

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="agn3292SG_T3506_G2_MX6424_T_V25-user 13 TP1A.220624.014 1719558988 release-keys"

PRODUCT_PROPERTY_OVERRIDES += ro.twrp.vendor_boot=true

BUILD_FINGERPRINT := coolpad/CP23NV3/CP23NV3:13/TP1A.220624.014/1719558988:user/release-keys
