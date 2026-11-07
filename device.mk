#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/tcl/Freyr_10_1_WiFi
# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Include bootctl binary
PRODUCT_PACKAGES += \
    bootctl

# Include Android 13 Boot HAL (AIDL is standard, adjust if your stock ROM uses HIDL 1.2)
PRODUCT_PACKAGES += \
    android.hardware.boot-service.default \
    android.hardware.boot-service.default.recovery

PRODUCT_PACKAGES += \
    bootctrl.mt6761

# For TCL Tab 10L Gen 2 (800 x 1280 panel)
TW_THEME := portrait_mdpi

#PRODUCT_STATIC_BOOT_CONTROL_HAL := \
    #bootctrl.mt6761 \
    #libgptutils \
    #libz \
    #libcutils

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload
