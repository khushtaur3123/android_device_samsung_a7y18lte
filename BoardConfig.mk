#
# Copyright (C) 2018 The LineageOS Project
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

DEVICE_PATH := device/samsung/a7y18lte

# Assert
TARGET_OTA_ASSERT_DEVICE := a7y18lte,a7y18ltejt

# Kernel
TARGET_KERNEL_CONFIG := exynos7885-a7y18lte_defconfig

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 4561305600

# Inherit common board flags
include device/samsung/universal7885-common/BoardConfigCommon.mk
