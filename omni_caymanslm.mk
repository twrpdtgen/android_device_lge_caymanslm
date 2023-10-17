#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from caymanslm device
$(call inherit-product, device/lge/caymanslm/device.mk)

PRODUCT_DEVICE := caymanslm
PRODUCT_NAME := omni_caymanslm
PRODUCT_BRAND := lge
PRODUCT_MODEL := LM-G910
PRODUCT_MANUFACTURER := lge

PRODUCT_GMS_CLIENTID_BASE := android-lge

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="caymanslm-user 11 RKQ1.210420.001 2226117194aca release-keys"

BUILD_FINGERPRINT := lge/caymanslm/caymanslm:11/RKQ1.210420.001/2226117194aca:user/release-keys
