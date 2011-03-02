#############################################################
#
# xerces
#
#############################################################
XERCES_VERSION = 3.1.1
XERCES_SOURCE = xerces-c-$(XERCES_VERSION).tar.gz
XERCES_SITE = http://archive.apache.org/dist/xerces/c/3/sources/
XERCES_MAKE = $(MAKE1)
XERCES_INSTALL_STAGING = YES
XERCES_CONF_OPT = --enable-shared \
		  --disable-threads \
		  --disable-network \
		  --with-gnu-ld

ifeq ($(BR2_PACKAGE_LIBICONV),y)
XERCES_CONF_ENV += LIBS=-liconv
XERCES_DEPENDENCIES += libiconv
endif

$(eval $(call AUTOTARGETS,package,xerces))
