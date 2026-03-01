#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

#$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from avatrn device
$(call inherit-product, device/motorola/paros/device.mk)

PRODUCT_DEVICE := paros
PRODUCT_NAME := twrp_paros_cn
PRODUCT_BRAND := motorola
PRODUCT_MODEL := XT2437
PRODUCT_MANUFACTURER := motorola
PRODUCT_RELEASE_NAME := Moto G75

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=paros \
    PRODUCT_NAME=paros_cn \
    PRIVATE_BUILD_DESC="paros_cn-user 13 T1TGNS33.60-41-2-7 1b8716-5aa3a release-keys"

BUILD_FINGERPRINT := motorola/paros_cn/paros:12/U4UQ34.50-43-1/ee612:user/release-keys
#    TARGET_PRODUCT=paros \
