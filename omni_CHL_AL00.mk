#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product-if-exists, vendor/twrp/config/common.mk)

# Inherit from CHL-AL00 device
$(call inherit-product, device/honor/CHL-AL00/device.mk)

PRODUCT_DEVICE := CHL_AL00
PRODUCT_NAME := omni_CHL_AL00
PRODUCT_BRAND := honor
PRODUCT_MODEL := CHL-AL00
PRODUCT_MANUFACTURER := honor

PRODUCT_GMS_CLIENTID_BASE := android-honor

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="CHL-AL00-user 11 HONORCHL-AL00 5.0.0.120C00 release-keys"

BUILD_FINGERPRINT := honor/CHL-AL00/HNCHL-M:11/HONORCHL-AL00/5.0.0.120C00:user/release-keys
