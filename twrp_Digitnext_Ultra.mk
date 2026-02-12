#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from Digitnext_Ultra device
$(call inherit-product, device/digit/Digitnext_Ultra/device.mk)

# Virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs - 
# SDCard replacement functionality
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

PRODUCT_DEVICE := Digitnext_Ultra
PRODUCT_NAME := twrp_Digitnext_Ultra
PRODUCT_BRAND := Digit
PRODUCT_MODEL := Digitnext_Ultra
PRODUCT_MANUFACTURER := digit

PRODUCT_GMS_CLIENTID_BASE := android-digit

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_k62v1_64_bsp-user 12 SP1A.210812.016 1704853980 release-keys"

BUILD_FINGERPRINT := Digit/Digitnext_Ultra/Digitnext_Ultra:12/SP1A.210812.016/1704853980:user/release-keys
