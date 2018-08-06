################################################################################
#
# iperf3
#
################################################################################

IPERF3_VERSION = 3.6
IPERF3_SITE = https://downloads.es.net/pub/iperf
IPERF3_SOURCE = iperf-$(IPERF3_VERSION).tar.gz
IPERF3_LICENSE = BSD-3-Clause, BSD-2-Clause, MIT
IPERF3_LICENSE_FILES = LICENSE

IPERF3_CONF_ENV += CFLAGS="$(TARGET_CFLAGS) -D_GNU_SOURCE"

ifeq ($(BR2_PACKAGE_OPENSSL),y)
IPERF3_CONF_OPTS += --with-openssl=$(STAGING_DIR)/usr
IPERF3_DEPENDENCIES += openssl
else
IPERF3_CONF_OPTS += --without-openssl
endif

$(eval $(autotools-package))
