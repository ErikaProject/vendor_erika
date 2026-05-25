# Include LineageOS SEPolicy 
ifneq ($(wildcard device/lineage/sepolicy/common/sepolicy.mk),)
  $(eval include device/lineage/sepolicy/common/sepolicy.mk)
endif

# Include erika SEPolicy
ifneq ($(wildcard device/erika/sepolicy/sepolicy.mk),)
  $(eval include device/erika/sepolicy/sepolicy.mk)
endif
