 Copyright (C) 2017 Unlegacy-Android
# Copyright (C) 2017,2020 The LineageOS Project
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

ERIKA_TARGET_PACKAGE := $(PRODUCT_OUT)/$(ERIKA_BUILD_VERSION).zip

SHA256 := prebuilts/build-tools/path/$(HOST_PREBUILT_TAG)/sha256sum

.PHONY: inception
$(ERIKA_TARGET_PACKAGE): $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) mv $(INTERNAL_OTA_PACKAGE_TARGET) $(ERIKA_TARGET_PACKAGE)
	$(hide) $(SHA256) $(ERIKA_TARGET_PACKAGE) | sed "s|$(PRODUCT_OUT)/||" > $(ERIKA_TARGET_PACKAGE).sha256sum
	@echo " "
        @echo " Get it Rollin-. "
        @echo " "
	@echo -e "\t ================================================= Build complete ================================================="
	@echo -e "\t Zip: $(ERIKA_TARGET_PACKAGE)"
	@echo -e "\t SHA256: `cat $(ERIKA_TARGET_PACKAGE).sha256sum | awk '{print $$1}' `"
	@echo -e "\t Size: `du -sh $(ERIKA_TARGET_PACKAGE) | awk '{print $$1}' `"
	@echo -e "\t =================================================================================================================="

.PHONY: inception
carthage: $(ERIKA_TARGET_PACKAGE) $(DEFAULT_GOAL)
