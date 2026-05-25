#
# Copyright (C) 2020 The conquerOS Project
#           (C) 2025 The Halcyon Project
#           (C) 2026 Erika Project
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

ERIKA_HOST_TIME := $(shell date +"%Y%m%d-%H%M")

ERIKA_BUILD_TYPE ?= UNOFFICIAL

ERIKA_VERSION := Kitten
ERIKA_VERSION_NUMBER := 0.1

ifeq ($(WITH_GMS),true)
   ERIKA_BUILD_VERSION := ErikaProject_$(ERIKA_BUILD)-$(ERIKA_VERSION_NUMBER)-$(ERIKA_HOST_TIME)-$(ERIKA_BUILD_TYPE)-GMS
   ERIKA_BUILD_NUMBER := $(ERIKA_VERSION).$(ERIKA_VERSION_NUMBER).$(ERIKA_HOST_TIME)-GMS
else
   ERIKA_BUILD_VERSION := ErikaProject_$(ERIKA_BUILD)-$(ERIKA_VERSION_NUMBER)-$(ERIKA_HOST_TIME)-$(ERIKA_BUILD_TYPE)-VANILLA
   ERIKA_BUILD_NUMBER := $(ERIKA_VERSION).$(ERIKA_VERSION_NUMBER).$(ERIKA_HOST_TIME)-VANILLA
endif

# ERIKA Build information properties
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
   ro.erika.device=$(ERIKA_BUILD) \
   ro.erika.version=$(ERIKA_VERSION_NUMBER) \
   ro.erika.build.version=$(ERIKA_BUILD_VERSION) \
   ro.erika.build.number=$(ERIKA_BUILD_NUMBER) \
   ro.erika.build.type=$(ERIKA_BUILD_TYPE)
