cmd_test/overlay/test-fdt-base.dtb.o := aarch64-linux-gnu-gcc -Wp,-MD,test/overlay/.test-fdt-base.dtb.o.d -nostdinc -isystem /usr/lib/gcc-cross/aarch64-linux-gnu/11/include -Iinclude   -I./arch/arm/include -include ./include/linux/kconfig.h -D__KERNEL__ -D__UBOOT__ -D__ASSEMBLY__ -fno-PIE -g -D__ARM__ -fno-pic -mstrict-align -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -mgeneral-regs-only -fno-common -ffixed-x18 -mbranch-protection=none -pipe -march=armv8-a+crc -D__LINUX_ARM_ARCH__=8 -I./arch/arm/mach-bcm283x/include   -c -o test/overlay/test-fdt-base.dtb.o test/overlay/test-fdt-base.dtb.S

source_test/overlay/test-fdt-base.dtb.o := test/overlay/test-fdt-base.dtb.S

deps_test/overlay/test-fdt-base.dtb.o := \
  include/linux/kconfig.h \
    $(wildcard include/config/booger.h) \
    $(wildcard include/config/foo.h) \
    $(wildcard include/config/spl/.h) \
    $(wildcard include/config/tpl/.h) \
    $(wildcard include/config/tools/.h) \
    $(wildcard include/config/tpl/build.h) \
    $(wildcard include/config/vpl/build.h) \
    $(wildcard include/config/spl/build.h) \
    $(wildcard include/config/tools/foo.h) \
    $(wildcard include/config/spl/foo.h) \
    $(wildcard include/config/tpl/foo.h) \
    $(wildcard include/config/vpl/foo.h) \
    $(wildcard include/config/option.h) \
    $(wildcard include/config/acme.h) \
    $(wildcard include/config/spl/acme.h) \
    $(wildcard include/config/tpl/acme.h) \
    $(wildcard include/config/if/enabled/int.h) \
    $(wildcard include/config/int/option.h) \

test/overlay/test-fdt-base.dtb.o: $(deps_test/overlay/test-fdt-base.dtb.o)

$(deps_test/overlay/test-fdt-base.dtb.o):
