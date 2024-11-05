# Config file. Edit to fit your needs.
# $Ragnarok: config.mk,v 1.2 2024/11/05 16:16:50 lecorbeau Exp $

# Where the system will be mounted at install time.
TARGET		= /mnt

# Debian version, bootstrap variant and repo components.
FLAVOUR		= bookworm
VARIANT		= minbase
COMPONENTS	= main non-free-firmware

# Disk config
DEVICE		= /dev/vda		# Target device
BOOTMODE	= efi			# either 'efi' or 'bios'
BOOT		= 500M			# size of boot partition
SWAP		= 1.5G			# size of swap partition
ROOT		= 10G			# size of root partition
HOME		= 12G			# size of home. Can be left empty to use remaining space

# System config
HOSTNAME	= ragnarok
TIMEZONE	= America/Montreal
LOCALE		= en_CA.UTF-8 UTF-8
KB_LAYOUT	= ca			# see /usr/share/ragnarok-installer/lists/xkblayout.list
KB_VARIANT	= French (Canada)	# see /usr/share/ragnarok-installer/lists/xkblayout.list

# sources.list or *.sources files for
# the system.
SOURCES		= repos/sources.list \
		  repos/ragnarok.sources

# Extra Packages to install.
SETS		= ragnarok-devel \
		  ragnarok-virt \
		  ragnarok-xserv \
		  ragnarok-xfonts \
		  ragnarok-xprogs
PACKAGES	= usrmerge \
		  ca-certificates \
		  oksh signify-openbsd \
		  less wget ed \
		  ragnarok-base \
		  ${SETS}

# Which kernel(s) should be installed
KERNEL		= linux-image-amd64 \
		  linux-image-ragnarok-amd64
