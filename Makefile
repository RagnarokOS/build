# Makefile for custom installs and ISOs/Releases.
# $Ragnarok: Makefile,v 1.1 2024/11/05 16:16:56 lecorbeau Exp $

include config.mk

bootstrap:
	/usr/bin/mmdebstrap --variant="${VARIANT}" \
		--components="${COMPONENTS}" \
		--include="${PACKAGES}" \
		--hook-directory=hooks \
		"${FLAVOUR}" ${TARGET} \
		${SOURCES}
