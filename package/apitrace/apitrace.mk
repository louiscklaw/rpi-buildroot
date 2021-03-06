################################################################################
#
# apitrace
#
################################################################################

APITRACE_VERSION = 15d7f975f9688372467ebd63d2a57d3957823f93
APITRACE_SITE = $(call github,apitrace,apitrace,$(APITRACE_VERSION))
APITRACE_LICENSE = MIT
APITRACE_LICENSE_FILES = LICENSE

APITRACE_DEPENDENCIES = xlib_libX11 host-python libpng

# Gui was never tested, so we prefer to explicitly disable it
APITRACE_CONF_OPTS += -DENABLE_GUI=false

$(eval $(cmake-package))
