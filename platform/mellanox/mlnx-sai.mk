# Mellanox SAI

MLNX_SAI_VERSION = SAIRel1.14.3-sonic1811
MLNX_SAI_REVISION = ba7396fe2a43b3c221ff4ac2ac6a92b6afbcf16c

export MLNX_SAI_VERSION MLNX_SAI_REVISION

MLNX_SAI = mlnx-sai_1.mlnx.$(MLNX_SAI_VERSION)_amd64.deb
$(MLNX_SAI)_SRC_PATH = $(PLATFORM_PATH)/mlnx-sai
$(MLNX_SAI)_DEPENDS += $(MLNX_SDK_DEBS)
$(MLNX_SAI)_RDEPENDS += $(MLNX_SDK_RDEBS) $(MLNX_SDK_DEBS)
$(MLNX_SAI)_CONFLICTS += $(LIBSAIVS_DEV)
SONIC_MAKE_DEBS += $(MLNX_SAI)
