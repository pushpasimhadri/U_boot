# SPDX-License-Identifier: GPL-2.0+
#
# (C) Copyright 2012 The Chromium Authors

obj-y += test-main.o
ifdef CONFIG_SPL_LOAD_FIT
obj-$(CONFIG_SANDBOX) += image/
endif

ifneq ($(CONFIG_$(SPL_)BLOBLIST),)
obj-$(CONFIG_$(SPL_)CMDLINE) += bloblist.o
obj-$(CONFIG_$(SPL_)CMDLINE) += bootm.o
endif
obj-$(CONFIG_$(SPL_)CMDLINE) += cmd/
obj-$(CONFIG_$(SPL_)CMDLINE) += cmd_ut.o
obj-$(CONFIG_$(SPL_)CMDLINE) += command_ut.o
obj-$(CONFIG_$(SPL_)UT_COMPRESSION) += compression.o
obj-y += dm/
obj-$(CONFIG_FUZZ) += fuzz/
ifndef CONFIG_SANDBOX_VPL
obj-$(CONFIG_UNIT_TEST) += lib/
obj-$(CONFIG_UNIT_TEST) += rpi4_test.o
endif
obj-$(CONFIG_$(SPL_)CMDLINE) += print_ut.o
obj-$(CONFIG_$(SPL_)CMDLINE) += str_ut.o
obj-$(CONFIG_UT_TIME) += time_ut.o
obj-y += ut.o

ifeq ($(CONFIG_SPL_BUILD),)
obj-$(CONFIG_UNIT_TEST) += boot/
obj-$(CONFIG_UNIT_TEST) += common/
obj-y += log/
obj-$(CONFIG_$(SPL_)UT_UNICODE) += unicode_ut.o
endif
