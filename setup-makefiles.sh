#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
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

set -e

# Required!
export  a5ltexx a5lte a5ultexx a5ulte a53g a53gxx"
export DEVICE_COMMON=a5-common
export BOARD_COMMON=msm8916-common
export VENDOR=samsung

if [ -z "$SETUP_DEVICE_COMMON_DIR" ]; then
	export SETUP_DEVICE_COMMON_DIR=1
fi
if [ -z "$SETUP_BOARD_COMMON_DIR" ]; then
	export SETUP_BOARD_COMMON_DIR=0
fi

./../../$VENDOR/$BOARD_COMMON/setup-makefiles.sh $@
