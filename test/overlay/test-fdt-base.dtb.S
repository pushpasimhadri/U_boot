.section .dtb.init.rodata,"a"
.balign 16
.global __dtb_test_fdt_base_begin
__dtb_test_fdt_base_begin:
.incbin "test/overlay/test-fdt-base.dtb" 
__dtb_test_fdt_base_end:
.global __dtb_test_fdt_base_end
.balign 16
