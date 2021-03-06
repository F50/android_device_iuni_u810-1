#
# Copyright 2012 The Android Open Source Project
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

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Inherit APNs list
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# must be before including omni part
TARGET_BOOTANIMATION_SIZE := 720x480

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/IUNI/U810/device.mk)

PRODUCT_NAME := omni_U810
PRODUCT_DEVICE := U810
PRODUCT_BRAND := IUNI
PRODUCT_MODEL := IUNI U810
PRODUCT_LOCALES += xxhdpi xhdpi hdpi
PRODUCT_MANUFACTURER := IUNI

# Kernel
TARGET_KERNEL_SOURCE := kernel/IUNI/U810
TARGET_KERNEL_CONFIG := U810_defconfig
##############try to use prebuilt kernel################
#TARGET_PREBUILT_KERNEL := device/IUNI/U810/kernel
##############try to use prebuilt kernel################

$(call inherit-product-if-exists, vendor/IUNI/U810/U810-vendor.mk)
