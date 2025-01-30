.section .dtb.init.rodata,"a"
.balign 16
.global __dtb_test_fdt_overlay_begin
__dtb_test_fdt_overlay_begin:
.incbin "test/overlay/test-fdt-overlay.dtb" 
__dtb_test_fdt_overlay_end:
.global __dtb_test_fdt_overlay_end
.balign 16
