#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from Freyr_10_1_WiFi device
$(call inherit-product, device/tcl/Freyr_10_1_WiFi/device.mk)

PRODUCT_DEVICE := Freyr_10_1_WiFi
PRODUCT_NAME := omni_Freyr_10_1_WiFi
PRODUCT_BRAND := TCL
PRODUCT_MODEL := 8492A
PRODUCT_MANUFACTURER := tcl

PRODUCT_GMS_CLIENTID_BASE := android-tcl

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_tb8766p1_64_bsp-user 12 SP1A.210812.016 KZEB release-keys"

BUILD_FINGERPRINT := TCL/8492A_TR/Freyr_10_1_WiFi:13/TP1A.220624.014/KZEB:user/release-keys
