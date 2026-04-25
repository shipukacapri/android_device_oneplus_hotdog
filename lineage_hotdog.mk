#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hotdog device
$(call inherit-product, device/oneplus/hotdog/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_hotdog
PRODUCT_DEVICE := hotdog
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_MODEL := HD1911
PRODUCT_BRAND := OnePlus


# AxionOS Flags
AXION_MAINTAINER := Shipu
AXION_PROCESSOR := Snapdragon_855+
TARGET_BOOT_ANIMATION_RES := 1440
AXION_CAMERA_REAR_INFO := 48,8,16
AXION_CAMERA_FRONT_INFO := 16
TARGET_ENABLE_BLUR := true
TARGET_INCLUDE_AXFX := true

# Exclude Aperture in favor of OnePlus Camera
PRODUCT_NO_CAMERA := true

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="OnePlus7TPro-user 12 SKQ1.211113.001 Q.202303230244 release-keys" \
    BuildFingerprint=OnePlus/OnePlus7TPro/OnePlus7TPro:12/SKQ1.211113.001/Q.202303230244:user/release-keys \
    DeviceName=OnePlus7TPro \
    DeviceProduct=OnePlus7TPro \
    SystemDevice=OnePlus7TPro \
    SystemName=OnePlus7TPro
