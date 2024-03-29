
##############################################################
#
# VL6180X
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
VL6180X_VERSION = ''
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
VL6180X_SITE = 'git@github.com:mash9756/AESD-Final-VL6180X.git'
VL6180X_SITE_METHOD = git
VL6180X_GIT_SUBMODULES = YES

define VL6180X_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/ all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define VL6180X_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/finder-app/finder-test.sh $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/finder-app/finder.sh $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/finder-app/aarch64-writer $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
