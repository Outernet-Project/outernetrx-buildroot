################################################################################
#
# lzma
#
################################################################################

LZMA_VERSION = 4.32.7
LZMA_SOURCE = lzma-$(LZMA_VERSION).tar.xz
LZMA_SITE = http://tukaani.org/lzma
LZMA_CONF_OPTS = $(if $(BR2_ENABLE_DEBUG),--enable-debug,--disable-debug)

$(eval $(host-autotools-package))

LZMA = $(HOST_DIR)/usr/bin/lzma
