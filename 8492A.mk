#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from 8492A device
$(call inherit-product, device/tcl/8492A/device.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

PRODUCT_DEVICE := 8492A
PRODUCT_NAME := twrp_8492A
PRODUCT_BRAND := TCL
PRODUCT_MODEL := TCL Tab 10L Gen 2
PRODUCT_MANUFACTURER := TCL

# Stock Build Fingerprint
BUILD_FINGERPRINT := TCL/8492A_TR/Freyr_10_1_WiFi:13/TP1A.220624.014/KZEB:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT="$(BUILD_FINGERPRINT)"
