#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/a5ultexx/device.mk)

# Release name
PRODUCT_RELEASE_NAME := Samsung Galaxy A5

# Boot animation
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280
TARGET_BOOT_ANIMATION_RES := 720

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a5ultexx
PRODUCT_NAME := lineage_a5ultexx
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A500FU
PRODUCT_MANUFACTURER := samsung
PRODUCT_CHARACTERISTICS := phone
PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_ARCH := arm
TARGET_DENSITY := hdpi
TARGET_GAPPS_ARCH := arm
TARGET_MINIMAL_APPS := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="ks01lte" \
    PRODUCT_NAME="ks01ltexx" \
    PRIVATE_BUILD_DESC="ks01ltexx-user 5.0.1 LRX22C I9506XXSDPL2 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by build.prop
BUILD_FINGERPRINT := samsung/ks01ltexx/ks01lte:5.0.1/LRX22C/I9506XXSDPL2:user/release-keys
