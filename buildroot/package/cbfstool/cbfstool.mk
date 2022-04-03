################################################################################
#
# CBFSTOOL
#
################################################################################

CBFSTOOL_VERSION = master
#CBFSTOOL_SOURCE = cbfstoolextracted.tar.gz
CBFSTOOL_SITE = $(call github,mrsarm,helloworld-c,master)
#CBFSTOOL_SITE = https://codeload.github.com/mrsarm/helloworld-c/tar.gz/refs/heads/
CBFSTOOL_LICENSE = GPLv2
CBFSTOOL_LICENSE_FILES = COPYING
CBFSTOOL_DEPENDENCIES = $(TARGET_NLS_DEPENDENCIES)

#  GNU nano 6.2                                                   xxhash/xxhash.mk
################################################################################
#
# xxhash
#
################################################################################

#XXHASH_VERSION = 0.8.1
#XXHASH_SITE = $(call github,Cyan4973,xxHash,v$(XXHASH_VERSION))
#XXHASH_LICENSE = BSD-2-Clause (library), GPL-2.0+ (xxhsum)
#XXHASH_LICENSE_FILES = LICENSE cli/COPYING
#XXHASH_INSTALL_STAGING = YES


#define CBFSTOOL_BUILD_CMDS
# cmake .
# $(TARGET_CONFIGURE_OPTS) $(MAKE) -C $(@D)
# $(MAKE)
#endef


$(eval $(cmake-package))



#$(eval $(generic-package))
