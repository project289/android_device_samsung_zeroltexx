# Copyright (C) 2015 The CyanogenMod Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# inherit from zero-common
include device/samsung/zero-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := zeroltexx,zerolte

# Kernel
TARGET_KERNEL_CONFIG := lineage_zeroltexx_defconfig

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3879731200

# Radio
BOARD_MODEM_TYPE := ss333

# ================================================
# PERFORMANCE & RAM TUNING
# ================================================
BOARD_KERNEL_CMDLINE += consoleblank=0
TARGET_USE_INTERACTIVE_GOVERNOR := true
TARGET_USES_GRALLOC1 := true
TARGET_USES_HWC2 := true
TARGET_USE_COMPRESSED_APK := true
PRODUCT_MINIMIZE_JAVA_DEBUG_INFO := true
BOARD_ZRAM_SIZE := 1073741824
BOARD_USE_LZ4_ZRAM := true
TARGET_RECOVERY_DEVICE_MODULES += init.performance.rc

# LineageOS Soong config (needed for PATH_OVERRIDE_SOONG)
include vendor/lineage/config/BoardConfigSoong.mk
