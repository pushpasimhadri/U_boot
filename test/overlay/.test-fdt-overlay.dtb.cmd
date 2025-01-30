cmd_test/overlay/test-fdt-overlay.dtb := mkdir -p test/overlay/ ; (cat test/overlay/test-fdt-overlay.dts; ) > test/overlay/.test-fdt-overlay.dtb.pre.tmp;  cc -E -Wp,-MD,test/overlay/.test-fdt-overlay.dtb.d.pre.tmp -nostdinc -Iinclude   -I./arch/arm/include -include ./include/linux/kconfig.h -I./arch/arm/dts -I./arch/arm/dts/include -I./include -D__ASSEMBLY__ -undef -D__DTS__ -x assembler-with-cpp -o test/overlay/.test-fdt-overlay.dtb.dts.tmp test/overlay/.test-fdt-overlay.dtb.pre.tmp ; ./scripts/dtc/dtc -O dtb -o test/overlay/test-fdt-overlay.dtb -b 0 -i test/overlay/ -@ -Wno-unit_address_vs_reg -Wno-unit_address_format -Wno-avoid_unnecessary_addr_size -Wno-alias_paths -Wno-graph_child_address -Wno-graph_port -Wno-unique_unit_address -Wno-simple_bus_reg -Wno-pci_device_reg -Wno-pci_bridge -Wno-pci_device_bus_num  -@ -d test/overlay/.test-fdt-overlay.dtb.d.dtc.tmp test/overlay/.test-fdt-overlay.dtb.dts.tmp || (echo "Check /home/airbus/pushpa/u-boot/test/overlay/.test-fdt-overlay.dtb.pre.tmp for errors" && false) ; sed "s:test/overlay/.test-fdt-overlay.dtb.pre.tmp:test/overlay/test-fdt-overlay.dts:" test/overlay/.test-fdt-overlay.dtb.d.pre.tmp test/overlay/.test-fdt-overlay.dtb.d.dtc.tmp > test/overlay/.test-fdt-overlay.dtb.d

source_test/overlay/test-fdt-overlay.dtb := test/overlay/test-fdt-overlay.dts

deps_test/overlay/test-fdt-overlay.dtb := \
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

test/overlay/test-fdt-overlay.dtb: $(deps_test/overlay/test-fdt-overlay.dtb)

$(deps_test/overlay/test-fdt-overlay.dtb):
