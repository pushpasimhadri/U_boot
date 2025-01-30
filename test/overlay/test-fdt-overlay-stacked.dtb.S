.section .dtb.init.rodata,"a"
.balign 16
.global __dtb_test_fdt_overlay_stacked_begin
__dtb_test_fdt_overlay_stacked_begin:
.incbin "test/overlay/test-fdt-overlay-stacked.dtb" 
__dtb_test_fdt_overlay_stacked_end:
.global __dtb_test_fdt_overlay_stacked_end
.balign 16
