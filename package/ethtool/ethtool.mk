#############################################################
#
# ethtool
#
#############################################################

ETHTOOL_VERSION = 2.6.38
ETHTOOL_SITE = $(BR2_KERNEL_MIRROR)/software/network/ethtool/

$(eval $(call AUTOTARGETS,package,ethtool))
