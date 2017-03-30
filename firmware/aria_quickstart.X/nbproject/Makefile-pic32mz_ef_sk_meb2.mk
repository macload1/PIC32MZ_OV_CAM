#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-pic32mz_ef_sk_meb2.mk)" "nbproject/Makefile-local-pic32mz_ef_sk_meb2.mk"
include nbproject/Makefile-local-pic32mz_ef_sk_meb2.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=pic32mz_ef_sk_meb2
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/aria_quickstart.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/aria_quickstart.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/system_config/pic32mz_ef_sk_meb2/bsp/bsp.c ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/i2c/src/drv_i2c_static_buffer_model.c ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/i2c/src/drv_i2c_mapping.c ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/tmr/src/drv_tmr_static.c ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/tmr/src/drv_tmr_mapping.c ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/driver/controller/lcc/drv_gfx_lcc_generic.c ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/hal/gfx_display_def.c ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/hal/gfx_driver_def.c ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/libaria/libaria_harmony.c ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/libaria/libaria_init.c ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/libaria/libaria_events.c ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/libaria/libaria_macros.c ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/gfx_assets.c ../src/system_config/pic32mz_ef_sk_meb2/framework/system/clk/src/sys_clk.c ../src/system_config/pic32mz_ef_sk_meb2/framework/system/clk/src/sys_clk_pic32mz.c ../src/system_config/pic32mz_ef_sk_meb2/framework/system/devcon/src/sys_devcon.c ../src/system_config/pic32mz_ef_sk_meb2/framework/system/devcon/src/sys_devcon_pic32mz.c ../src/system_config/pic32mz_ef_sk_meb2/framework/system/devcon/src/sys_devcon_cache_pic32mz.S ../src/system_config/pic32mz_ef_sk_meb2/framework/system/ports/src/sys_ports_static.c ../src/system_config/pic32mz_ef_sk_meb2/system_init.c ../src/system_config/pic32mz_ef_sk_meb2/system_interrupt.c ../src/system_config/pic32mz_ef_sk_meb2/system_exceptions.c ../src/system_config/pic32mz_ef_sk_meb2/system_tasks.c ../src/app.c ../src/main.c ../src/ov2640.c ../src/i2c_master_noint.c ../src/i2c_bitbanging.c ../../../../../framework/gfx/hal/src/gfx.c ../../../../../framework/gfx/hal/src/gfx_color.c ../../../../../framework/gfx/hal/src/gfx_context.c ../../../../../framework/gfx/hal/src/gfx_default_impl.c ../../../../../framework/gfx/hal/src/gfx_display.c ../../../../../framework/gfx/hal/src/gfx_driver_interface.c ../../../../../framework/gfx/hal/src/gfx_get.c ../../../../../framework/gfx/hal/src/gfx_interface.c ../../../../../framework/gfx/hal/src/gfx_layer.c ../../../../../framework/gfx/hal/src/gfx_pixel_buffer.c ../../../../../framework/gfx/hal/src/gfx_rect.c ../../../../../framework/gfx/hal/src/gfx_util.c ../../../../../framework/gfx/hal/src/gfx_set.c ../../../../../framework/gfx/hal/src/gfx_color_blend.c ../../../../../framework/gfx/hal/src/gfx_color_convert.c ../../../../../framework/gfx/hal/src/gfx_color_lerp.c ../../../../../framework/gfx/hal/src/gfx_color_value.c ../../../../../framework/gfx/hal/src/gfx_draw_blit.c ../../../../../framework/gfx/hal/src/gfx_draw_circle.c ../../../../../framework/gfx/hal/src/gfx_draw_line.c ../../../../../framework/gfx/hal/src/gfx_draw_pixel.c ../../../../../framework/gfx/hal/src/gfx_draw_rect.c ../../../../../framework/gfx/hal/src/gfx_math.c ../../../../../framework/gfx/libaria/src/libaria.c ../../../../../framework/gfx/libaria/src/libaria_context.c ../../../../../framework/gfx/libaria/src/libaria_context_paint.c ../../../../../framework/gfx/libaria/src/libaria_draw.c ../../../../../framework/gfx/libaria/src/libaria_editwidget.c ../../../../../framework/gfx/libaria/src/libaria_event.c ../../../../../framework/gfx/libaria/src/libaria_input.c ../../../../../framework/gfx/libaria/src/libaria_layer.c ../../../../../framework/gfx/libaria/src/libaria_list.c ../../../../../framework/gfx/libaria/src/libaria_scheme.c ../../../../../framework/gfx/libaria/src/libaria_screen.c ../../../../../framework/gfx/libaria/src/libaria_string.c ../../../../../framework/gfx/libaria/src/libaria_utils.c ../../../../../framework/gfx/libaria/src/libaria_widget.c ../../../../../framework/gfx/libaria/src/libaria_widget_skin_classic.c ../../../../../framework/gfx/libaria/src/libaria_widget_button.c ../../../../../framework/gfx/libaria/src/libaria_widget_button_skin_classic.c ../../../../../framework/gfx/libaria/src/libaria_widget_checkbox.c ../../../../../framework/gfx/libaria/src/libaria_widget_checkbox_skin_classic.c ../../../../../framework/gfx/libaria/src/libaria_widget_circle.c ../../../../../framework/gfx/libaria/src/libaria_widget_circle_skin_classic.c ../../../../../framework/gfx/libaria/src/libaria_widget_drawsurface.c ../../../../../framework/gfx/libaria/src/libaria_widget_drawsurface_skin_classic.c ../../../../../framework/gfx/libaria/src/libaria_widget_gradient.c ../../../../../framework/gfx/libaria/src/libaria_widget_gradient_skin_classic.c ../../../../../framework/gfx/libaria/src/libaria_widget_groupbox.c ../../../../../framework/gfx/libaria/src/libaria_widget_groupbox_skin_classic.c ../../../../../framework/gfx/libaria/src/libaria_widget_image.c ../../../../../framework/gfx/libaria/src/libaria_widget_image_skin_classic.c ../../../../../framework/gfx/libaria/src/libaria_widget_imagesequence.c ../../../../../framework/gfx/libaria/src/libaria_widget_imagesequence_skin_classic.c ../../../../../framework/gfx/libaria/src/libaria_widget_keypad.c ../../../../../framework/gfx/libaria/src/libaria_widget_keypad_skin_classic.c ../../../../../framework/gfx/libaria/src/libaria_widget_label.c ../../../../../framework/gfx/libaria/src/libaria_widget_label_skin_classic.c ../../../../../framework/gfx/libaria/src/libaria_widget_line.c ../../../../../framework/gfx/libaria/src/libaria_widget_line_skin_classic.c ../../../../../framework/gfx/libaria/src/libaria_widget_list.c ../../../../../framework/gfx/libaria/src/libaria_widget_list_skin_classic.c ../../../../../framework/gfx/libaria/src/libaria_widget_listwheel.c ../../../../../framework/gfx/libaria/src/libaria_widget_listwheel_skin_classic.c ../../../../../framework/gfx/libaria/src/libaria_widget_progressbar.c ../../../../../framework/gfx/libaria/src/libaria_widget_progressbar_skin_classic.c ../../../../../framework/gfx/libaria/src/libaria_widget_radiobutton.c ../../../../../framework/gfx/libaria/src/libaria_widget_radiobutton_skin_classic.c ../../../../../framework/gfx/libaria/src/libaria_radiobutton_group.c ../../../../../framework/gfx/libaria/src/libaria_widget_rectangle.c ../../../../../framework/gfx/libaria/src/libaria_widget_rectangle_skin_classic.c ../../../../../framework/gfx/libaria/src/libaria_widget_scrollbar.c ../../../../../framework/gfx/libaria/src/libaria_widget_scrollbar_skin_classic.c ../../../../../framework/gfx/libaria/src/libaria_widget_slider.c ../../../../../framework/gfx/libaria/src/libaria_widget_slider_skin_classic.c ../../../../../framework/gfx/libaria/src/libaria_widget_textfield.c ../../../../../framework/gfx/libaria/src/libaria_widget_textfield_skin_classic.c ../../../../../framework/gfx/libaria/src/libaria_widget_touchtest.c ../../../../../framework/gfx/libaria/src/libaria_widget_touchtest_skin_classic.c ../../../../../framework/gfx/libaria/src/libaria_widget_window.c ../../../../../framework/gfx/libaria/src/libaria_widget_window_skin_classic.c ../../../../../framework/gfx/utils/src/gfxu_image.c ../../../../../framework/gfx/utils/src/gfxu_image_png_external.c ../../../../../framework/gfx/utils/src/gfxu_image_png_internal.c ../../../../../framework/gfx/utils/src/gfxu_image_jpg_internal.c ../../../../../framework/gfx/utils/src/gfxu_image_raw_external.c ../../../../../framework/gfx/utils/src/gfxu_image_raw_internal.c ../../../../../framework/gfx/utils/src/gfxu_image_rle_external.c ../../../../../framework/gfx/utils/src/gfxu_image_rle_internal.c ../../../../../framework/gfx/utils/src/gfxu_image_utils.c ../../../../../framework/gfx/utils/src/gfxu_palette.c ../../../../../framework/gfx/utils/src/gfxu_string.c ../../../../../framework/gfx/utils/src/gfxu_string_external.c ../../../../../framework/gfx/utils/src/gfxu_string_internal.c ../../../../../framework/gfx/utils/src/gfxu_string_query.c ../../../../../framework/gfx/utils/src/gfxu_string_utils.c ../../../../../framework/system/dma/src/sys_dma.c ../../../../../framework/system/int/src/sys_int_pic32.c ../../../../../third_party/decoder/jidctint/src/jidctint.c ../../../../../third_party/decoder/lodepng/lodepng.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1465531745/bsp.o ${OBJECTDIR}/_ext/1219754583/drv_i2c_static_buffer_model.o ${OBJECTDIR}/_ext/1219754583/drv_i2c_mapping.o ${OBJECTDIR}/_ext/199634090/drv_tmr_static.o ${OBJECTDIR}/_ext/199634090/drv_tmr_mapping.o ${OBJECTDIR}/_ext/713288229/drv_gfx_lcc_generic.o ${OBJECTDIR}/_ext/477038478/gfx_display_def.o ${OBJECTDIR}/_ext/477038478/gfx_driver_def.o ${OBJECTDIR}/_ext/1740298103/libaria_harmony.o ${OBJECTDIR}/_ext/1740298103/libaria_init.o ${OBJECTDIR}/_ext/1740298103/libaria_events.o ${OBJECTDIR}/_ext/1740298103/libaria_macros.o ${OBJECTDIR}/_ext/715821942/gfx_assets.o ${OBJECTDIR}/_ext/1847413222/sys_clk.o ${OBJECTDIR}/_ext/1847413222/sys_clk_pic32mz.o ${OBJECTDIR}/_ext/924081491/sys_devcon.o ${OBJECTDIR}/_ext/924081491/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/924081491/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/50030870/sys_ports_static.o ${OBJECTDIR}/_ext/1951523377/system_init.o ${OBJECTDIR}/_ext/1951523377/system_interrupt.o ${OBJECTDIR}/_ext/1951523377/system_exceptions.o ${OBJECTDIR}/_ext/1951523377/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/ov2640.o ${OBJECTDIR}/_ext/1360937237/i2c_master_noint.o ${OBJECTDIR}/_ext/1360937237/i2c_bitbanging.o ${OBJECTDIR}/_ext/1847583374/gfx.o ${OBJECTDIR}/_ext/1847583374/gfx_color.o ${OBJECTDIR}/_ext/1847583374/gfx_context.o ${OBJECTDIR}/_ext/1847583374/gfx_default_impl.o ${OBJECTDIR}/_ext/1847583374/gfx_display.o ${OBJECTDIR}/_ext/1847583374/gfx_driver_interface.o ${OBJECTDIR}/_ext/1847583374/gfx_get.o ${OBJECTDIR}/_ext/1847583374/gfx_interface.o ${OBJECTDIR}/_ext/1847583374/gfx_layer.o ${OBJECTDIR}/_ext/1847583374/gfx_pixel_buffer.o ${OBJECTDIR}/_ext/1847583374/gfx_rect.o ${OBJECTDIR}/_ext/1847583374/gfx_util.o ${OBJECTDIR}/_ext/1847583374/gfx_set.o ${OBJECTDIR}/_ext/1847583374/gfx_color_blend.o ${OBJECTDIR}/_ext/1847583374/gfx_color_convert.o ${OBJECTDIR}/_ext/1847583374/gfx_color_lerp.o ${OBJECTDIR}/_ext/1847583374/gfx_color_value.o ${OBJECTDIR}/_ext/1847583374/gfx_draw_blit.o ${OBJECTDIR}/_ext/1847583374/gfx_draw_circle.o ${OBJECTDIR}/_ext/1847583374/gfx_draw_line.o ${OBJECTDIR}/_ext/1847583374/gfx_draw_pixel.o ${OBJECTDIR}/_ext/1847583374/gfx_draw_rect.o ${OBJECTDIR}/_ext/1847583374/gfx_math.o ${OBJECTDIR}/_ext/1907747181/libaria.o ${OBJECTDIR}/_ext/1907747181/libaria_context.o ${OBJECTDIR}/_ext/1907747181/libaria_context_paint.o ${OBJECTDIR}/_ext/1907747181/libaria_draw.o ${OBJECTDIR}/_ext/1907747181/libaria_editwidget.o ${OBJECTDIR}/_ext/1907747181/libaria_event.o ${OBJECTDIR}/_ext/1907747181/libaria_input.o ${OBJECTDIR}/_ext/1907747181/libaria_layer.o ${OBJECTDIR}/_ext/1907747181/libaria_list.o ${OBJECTDIR}/_ext/1907747181/libaria_scheme.o ${OBJECTDIR}/_ext/1907747181/libaria_screen.o ${OBJECTDIR}/_ext/1907747181/libaria_string.o ${OBJECTDIR}/_ext/1907747181/libaria_utils.o ${OBJECTDIR}/_ext/1907747181/libaria_widget.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_skin_classic.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_button.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_button_skin_classic.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_checkbox.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_checkbox_skin_classic.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_circle.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_circle_skin_classic.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_drawsurface.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_drawsurface_skin_classic.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_gradient.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_gradient_skin_classic.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_groupbox.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_groupbox_skin_classic.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_image.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_image_skin_classic.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_imagesequence.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_imagesequence_skin_classic.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_keypad.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_keypad_skin_classic.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_label.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_label_skin_classic.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_line.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_line_skin_classic.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_list.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_list_skin_classic.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_listwheel.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_listwheel_skin_classic.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_progressbar.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_progressbar_skin_classic.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_radiobutton.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_radiobutton_skin_classic.o ${OBJECTDIR}/_ext/1907747181/libaria_radiobutton_group.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_rectangle.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_rectangle_skin_classic.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_scrollbar.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_scrollbar_skin_classic.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_slider.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_slider_skin_classic.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_textfield.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_textfield_skin_classic.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_touchtest.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_touchtest_skin_classic.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_window.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_window_skin_classic.o ${OBJECTDIR}/_ext/1597685232/gfxu_image.o ${OBJECTDIR}/_ext/1597685232/gfxu_image_png_external.o ${OBJECTDIR}/_ext/1597685232/gfxu_image_png_internal.o ${OBJECTDIR}/_ext/1597685232/gfxu_image_jpg_internal.o ${OBJECTDIR}/_ext/1597685232/gfxu_image_raw_external.o ${OBJECTDIR}/_ext/1597685232/gfxu_image_raw_internal.o ${OBJECTDIR}/_ext/1597685232/gfxu_image_rle_external.o ${OBJECTDIR}/_ext/1597685232/gfxu_image_rle_internal.o ${OBJECTDIR}/_ext/1597685232/gfxu_image_utils.o ${OBJECTDIR}/_ext/1597685232/gfxu_palette.o ${OBJECTDIR}/_ext/1597685232/gfxu_string.o ${OBJECTDIR}/_ext/1597685232/gfxu_string_external.o ${OBJECTDIR}/_ext/1597685232/gfxu_string_internal.o ${OBJECTDIR}/_ext/1597685232/gfxu_string_query.o ${OBJECTDIR}/_ext/1597685232/gfxu_string_utils.o ${OBJECTDIR}/_ext/853959373/sys_dma.o ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o ${OBJECTDIR}/_ext/426253641/jidctint.o ${OBJECTDIR}/_ext/493934858/lodepng.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1465531745/bsp.o.d ${OBJECTDIR}/_ext/1219754583/drv_i2c_static_buffer_model.o.d ${OBJECTDIR}/_ext/1219754583/drv_i2c_mapping.o.d ${OBJECTDIR}/_ext/199634090/drv_tmr_static.o.d ${OBJECTDIR}/_ext/199634090/drv_tmr_mapping.o.d ${OBJECTDIR}/_ext/713288229/drv_gfx_lcc_generic.o.d ${OBJECTDIR}/_ext/477038478/gfx_display_def.o.d ${OBJECTDIR}/_ext/477038478/gfx_driver_def.o.d ${OBJECTDIR}/_ext/1740298103/libaria_harmony.o.d ${OBJECTDIR}/_ext/1740298103/libaria_init.o.d ${OBJECTDIR}/_ext/1740298103/libaria_events.o.d ${OBJECTDIR}/_ext/1740298103/libaria_macros.o.d ${OBJECTDIR}/_ext/715821942/gfx_assets.o.d ${OBJECTDIR}/_ext/1847413222/sys_clk.o.d ${OBJECTDIR}/_ext/1847413222/sys_clk_pic32mz.o.d ${OBJECTDIR}/_ext/924081491/sys_devcon.o.d ${OBJECTDIR}/_ext/924081491/sys_devcon_pic32mz.o.d ${OBJECTDIR}/_ext/924081491/sys_devcon_cache_pic32mz.o.d ${OBJECTDIR}/_ext/50030870/sys_ports_static.o.d ${OBJECTDIR}/_ext/1951523377/system_init.o.d ${OBJECTDIR}/_ext/1951523377/system_interrupt.o.d ${OBJECTDIR}/_ext/1951523377/system_exceptions.o.d ${OBJECTDIR}/_ext/1951523377/system_tasks.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/ov2640.o.d ${OBJECTDIR}/_ext/1360937237/i2c_master_noint.o.d ${OBJECTDIR}/_ext/1360937237/i2c_bitbanging.o.d ${OBJECTDIR}/_ext/1847583374/gfx.o.d ${OBJECTDIR}/_ext/1847583374/gfx_color.o.d ${OBJECTDIR}/_ext/1847583374/gfx_context.o.d ${OBJECTDIR}/_ext/1847583374/gfx_default_impl.o.d ${OBJECTDIR}/_ext/1847583374/gfx_display.o.d ${OBJECTDIR}/_ext/1847583374/gfx_driver_interface.o.d ${OBJECTDIR}/_ext/1847583374/gfx_get.o.d ${OBJECTDIR}/_ext/1847583374/gfx_interface.o.d ${OBJECTDIR}/_ext/1847583374/gfx_layer.o.d ${OBJECTDIR}/_ext/1847583374/gfx_pixel_buffer.o.d ${OBJECTDIR}/_ext/1847583374/gfx_rect.o.d ${OBJECTDIR}/_ext/1847583374/gfx_util.o.d ${OBJECTDIR}/_ext/1847583374/gfx_set.o.d ${OBJECTDIR}/_ext/1847583374/gfx_color_blend.o.d ${OBJECTDIR}/_ext/1847583374/gfx_color_convert.o.d ${OBJECTDIR}/_ext/1847583374/gfx_color_lerp.o.d ${OBJECTDIR}/_ext/1847583374/gfx_color_value.o.d ${OBJECTDIR}/_ext/1847583374/gfx_draw_blit.o.d ${OBJECTDIR}/_ext/1847583374/gfx_draw_circle.o.d ${OBJECTDIR}/_ext/1847583374/gfx_draw_line.o.d ${OBJECTDIR}/_ext/1847583374/gfx_draw_pixel.o.d ${OBJECTDIR}/_ext/1847583374/gfx_draw_rect.o.d ${OBJECTDIR}/_ext/1847583374/gfx_math.o.d ${OBJECTDIR}/_ext/1907747181/libaria.o.d ${OBJECTDIR}/_ext/1907747181/libaria_context.o.d ${OBJECTDIR}/_ext/1907747181/libaria_context_paint.o.d ${OBJECTDIR}/_ext/1907747181/libaria_draw.o.d ${OBJECTDIR}/_ext/1907747181/libaria_editwidget.o.d ${OBJECTDIR}/_ext/1907747181/libaria_event.o.d ${OBJECTDIR}/_ext/1907747181/libaria_input.o.d ${OBJECTDIR}/_ext/1907747181/libaria_layer.o.d ${OBJECTDIR}/_ext/1907747181/libaria_list.o.d ${OBJECTDIR}/_ext/1907747181/libaria_scheme.o.d ${OBJECTDIR}/_ext/1907747181/libaria_screen.o.d ${OBJECTDIR}/_ext/1907747181/libaria_string.o.d ${OBJECTDIR}/_ext/1907747181/libaria_utils.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_skin_classic.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_button.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_button_skin_classic.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_checkbox.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_checkbox_skin_classic.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_circle.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_circle_skin_classic.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_drawsurface.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_drawsurface_skin_classic.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_gradient.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_gradient_skin_classic.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_groupbox.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_groupbox_skin_classic.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_image.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_image_skin_classic.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_imagesequence.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_imagesequence_skin_classic.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_keypad.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_keypad_skin_classic.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_label.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_label_skin_classic.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_line.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_line_skin_classic.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_list.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_list_skin_classic.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_listwheel.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_listwheel_skin_classic.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_progressbar.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_progressbar_skin_classic.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_radiobutton.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_radiobutton_skin_classic.o.d ${OBJECTDIR}/_ext/1907747181/libaria_radiobutton_group.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_rectangle.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_rectangle_skin_classic.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_scrollbar.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_scrollbar_skin_classic.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_slider.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_slider_skin_classic.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_textfield.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_textfield_skin_classic.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_touchtest.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_touchtest_skin_classic.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_window.o.d ${OBJECTDIR}/_ext/1907747181/libaria_widget_window_skin_classic.o.d ${OBJECTDIR}/_ext/1597685232/gfxu_image.o.d ${OBJECTDIR}/_ext/1597685232/gfxu_image_png_external.o.d ${OBJECTDIR}/_ext/1597685232/gfxu_image_png_internal.o.d ${OBJECTDIR}/_ext/1597685232/gfxu_image_jpg_internal.o.d ${OBJECTDIR}/_ext/1597685232/gfxu_image_raw_external.o.d ${OBJECTDIR}/_ext/1597685232/gfxu_image_raw_internal.o.d ${OBJECTDIR}/_ext/1597685232/gfxu_image_rle_external.o.d ${OBJECTDIR}/_ext/1597685232/gfxu_image_rle_internal.o.d ${OBJECTDIR}/_ext/1597685232/gfxu_image_utils.o.d ${OBJECTDIR}/_ext/1597685232/gfxu_palette.o.d ${OBJECTDIR}/_ext/1597685232/gfxu_string.o.d ${OBJECTDIR}/_ext/1597685232/gfxu_string_external.o.d ${OBJECTDIR}/_ext/1597685232/gfxu_string_internal.o.d ${OBJECTDIR}/_ext/1597685232/gfxu_string_query.o.d ${OBJECTDIR}/_ext/1597685232/gfxu_string_utils.o.d ${OBJECTDIR}/_ext/853959373/sys_dma.o.d ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o.d ${OBJECTDIR}/_ext/426253641/jidctint.o.d ${OBJECTDIR}/_ext/493934858/lodepng.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1465531745/bsp.o ${OBJECTDIR}/_ext/1219754583/drv_i2c_static_buffer_model.o ${OBJECTDIR}/_ext/1219754583/drv_i2c_mapping.o ${OBJECTDIR}/_ext/199634090/drv_tmr_static.o ${OBJECTDIR}/_ext/199634090/drv_tmr_mapping.o ${OBJECTDIR}/_ext/713288229/drv_gfx_lcc_generic.o ${OBJECTDIR}/_ext/477038478/gfx_display_def.o ${OBJECTDIR}/_ext/477038478/gfx_driver_def.o ${OBJECTDIR}/_ext/1740298103/libaria_harmony.o ${OBJECTDIR}/_ext/1740298103/libaria_init.o ${OBJECTDIR}/_ext/1740298103/libaria_events.o ${OBJECTDIR}/_ext/1740298103/libaria_macros.o ${OBJECTDIR}/_ext/715821942/gfx_assets.o ${OBJECTDIR}/_ext/1847413222/sys_clk.o ${OBJECTDIR}/_ext/1847413222/sys_clk_pic32mz.o ${OBJECTDIR}/_ext/924081491/sys_devcon.o ${OBJECTDIR}/_ext/924081491/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/924081491/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/50030870/sys_ports_static.o ${OBJECTDIR}/_ext/1951523377/system_init.o ${OBJECTDIR}/_ext/1951523377/system_interrupt.o ${OBJECTDIR}/_ext/1951523377/system_exceptions.o ${OBJECTDIR}/_ext/1951523377/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/ov2640.o ${OBJECTDIR}/_ext/1360937237/i2c_master_noint.o ${OBJECTDIR}/_ext/1360937237/i2c_bitbanging.o ${OBJECTDIR}/_ext/1847583374/gfx.o ${OBJECTDIR}/_ext/1847583374/gfx_color.o ${OBJECTDIR}/_ext/1847583374/gfx_context.o ${OBJECTDIR}/_ext/1847583374/gfx_default_impl.o ${OBJECTDIR}/_ext/1847583374/gfx_display.o ${OBJECTDIR}/_ext/1847583374/gfx_driver_interface.o ${OBJECTDIR}/_ext/1847583374/gfx_get.o ${OBJECTDIR}/_ext/1847583374/gfx_interface.o ${OBJECTDIR}/_ext/1847583374/gfx_layer.o ${OBJECTDIR}/_ext/1847583374/gfx_pixel_buffer.o ${OBJECTDIR}/_ext/1847583374/gfx_rect.o ${OBJECTDIR}/_ext/1847583374/gfx_util.o ${OBJECTDIR}/_ext/1847583374/gfx_set.o ${OBJECTDIR}/_ext/1847583374/gfx_color_blend.o ${OBJECTDIR}/_ext/1847583374/gfx_color_convert.o ${OBJECTDIR}/_ext/1847583374/gfx_color_lerp.o ${OBJECTDIR}/_ext/1847583374/gfx_color_value.o ${OBJECTDIR}/_ext/1847583374/gfx_draw_blit.o ${OBJECTDIR}/_ext/1847583374/gfx_draw_circle.o ${OBJECTDIR}/_ext/1847583374/gfx_draw_line.o ${OBJECTDIR}/_ext/1847583374/gfx_draw_pixel.o ${OBJECTDIR}/_ext/1847583374/gfx_draw_rect.o ${OBJECTDIR}/_ext/1847583374/gfx_math.o ${OBJECTDIR}/_ext/1907747181/libaria.o ${OBJECTDIR}/_ext/1907747181/libaria_context.o ${OBJECTDIR}/_ext/1907747181/libaria_context_paint.o ${OBJECTDIR}/_ext/1907747181/libaria_draw.o ${OBJECTDIR}/_ext/1907747181/libaria_editwidget.o ${OBJECTDIR}/_ext/1907747181/libaria_event.o ${OBJECTDIR}/_ext/1907747181/libaria_input.o ${OBJECTDIR}/_ext/1907747181/libaria_layer.o ${OBJECTDIR}/_ext/1907747181/libaria_list.o ${OBJECTDIR}/_ext/1907747181/libaria_scheme.o ${OBJECTDIR}/_ext/1907747181/libaria_screen.o ${OBJECTDIR}/_ext/1907747181/libaria_string.o ${OBJECTDIR}/_ext/1907747181/libaria_utils.o ${OBJECTDIR}/_ext/1907747181/libaria_widget.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_skin_classic.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_button.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_button_skin_classic.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_checkbox.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_checkbox_skin_classic.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_circle.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_circle_skin_classic.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_drawsurface.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_drawsurface_skin_classic.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_gradient.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_gradient_skin_classic.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_groupbox.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_groupbox_skin_classic.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_image.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_image_skin_classic.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_imagesequence.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_imagesequence_skin_classic.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_keypad.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_keypad_skin_classic.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_label.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_label_skin_classic.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_line.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_line_skin_classic.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_list.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_list_skin_classic.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_listwheel.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_listwheel_skin_classic.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_progressbar.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_progressbar_skin_classic.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_radiobutton.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_radiobutton_skin_classic.o ${OBJECTDIR}/_ext/1907747181/libaria_radiobutton_group.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_rectangle.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_rectangle_skin_classic.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_scrollbar.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_scrollbar_skin_classic.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_slider.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_slider_skin_classic.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_textfield.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_textfield_skin_classic.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_touchtest.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_touchtest_skin_classic.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_window.o ${OBJECTDIR}/_ext/1907747181/libaria_widget_window_skin_classic.o ${OBJECTDIR}/_ext/1597685232/gfxu_image.o ${OBJECTDIR}/_ext/1597685232/gfxu_image_png_external.o ${OBJECTDIR}/_ext/1597685232/gfxu_image_png_internal.o ${OBJECTDIR}/_ext/1597685232/gfxu_image_jpg_internal.o ${OBJECTDIR}/_ext/1597685232/gfxu_image_raw_external.o ${OBJECTDIR}/_ext/1597685232/gfxu_image_raw_internal.o ${OBJECTDIR}/_ext/1597685232/gfxu_image_rle_external.o ${OBJECTDIR}/_ext/1597685232/gfxu_image_rle_internal.o ${OBJECTDIR}/_ext/1597685232/gfxu_image_utils.o ${OBJECTDIR}/_ext/1597685232/gfxu_palette.o ${OBJECTDIR}/_ext/1597685232/gfxu_string.o ${OBJECTDIR}/_ext/1597685232/gfxu_string_external.o ${OBJECTDIR}/_ext/1597685232/gfxu_string_internal.o ${OBJECTDIR}/_ext/1597685232/gfxu_string_query.o ${OBJECTDIR}/_ext/1597685232/gfxu_string_utils.o ${OBJECTDIR}/_ext/853959373/sys_dma.o ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o ${OBJECTDIR}/_ext/426253641/jidctint.o ${OBJECTDIR}/_ext/493934858/lodepng.o

# Source Files
SOURCEFILES=../src/system_config/pic32mz_ef_sk_meb2/bsp/bsp.c ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/i2c/src/drv_i2c_static_buffer_model.c ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/i2c/src/drv_i2c_mapping.c ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/tmr/src/drv_tmr_static.c ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/tmr/src/drv_tmr_mapping.c ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/driver/controller/lcc/drv_gfx_lcc_generic.c ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/hal/gfx_display_def.c ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/hal/gfx_driver_def.c ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/libaria/libaria_harmony.c ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/libaria/libaria_init.c ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/libaria/libaria_events.c ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/libaria/libaria_macros.c ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/gfx_assets.c ../src/system_config/pic32mz_ef_sk_meb2/framework/system/clk/src/sys_clk.c ../src/system_config/pic32mz_ef_sk_meb2/framework/system/clk/src/sys_clk_pic32mz.c ../src/system_config/pic32mz_ef_sk_meb2/framework/system/devcon/src/sys_devcon.c ../src/system_config/pic32mz_ef_sk_meb2/framework/system/devcon/src/sys_devcon_pic32mz.c ../src/system_config/pic32mz_ef_sk_meb2/framework/system/devcon/src/sys_devcon_cache_pic32mz.S ../src/system_config/pic32mz_ef_sk_meb2/framework/system/ports/src/sys_ports_static.c ../src/system_config/pic32mz_ef_sk_meb2/system_init.c ../src/system_config/pic32mz_ef_sk_meb2/system_interrupt.c ../src/system_config/pic32mz_ef_sk_meb2/system_exceptions.c ../src/system_config/pic32mz_ef_sk_meb2/system_tasks.c ../src/app.c ../src/main.c ../src/ov2640.c ../src/i2c_master_noint.c ../src/i2c_bitbanging.c ../../../../../framework/gfx/hal/src/gfx.c ../../../../../framework/gfx/hal/src/gfx_color.c ../../../../../framework/gfx/hal/src/gfx_context.c ../../../../../framework/gfx/hal/src/gfx_default_impl.c ../../../../../framework/gfx/hal/src/gfx_display.c ../../../../../framework/gfx/hal/src/gfx_driver_interface.c ../../../../../framework/gfx/hal/src/gfx_get.c ../../../../../framework/gfx/hal/src/gfx_interface.c ../../../../../framework/gfx/hal/src/gfx_layer.c ../../../../../framework/gfx/hal/src/gfx_pixel_buffer.c ../../../../../framework/gfx/hal/src/gfx_rect.c ../../../../../framework/gfx/hal/src/gfx_util.c ../../../../../framework/gfx/hal/src/gfx_set.c ../../../../../framework/gfx/hal/src/gfx_color_blend.c ../../../../../framework/gfx/hal/src/gfx_color_convert.c ../../../../../framework/gfx/hal/src/gfx_color_lerp.c ../../../../../framework/gfx/hal/src/gfx_color_value.c ../../../../../framework/gfx/hal/src/gfx_draw_blit.c ../../../../../framework/gfx/hal/src/gfx_draw_circle.c ../../../../../framework/gfx/hal/src/gfx_draw_line.c ../../../../../framework/gfx/hal/src/gfx_draw_pixel.c ../../../../../framework/gfx/hal/src/gfx_draw_rect.c ../../../../../framework/gfx/hal/src/gfx_math.c ../../../../../framework/gfx/libaria/src/libaria.c ../../../../../framework/gfx/libaria/src/libaria_context.c ../../../../../framework/gfx/libaria/src/libaria_context_paint.c ../../../../../framework/gfx/libaria/src/libaria_draw.c ../../../../../framework/gfx/libaria/src/libaria_editwidget.c ../../../../../framework/gfx/libaria/src/libaria_event.c ../../../../../framework/gfx/libaria/src/libaria_input.c ../../../../../framework/gfx/libaria/src/libaria_layer.c ../../../../../framework/gfx/libaria/src/libaria_list.c ../../../../../framework/gfx/libaria/src/libaria_scheme.c ../../../../../framework/gfx/libaria/src/libaria_screen.c ../../../../../framework/gfx/libaria/src/libaria_string.c ../../../../../framework/gfx/libaria/src/libaria_utils.c ../../../../../framework/gfx/libaria/src/libaria_widget.c ../../../../../framework/gfx/libaria/src/libaria_widget_skin_classic.c ../../../../../framework/gfx/libaria/src/libaria_widget_button.c ../../../../../framework/gfx/libaria/src/libaria_widget_button_skin_classic.c ../../../../../framework/gfx/libaria/src/libaria_widget_checkbox.c ../../../../../framework/gfx/libaria/src/libaria_widget_checkbox_skin_classic.c ../../../../../framework/gfx/libaria/src/libaria_widget_circle.c ../../../../../framework/gfx/libaria/src/libaria_widget_circle_skin_classic.c ../../../../../framework/gfx/libaria/src/libaria_widget_drawsurface.c ../../../../../framework/gfx/libaria/src/libaria_widget_drawsurface_skin_classic.c ../../../../../framework/gfx/libaria/src/libaria_widget_gradient.c ../../../../../framework/gfx/libaria/src/libaria_widget_gradient_skin_classic.c ../../../../../framework/gfx/libaria/src/libaria_widget_groupbox.c ../../../../../framework/gfx/libaria/src/libaria_widget_groupbox_skin_classic.c ../../../../../framework/gfx/libaria/src/libaria_widget_image.c ../../../../../framework/gfx/libaria/src/libaria_widget_image_skin_classic.c ../../../../../framework/gfx/libaria/src/libaria_widget_imagesequence.c ../../../../../framework/gfx/libaria/src/libaria_widget_imagesequence_skin_classic.c ../../../../../framework/gfx/libaria/src/libaria_widget_keypad.c ../../../../../framework/gfx/libaria/src/libaria_widget_keypad_skin_classic.c ../../../../../framework/gfx/libaria/src/libaria_widget_label.c ../../../../../framework/gfx/libaria/src/libaria_widget_label_skin_classic.c ../../../../../framework/gfx/libaria/src/libaria_widget_line.c ../../../../../framework/gfx/libaria/src/libaria_widget_line_skin_classic.c ../../../../../framework/gfx/libaria/src/libaria_widget_list.c ../../../../../framework/gfx/libaria/src/libaria_widget_list_skin_classic.c ../../../../../framework/gfx/libaria/src/libaria_widget_listwheel.c ../../../../../framework/gfx/libaria/src/libaria_widget_listwheel_skin_classic.c ../../../../../framework/gfx/libaria/src/libaria_widget_progressbar.c ../../../../../framework/gfx/libaria/src/libaria_widget_progressbar_skin_classic.c ../../../../../framework/gfx/libaria/src/libaria_widget_radiobutton.c ../../../../../framework/gfx/libaria/src/libaria_widget_radiobutton_skin_classic.c ../../../../../framework/gfx/libaria/src/libaria_radiobutton_group.c ../../../../../framework/gfx/libaria/src/libaria_widget_rectangle.c ../../../../../framework/gfx/libaria/src/libaria_widget_rectangle_skin_classic.c ../../../../../framework/gfx/libaria/src/libaria_widget_scrollbar.c ../../../../../framework/gfx/libaria/src/libaria_widget_scrollbar_skin_classic.c ../../../../../framework/gfx/libaria/src/libaria_widget_slider.c ../../../../../framework/gfx/libaria/src/libaria_widget_slider_skin_classic.c ../../../../../framework/gfx/libaria/src/libaria_widget_textfield.c ../../../../../framework/gfx/libaria/src/libaria_widget_textfield_skin_classic.c ../../../../../framework/gfx/libaria/src/libaria_widget_touchtest.c ../../../../../framework/gfx/libaria/src/libaria_widget_touchtest_skin_classic.c ../../../../../framework/gfx/libaria/src/libaria_widget_window.c ../../../../../framework/gfx/libaria/src/libaria_widget_window_skin_classic.c ../../../../../framework/gfx/utils/src/gfxu_image.c ../../../../../framework/gfx/utils/src/gfxu_image_png_external.c ../../../../../framework/gfx/utils/src/gfxu_image_png_internal.c ../../../../../framework/gfx/utils/src/gfxu_image_jpg_internal.c ../../../../../framework/gfx/utils/src/gfxu_image_raw_external.c ../../../../../framework/gfx/utils/src/gfxu_image_raw_internal.c ../../../../../framework/gfx/utils/src/gfxu_image_rle_external.c ../../../../../framework/gfx/utils/src/gfxu_image_rle_internal.c ../../../../../framework/gfx/utils/src/gfxu_image_utils.c ../../../../../framework/gfx/utils/src/gfxu_palette.c ../../../../../framework/gfx/utils/src/gfxu_string.c ../../../../../framework/gfx/utils/src/gfxu_string_external.c ../../../../../framework/gfx/utils/src/gfxu_string_internal.c ../../../../../framework/gfx/utils/src/gfxu_string_query.c ../../../../../framework/gfx/utils/src/gfxu_string_utils.c ../../../../../framework/system/dma/src/sys_dma.c ../../../../../framework/system/int/src/sys_int_pic32.c ../../../../../third_party/decoder/jidctint/src/jidctint.c ../../../../../third_party/decoder/lodepng/lodepng.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-pic32mz_ef_sk_meb2.mk dist/${CND_CONF}/${IMAGE_TYPE}/aria_quickstart.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ2048ECG144
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/924081491/sys_devcon_cache_pic32mz.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/924081491" 
	@${RM} ${OBJECTDIR}/_ext/924081491/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/924081491/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/924081491/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/924081491/sys_devcon_cache_pic32mz.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/924081491/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/924081491/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/924081491/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/924081491/sys_devcon_cache_pic32mz.o ../src/system_config/pic32mz_ef_sk_meb2/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/924081491/sys_devcon_cache_pic32mz.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1
	
else
${OBJECTDIR}/_ext/924081491/sys_devcon_cache_pic32mz.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/924081491" 
	@${RM} ${OBJECTDIR}/_ext/924081491/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/924081491/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/924081491/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/924081491/sys_devcon_cache_pic32mz.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/924081491/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/924081491/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/924081491/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/924081491/sys_devcon_cache_pic32mz.o ../src/system_config/pic32mz_ef_sk_meb2/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/924081491/sys_devcon_cache_pic32mz.o.asm.d",--gdwarf-2
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1465531745/bsp.o: ../src/system_config/pic32mz_ef_sk_meb2/bsp/bsp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1465531745" 
	@${RM} ${OBJECTDIR}/_ext/1465531745/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1465531745/bsp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1465531745/bsp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1465531745/bsp.o.d" -o ${OBJECTDIR}/_ext/1465531745/bsp.o ../src/system_config/pic32mz_ef_sk_meb2/bsp/bsp.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1219754583/drv_i2c_static_buffer_model.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/i2c/src/drv_i2c_static_buffer_model.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1219754583" 
	@${RM} ${OBJECTDIR}/_ext/1219754583/drv_i2c_static_buffer_model.o.d 
	@${RM} ${OBJECTDIR}/_ext/1219754583/drv_i2c_static_buffer_model.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1219754583/drv_i2c_static_buffer_model.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1219754583/drv_i2c_static_buffer_model.o.d" -o ${OBJECTDIR}/_ext/1219754583/drv_i2c_static_buffer_model.o ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/i2c/src/drv_i2c_static_buffer_model.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1219754583/drv_i2c_mapping.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/i2c/src/drv_i2c_mapping.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1219754583" 
	@${RM} ${OBJECTDIR}/_ext/1219754583/drv_i2c_mapping.o.d 
	@${RM} ${OBJECTDIR}/_ext/1219754583/drv_i2c_mapping.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1219754583/drv_i2c_mapping.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1219754583/drv_i2c_mapping.o.d" -o ${OBJECTDIR}/_ext/1219754583/drv_i2c_mapping.o ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/i2c/src/drv_i2c_mapping.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/199634090/drv_tmr_static.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/tmr/src/drv_tmr_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/199634090" 
	@${RM} ${OBJECTDIR}/_ext/199634090/drv_tmr_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/199634090/drv_tmr_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/199634090/drv_tmr_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/199634090/drv_tmr_static.o.d" -o ${OBJECTDIR}/_ext/199634090/drv_tmr_static.o ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/tmr/src/drv_tmr_static.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/199634090/drv_tmr_mapping.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/tmr/src/drv_tmr_mapping.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/199634090" 
	@${RM} ${OBJECTDIR}/_ext/199634090/drv_tmr_mapping.o.d 
	@${RM} ${OBJECTDIR}/_ext/199634090/drv_tmr_mapping.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/199634090/drv_tmr_mapping.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/199634090/drv_tmr_mapping.o.d" -o ${OBJECTDIR}/_ext/199634090/drv_tmr_mapping.o ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/tmr/src/drv_tmr_mapping.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/713288229/drv_gfx_lcc_generic.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/driver/controller/lcc/drv_gfx_lcc_generic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/713288229" 
	@${RM} ${OBJECTDIR}/_ext/713288229/drv_gfx_lcc_generic.o.d 
	@${RM} ${OBJECTDIR}/_ext/713288229/drv_gfx_lcc_generic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/713288229/drv_gfx_lcc_generic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/713288229/drv_gfx_lcc_generic.o.d" -o ${OBJECTDIR}/_ext/713288229/drv_gfx_lcc_generic.o ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/driver/controller/lcc/drv_gfx_lcc_generic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/477038478/gfx_display_def.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/hal/gfx_display_def.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/477038478" 
	@${RM} ${OBJECTDIR}/_ext/477038478/gfx_display_def.o.d 
	@${RM} ${OBJECTDIR}/_ext/477038478/gfx_display_def.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/477038478/gfx_display_def.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/477038478/gfx_display_def.o.d" -o ${OBJECTDIR}/_ext/477038478/gfx_display_def.o ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/hal/gfx_display_def.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/477038478/gfx_driver_def.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/hal/gfx_driver_def.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/477038478" 
	@${RM} ${OBJECTDIR}/_ext/477038478/gfx_driver_def.o.d 
	@${RM} ${OBJECTDIR}/_ext/477038478/gfx_driver_def.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/477038478/gfx_driver_def.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/477038478/gfx_driver_def.o.d" -o ${OBJECTDIR}/_ext/477038478/gfx_driver_def.o ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/hal/gfx_driver_def.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1740298103/libaria_harmony.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/libaria/libaria_harmony.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1740298103" 
	@${RM} ${OBJECTDIR}/_ext/1740298103/libaria_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/1740298103/libaria_harmony.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1740298103/libaria_harmony.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1740298103/libaria_harmony.o.d" -o ${OBJECTDIR}/_ext/1740298103/libaria_harmony.o ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/libaria/libaria_harmony.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1740298103/libaria_init.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/libaria/libaria_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1740298103" 
	@${RM} ${OBJECTDIR}/_ext/1740298103/libaria_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1740298103/libaria_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1740298103/libaria_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1740298103/libaria_init.o.d" -o ${OBJECTDIR}/_ext/1740298103/libaria_init.o ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/libaria/libaria_init.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1740298103/libaria_events.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/libaria/libaria_events.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1740298103" 
	@${RM} ${OBJECTDIR}/_ext/1740298103/libaria_events.o.d 
	@${RM} ${OBJECTDIR}/_ext/1740298103/libaria_events.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1740298103/libaria_events.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1740298103/libaria_events.o.d" -o ${OBJECTDIR}/_ext/1740298103/libaria_events.o ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/libaria/libaria_events.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1740298103/libaria_macros.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/libaria/libaria_macros.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1740298103" 
	@${RM} ${OBJECTDIR}/_ext/1740298103/libaria_macros.o.d 
	@${RM} ${OBJECTDIR}/_ext/1740298103/libaria_macros.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1740298103/libaria_macros.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1740298103/libaria_macros.o.d" -o ${OBJECTDIR}/_ext/1740298103/libaria_macros.o ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/libaria/libaria_macros.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/715821942/gfx_assets.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/gfx_assets.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/715821942" 
	@${RM} ${OBJECTDIR}/_ext/715821942/gfx_assets.o.d 
	@${RM} ${OBJECTDIR}/_ext/715821942/gfx_assets.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/715821942/gfx_assets.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/715821942/gfx_assets.o.d" -o ${OBJECTDIR}/_ext/715821942/gfx_assets.o ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/gfx_assets.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847413222/sys_clk.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/system/clk/src/sys_clk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847413222" 
	@${RM} ${OBJECTDIR}/_ext/1847413222/sys_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847413222/sys_clk.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847413222/sys_clk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847413222/sys_clk.o.d" -o ${OBJECTDIR}/_ext/1847413222/sys_clk.o ../src/system_config/pic32mz_ef_sk_meb2/framework/system/clk/src/sys_clk.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847413222/sys_clk_pic32mz.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/system/clk/src/sys_clk_pic32mz.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847413222" 
	@${RM} ${OBJECTDIR}/_ext/1847413222/sys_clk_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847413222/sys_clk_pic32mz.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847413222/sys_clk_pic32mz.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847413222/sys_clk_pic32mz.o.d" -o ${OBJECTDIR}/_ext/1847413222/sys_clk_pic32mz.o ../src/system_config/pic32mz_ef_sk_meb2/framework/system/clk/src/sys_clk_pic32mz.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/924081491/sys_devcon.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/924081491" 
	@${RM} ${OBJECTDIR}/_ext/924081491/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/924081491/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/924081491/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/924081491/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/924081491/sys_devcon.o ../src/system_config/pic32mz_ef_sk_meb2/framework/system/devcon/src/sys_devcon.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/924081491/sys_devcon_pic32mz.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/system/devcon/src/sys_devcon_pic32mz.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/924081491" 
	@${RM} ${OBJECTDIR}/_ext/924081491/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/924081491/sys_devcon_pic32mz.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/924081491/sys_devcon_pic32mz.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/924081491/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/924081491/sys_devcon_pic32mz.o ../src/system_config/pic32mz_ef_sk_meb2/framework/system/devcon/src/sys_devcon_pic32mz.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/50030870/sys_ports_static.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/50030870" 
	@${RM} ${OBJECTDIR}/_ext/50030870/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/50030870/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/50030870/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/50030870/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/50030870/sys_ports_static.o ../src/system_config/pic32mz_ef_sk_meb2/framework/system/ports/src/sys_ports_static.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1951523377/system_init.o: ../src/system_config/pic32mz_ef_sk_meb2/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1951523377" 
	@${RM} ${OBJECTDIR}/_ext/1951523377/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1951523377/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1951523377/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1951523377/system_init.o.d" -o ${OBJECTDIR}/_ext/1951523377/system_init.o ../src/system_config/pic32mz_ef_sk_meb2/system_init.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1951523377/system_interrupt.o: ../src/system_config/pic32mz_ef_sk_meb2/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1951523377" 
	@${RM} ${OBJECTDIR}/_ext/1951523377/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1951523377/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1951523377/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1951523377/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1951523377/system_interrupt.o ../src/system_config/pic32mz_ef_sk_meb2/system_interrupt.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1951523377/system_exceptions.o: ../src/system_config/pic32mz_ef_sk_meb2/system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1951523377" 
	@${RM} ${OBJECTDIR}/_ext/1951523377/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1951523377/system_exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1951523377/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1951523377/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1951523377/system_exceptions.o ../src/system_config/pic32mz_ef_sk_meb2/system_exceptions.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1951523377/system_tasks.o: ../src/system_config/pic32mz_ef_sk_meb2/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1951523377" 
	@${RM} ${OBJECTDIR}/_ext/1951523377/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1951523377/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1951523377/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1951523377/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1951523377/system_tasks.o ../src/system_config/pic32mz_ef_sk_meb2/system_tasks.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/ov2640.o: ../src/ov2640.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ov2640.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ov2640.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/ov2640.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/ov2640.o.d" -o ${OBJECTDIR}/_ext/1360937237/ov2640.o ../src/ov2640.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/i2c_master_noint.o: ../src/i2c_master_noint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c_master_noint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c_master_noint.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/i2c_master_noint.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/i2c_master_noint.o.d" -o ${OBJECTDIR}/_ext/1360937237/i2c_master_noint.o ../src/i2c_master_noint.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/i2c_bitbanging.o: ../src/i2c_bitbanging.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c_bitbanging.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c_bitbanging.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/i2c_bitbanging.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/i2c_bitbanging.o.d" -o ${OBJECTDIR}/_ext/1360937237/i2c_bitbanging.o ../src/i2c_bitbanging.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx.o: ../../../../../framework/gfx/hal/src/gfx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx.o ../../../../../framework/gfx/hal/src/gfx.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_color.o: ../../../../../framework/gfx/hal/src/gfx_color.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_color.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_color.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_color.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_color.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_color.o ../../../../../framework/gfx/hal/src/gfx_color.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_context.o: ../../../../../framework/gfx/hal/src/gfx_context.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_context.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_context.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_context.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_context.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_context.o ../../../../../framework/gfx/hal/src/gfx_context.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_default_impl.o: ../../../../../framework/gfx/hal/src/gfx_default_impl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_default_impl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_default_impl.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_default_impl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_default_impl.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_default_impl.o ../../../../../framework/gfx/hal/src/gfx_default_impl.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_display.o: ../../../../../framework/gfx/hal/src/gfx_display.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_display.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_display.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_display.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_display.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_display.o ../../../../../framework/gfx/hal/src/gfx_display.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_driver_interface.o: ../../../../../framework/gfx/hal/src/gfx_driver_interface.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_driver_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_driver_interface.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_driver_interface.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_driver_interface.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_driver_interface.o ../../../../../framework/gfx/hal/src/gfx_driver_interface.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_get.o: ../../../../../framework/gfx/hal/src/gfx_get.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_get.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_get.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_get.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_get.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_get.o ../../../../../framework/gfx/hal/src/gfx_get.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_interface.o: ../../../../../framework/gfx/hal/src/gfx_interface.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_interface.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_interface.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_interface.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_interface.o ../../../../../framework/gfx/hal/src/gfx_interface.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_layer.o: ../../../../../framework/gfx/hal/src/gfx_layer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_layer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_layer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_layer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_layer.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_layer.o ../../../../../framework/gfx/hal/src/gfx_layer.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_pixel_buffer.o: ../../../../../framework/gfx/hal/src/gfx_pixel_buffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_pixel_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_pixel_buffer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_pixel_buffer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_pixel_buffer.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_pixel_buffer.o ../../../../../framework/gfx/hal/src/gfx_pixel_buffer.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_rect.o: ../../../../../framework/gfx/hal/src/gfx_rect.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_rect.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_rect.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_rect.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_rect.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_rect.o ../../../../../framework/gfx/hal/src/gfx_rect.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_util.o: ../../../../../framework/gfx/hal/src/gfx_util.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_util.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_util.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_util.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_util.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_util.o ../../../../../framework/gfx/hal/src/gfx_util.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_set.o: ../../../../../framework/gfx/hal/src/gfx_set.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_set.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_set.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_set.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_set.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_set.o ../../../../../framework/gfx/hal/src/gfx_set.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_color_blend.o: ../../../../../framework/gfx/hal/src/gfx_color_blend.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_color_blend.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_color_blend.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_color_blend.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_color_blend.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_color_blend.o ../../../../../framework/gfx/hal/src/gfx_color_blend.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_color_convert.o: ../../../../../framework/gfx/hal/src/gfx_color_convert.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_color_convert.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_color_convert.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_color_convert.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_color_convert.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_color_convert.o ../../../../../framework/gfx/hal/src/gfx_color_convert.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_color_lerp.o: ../../../../../framework/gfx/hal/src/gfx_color_lerp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_color_lerp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_color_lerp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_color_lerp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_color_lerp.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_color_lerp.o ../../../../../framework/gfx/hal/src/gfx_color_lerp.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_color_value.o: ../../../../../framework/gfx/hal/src/gfx_color_value.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_color_value.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_color_value.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_color_value.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_color_value.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_color_value.o ../../../../../framework/gfx/hal/src/gfx_color_value.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_draw_blit.o: ../../../../../framework/gfx/hal/src/gfx_draw_blit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_draw_blit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_draw_blit.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_draw_blit.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_draw_blit.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_draw_blit.o ../../../../../framework/gfx/hal/src/gfx_draw_blit.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_draw_circle.o: ../../../../../framework/gfx/hal/src/gfx_draw_circle.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_draw_circle.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_draw_circle.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_draw_circle.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_draw_circle.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_draw_circle.o ../../../../../framework/gfx/hal/src/gfx_draw_circle.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_draw_line.o: ../../../../../framework/gfx/hal/src/gfx_draw_line.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_draw_line.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_draw_line.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_draw_line.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_draw_line.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_draw_line.o ../../../../../framework/gfx/hal/src/gfx_draw_line.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_draw_pixel.o: ../../../../../framework/gfx/hal/src/gfx_draw_pixel.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_draw_pixel.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_draw_pixel.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_draw_pixel.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_draw_pixel.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_draw_pixel.o ../../../../../framework/gfx/hal/src/gfx_draw_pixel.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_draw_rect.o: ../../../../../framework/gfx/hal/src/gfx_draw_rect.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_draw_rect.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_draw_rect.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_draw_rect.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_draw_rect.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_draw_rect.o ../../../../../framework/gfx/hal/src/gfx_draw_rect.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_math.o: ../../../../../framework/gfx/hal/src/gfx_math.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_math.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_math.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_math.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_math.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_math.o ../../../../../framework/gfx/hal/src/gfx_math.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria.o: ../../../../../framework/gfx/libaria/src/libaria.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria.o ../../../../../framework/gfx/libaria/src/libaria.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_context.o: ../../../../../framework/gfx/libaria/src/libaria_context.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_context.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_context.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_context.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_context.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_context.o ../../../../../framework/gfx/libaria/src/libaria_context.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_context_paint.o: ../../../../../framework/gfx/libaria/src/libaria_context_paint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_context_paint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_context_paint.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_context_paint.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_context_paint.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_context_paint.o ../../../../../framework/gfx/libaria/src/libaria_context_paint.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_draw.o: ../../../../../framework/gfx/libaria/src/libaria_draw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_draw.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_draw.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_draw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_draw.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_draw.o ../../../../../framework/gfx/libaria/src/libaria_draw.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_editwidget.o: ../../../../../framework/gfx/libaria/src/libaria_editwidget.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_editwidget.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_editwidget.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_editwidget.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_editwidget.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_editwidget.o ../../../../../framework/gfx/libaria/src/libaria_editwidget.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_event.o: ../../../../../framework/gfx/libaria/src/libaria_event.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_event.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_event.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_event.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_event.o ../../../../../framework/gfx/libaria/src/libaria_event.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_input.o: ../../../../../framework/gfx/libaria/src/libaria_input.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_input.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_input.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_input.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_input.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_input.o ../../../../../framework/gfx/libaria/src/libaria_input.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_layer.o: ../../../../../framework/gfx/libaria/src/libaria_layer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_layer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_layer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_layer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_layer.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_layer.o ../../../../../framework/gfx/libaria/src/libaria_layer.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_list.o: ../../../../../framework/gfx/libaria/src/libaria_list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_list.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_list.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_list.o ../../../../../framework/gfx/libaria/src/libaria_list.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_scheme.o: ../../../../../framework/gfx/libaria/src/libaria_scheme.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_scheme.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_scheme.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_scheme.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_scheme.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_scheme.o ../../../../../framework/gfx/libaria/src/libaria_scheme.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_screen.o: ../../../../../framework/gfx/libaria/src/libaria_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_screen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_screen.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_screen.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_screen.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_screen.o ../../../../../framework/gfx/libaria/src/libaria_screen.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_string.o: ../../../../../framework/gfx/libaria/src/libaria_string.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_string.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_string.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_string.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_string.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_string.o ../../../../../framework/gfx/libaria/src/libaria_string.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_utils.o: ../../../../../framework/gfx/libaria/src/libaria_utils.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_utils.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_utils.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_utils.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_utils.o ../../../../../framework/gfx/libaria/src/libaria_utils.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget.o: ../../../../../framework/gfx/libaria/src/libaria_widget.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget.o ../../../../../framework/gfx/libaria/src/libaria_widget.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_button.o: ../../../../../framework/gfx/libaria/src/libaria_widget_button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_button.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_button.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_button.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_button.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_button.o ../../../../../framework/gfx/libaria/src/libaria_widget_button.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_button_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_button_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_button_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_button_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_button_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_button_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_button_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_button_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_checkbox.o: ../../../../../framework/gfx/libaria/src/libaria_widget_checkbox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_checkbox.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_checkbox.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_checkbox.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_checkbox.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_checkbox.o ../../../../../framework/gfx/libaria/src/libaria_widget_checkbox.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_checkbox_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_checkbox_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_checkbox_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_checkbox_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_checkbox_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_checkbox_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_checkbox_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_checkbox_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_circle.o: ../../../../../framework/gfx/libaria/src/libaria_widget_circle.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_circle.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_circle.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_circle.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_circle.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_circle.o ../../../../../framework/gfx/libaria/src/libaria_widget_circle.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_circle_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_circle_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_circle_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_circle_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_circle_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_circle_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_circle_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_circle_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_drawsurface.o: ../../../../../framework/gfx/libaria/src/libaria_widget_drawsurface.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_drawsurface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_drawsurface.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_drawsurface.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_drawsurface.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_drawsurface.o ../../../../../framework/gfx/libaria/src/libaria_widget_drawsurface.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_drawsurface_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_drawsurface_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_drawsurface_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_drawsurface_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_drawsurface_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_drawsurface_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_drawsurface_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_drawsurface_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_gradient.o: ../../../../../framework/gfx/libaria/src/libaria_widget_gradient.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_gradient.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_gradient.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_gradient.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_gradient.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_gradient.o ../../../../../framework/gfx/libaria/src/libaria_widget_gradient.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_gradient_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_gradient_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_gradient_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_gradient_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_gradient_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_gradient_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_gradient_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_gradient_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_groupbox.o: ../../../../../framework/gfx/libaria/src/libaria_widget_groupbox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_groupbox.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_groupbox.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_groupbox.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_groupbox.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_groupbox.o ../../../../../framework/gfx/libaria/src/libaria_widget_groupbox.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_groupbox_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_groupbox_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_groupbox_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_groupbox_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_groupbox_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_groupbox_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_groupbox_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_groupbox_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_image.o: ../../../../../framework/gfx/libaria/src/libaria_widget_image.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_image.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_image.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_image.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_image.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_image.o ../../../../../framework/gfx/libaria/src/libaria_widget_image.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_image_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_image_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_image_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_image_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_image_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_image_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_image_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_image_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_imagesequence.o: ../../../../../framework/gfx/libaria/src/libaria_widget_imagesequence.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_imagesequence.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_imagesequence.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_imagesequence.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_imagesequence.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_imagesequence.o ../../../../../framework/gfx/libaria/src/libaria_widget_imagesequence.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_imagesequence_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_imagesequence_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_imagesequence_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_imagesequence_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_imagesequence_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_imagesequence_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_imagesequence_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_imagesequence_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_keypad.o: ../../../../../framework/gfx/libaria/src/libaria_widget_keypad.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_keypad.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_keypad.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_keypad.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_keypad.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_keypad.o ../../../../../framework/gfx/libaria/src/libaria_widget_keypad.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_keypad_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_keypad_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_keypad_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_keypad_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_keypad_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_keypad_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_keypad_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_keypad_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_label.o: ../../../../../framework/gfx/libaria/src/libaria_widget_label.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_label.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_label.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_label.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_label.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_label.o ../../../../../framework/gfx/libaria/src/libaria_widget_label.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_label_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_label_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_label_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_label_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_label_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_label_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_label_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_label_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_line.o: ../../../../../framework/gfx/libaria/src/libaria_widget_line.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_line.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_line.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_line.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_line.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_line.o ../../../../../framework/gfx/libaria/src/libaria_widget_line.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_line_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_line_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_line_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_line_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_line_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_line_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_line_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_line_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_list.o: ../../../../../framework/gfx/libaria/src/libaria_widget_list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_list.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_list.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_list.o ../../../../../framework/gfx/libaria/src/libaria_widget_list.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_list_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_list_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_list_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_list_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_list_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_list_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_list_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_list_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_listwheel.o: ../../../../../framework/gfx/libaria/src/libaria_widget_listwheel.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_listwheel.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_listwheel.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_listwheel.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_listwheel.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_listwheel.o ../../../../../framework/gfx/libaria/src/libaria_widget_listwheel.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_listwheel_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_listwheel_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_listwheel_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_listwheel_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_listwheel_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_listwheel_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_listwheel_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_listwheel_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_progressbar.o: ../../../../../framework/gfx/libaria/src/libaria_widget_progressbar.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_progressbar.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_progressbar.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_progressbar.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_progressbar.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_progressbar.o ../../../../../framework/gfx/libaria/src/libaria_widget_progressbar.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_progressbar_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_progressbar_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_progressbar_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_progressbar_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_progressbar_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_progressbar_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_progressbar_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_progressbar_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_radiobutton.o: ../../../../../framework/gfx/libaria/src/libaria_widget_radiobutton.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_radiobutton.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_radiobutton.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_radiobutton.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_radiobutton.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_radiobutton.o ../../../../../framework/gfx/libaria/src/libaria_widget_radiobutton.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_radiobutton_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_radiobutton_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_radiobutton_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_radiobutton_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_radiobutton_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_radiobutton_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_radiobutton_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_radiobutton_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_radiobutton_group.o: ../../../../../framework/gfx/libaria/src/libaria_radiobutton_group.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_radiobutton_group.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_radiobutton_group.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_radiobutton_group.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_radiobutton_group.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_radiobutton_group.o ../../../../../framework/gfx/libaria/src/libaria_radiobutton_group.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_rectangle.o: ../../../../../framework/gfx/libaria/src/libaria_widget_rectangle.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_rectangle.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_rectangle.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_rectangle.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_rectangle.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_rectangle.o ../../../../../framework/gfx/libaria/src/libaria_widget_rectangle.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_rectangle_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_rectangle_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_rectangle_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_rectangle_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_rectangle_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_rectangle_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_rectangle_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_rectangle_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_scrollbar.o: ../../../../../framework/gfx/libaria/src/libaria_widget_scrollbar.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_scrollbar.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_scrollbar.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_scrollbar.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_scrollbar.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_scrollbar.o ../../../../../framework/gfx/libaria/src/libaria_widget_scrollbar.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_scrollbar_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_scrollbar_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_scrollbar_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_scrollbar_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_scrollbar_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_scrollbar_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_scrollbar_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_scrollbar_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_slider.o: ../../../../../framework/gfx/libaria/src/libaria_widget_slider.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_slider.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_slider.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_slider.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_slider.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_slider.o ../../../../../framework/gfx/libaria/src/libaria_widget_slider.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_slider_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_slider_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_slider_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_slider_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_slider_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_slider_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_slider_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_slider_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_textfield.o: ../../../../../framework/gfx/libaria/src/libaria_widget_textfield.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_textfield.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_textfield.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_textfield.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_textfield.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_textfield.o ../../../../../framework/gfx/libaria/src/libaria_widget_textfield.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_textfield_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_textfield_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_textfield_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_textfield_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_textfield_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_textfield_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_textfield_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_textfield_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_touchtest.o: ../../../../../framework/gfx/libaria/src/libaria_widget_touchtest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_touchtest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_touchtest.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_touchtest.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_touchtest.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_touchtest.o ../../../../../framework/gfx/libaria/src/libaria_widget_touchtest.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_touchtest_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_touchtest_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_touchtest_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_touchtest_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_touchtest_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_touchtest_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_touchtest_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_touchtest_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_window.o: ../../../../../framework/gfx/libaria/src/libaria_widget_window.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_window.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_window.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_window.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_window.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_window.o ../../../../../framework/gfx/libaria/src/libaria_widget_window.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_window_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_window_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_window_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_window_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_window_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_window_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_window_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_window_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1597685232/gfxu_image.o: ../../../../../framework/gfx/utils/src/gfxu_image.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1597685232" 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_image.o.d 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_image.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1597685232/gfxu_image.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1597685232/gfxu_image.o.d" -o ${OBJECTDIR}/_ext/1597685232/gfxu_image.o ../../../../../framework/gfx/utils/src/gfxu_image.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1597685232/gfxu_image_png_external.o: ../../../../../framework/gfx/utils/src/gfxu_image_png_external.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1597685232" 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_image_png_external.o.d 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_image_png_external.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1597685232/gfxu_image_png_external.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1597685232/gfxu_image_png_external.o.d" -o ${OBJECTDIR}/_ext/1597685232/gfxu_image_png_external.o ../../../../../framework/gfx/utils/src/gfxu_image_png_external.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1597685232/gfxu_image_png_internal.o: ../../../../../framework/gfx/utils/src/gfxu_image_png_internal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1597685232" 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_image_png_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_image_png_internal.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1597685232/gfxu_image_png_internal.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1597685232/gfxu_image_png_internal.o.d" -o ${OBJECTDIR}/_ext/1597685232/gfxu_image_png_internal.o ../../../../../framework/gfx/utils/src/gfxu_image_png_internal.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1597685232/gfxu_image_jpg_internal.o: ../../../../../framework/gfx/utils/src/gfxu_image_jpg_internal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1597685232" 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_image_jpg_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_image_jpg_internal.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1597685232/gfxu_image_jpg_internal.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1597685232/gfxu_image_jpg_internal.o.d" -o ${OBJECTDIR}/_ext/1597685232/gfxu_image_jpg_internal.o ../../../../../framework/gfx/utils/src/gfxu_image_jpg_internal.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1597685232/gfxu_image_raw_external.o: ../../../../../framework/gfx/utils/src/gfxu_image_raw_external.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1597685232" 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_image_raw_external.o.d 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_image_raw_external.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1597685232/gfxu_image_raw_external.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1597685232/gfxu_image_raw_external.o.d" -o ${OBJECTDIR}/_ext/1597685232/gfxu_image_raw_external.o ../../../../../framework/gfx/utils/src/gfxu_image_raw_external.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1597685232/gfxu_image_raw_internal.o: ../../../../../framework/gfx/utils/src/gfxu_image_raw_internal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1597685232" 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_image_raw_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_image_raw_internal.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1597685232/gfxu_image_raw_internal.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1597685232/gfxu_image_raw_internal.o.d" -o ${OBJECTDIR}/_ext/1597685232/gfxu_image_raw_internal.o ../../../../../framework/gfx/utils/src/gfxu_image_raw_internal.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1597685232/gfxu_image_rle_external.o: ../../../../../framework/gfx/utils/src/gfxu_image_rle_external.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1597685232" 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_image_rle_external.o.d 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_image_rle_external.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1597685232/gfxu_image_rle_external.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1597685232/gfxu_image_rle_external.o.d" -o ${OBJECTDIR}/_ext/1597685232/gfxu_image_rle_external.o ../../../../../framework/gfx/utils/src/gfxu_image_rle_external.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1597685232/gfxu_image_rle_internal.o: ../../../../../framework/gfx/utils/src/gfxu_image_rle_internal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1597685232" 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_image_rle_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_image_rle_internal.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1597685232/gfxu_image_rle_internal.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1597685232/gfxu_image_rle_internal.o.d" -o ${OBJECTDIR}/_ext/1597685232/gfxu_image_rle_internal.o ../../../../../framework/gfx/utils/src/gfxu_image_rle_internal.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1597685232/gfxu_image_utils.o: ../../../../../framework/gfx/utils/src/gfxu_image_utils.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1597685232" 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_image_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_image_utils.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1597685232/gfxu_image_utils.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1597685232/gfxu_image_utils.o.d" -o ${OBJECTDIR}/_ext/1597685232/gfxu_image_utils.o ../../../../../framework/gfx/utils/src/gfxu_image_utils.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1597685232/gfxu_palette.o: ../../../../../framework/gfx/utils/src/gfxu_palette.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1597685232" 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_palette.o.d 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_palette.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1597685232/gfxu_palette.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1597685232/gfxu_palette.o.d" -o ${OBJECTDIR}/_ext/1597685232/gfxu_palette.o ../../../../../framework/gfx/utils/src/gfxu_palette.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1597685232/gfxu_string.o: ../../../../../framework/gfx/utils/src/gfxu_string.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1597685232" 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_string.o.d 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_string.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1597685232/gfxu_string.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1597685232/gfxu_string.o.d" -o ${OBJECTDIR}/_ext/1597685232/gfxu_string.o ../../../../../framework/gfx/utils/src/gfxu_string.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1597685232/gfxu_string_external.o: ../../../../../framework/gfx/utils/src/gfxu_string_external.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1597685232" 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_string_external.o.d 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_string_external.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1597685232/gfxu_string_external.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1597685232/gfxu_string_external.o.d" -o ${OBJECTDIR}/_ext/1597685232/gfxu_string_external.o ../../../../../framework/gfx/utils/src/gfxu_string_external.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1597685232/gfxu_string_internal.o: ../../../../../framework/gfx/utils/src/gfxu_string_internal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1597685232" 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_string_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_string_internal.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1597685232/gfxu_string_internal.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1597685232/gfxu_string_internal.o.d" -o ${OBJECTDIR}/_ext/1597685232/gfxu_string_internal.o ../../../../../framework/gfx/utils/src/gfxu_string_internal.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1597685232/gfxu_string_query.o: ../../../../../framework/gfx/utils/src/gfxu_string_query.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1597685232" 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_string_query.o.d 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_string_query.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1597685232/gfxu_string_query.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1597685232/gfxu_string_query.o.d" -o ${OBJECTDIR}/_ext/1597685232/gfxu_string_query.o ../../../../../framework/gfx/utils/src/gfxu_string_query.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1597685232/gfxu_string_utils.o: ../../../../../framework/gfx/utils/src/gfxu_string_utils.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1597685232" 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_string_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_string_utils.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1597685232/gfxu_string_utils.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1597685232/gfxu_string_utils.o.d" -o ${OBJECTDIR}/_ext/1597685232/gfxu_string_utils.o ../../../../../framework/gfx/utils/src/gfxu_string_utils.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/853959373/sys_dma.o: ../../../../../framework/system/dma/src/sys_dma.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/853959373" 
	@${RM} ${OBJECTDIR}/_ext/853959373/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/853959373/sys_dma.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/853959373/sys_dma.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/853959373/sys_dma.o.d" -o ${OBJECTDIR}/_ext/853959373/sys_dma.o ../../../../../framework/system/dma/src/sys_dma.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o: ../../../../../framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1042686532" 
	@${RM} ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o ../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/426253641/jidctint.o: ../../../../../third_party/decoder/jidctint/src/jidctint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/426253641" 
	@${RM} ${OBJECTDIR}/_ext/426253641/jidctint.o.d 
	@${RM} ${OBJECTDIR}/_ext/426253641/jidctint.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/426253641/jidctint.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/426253641/jidctint.o.d" -o ${OBJECTDIR}/_ext/426253641/jidctint.o ../../../../../third_party/decoder/jidctint/src/jidctint.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/493934858/lodepng.o: ../../../../../third_party/decoder/lodepng/lodepng.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/493934858" 
	@${RM} ${OBJECTDIR}/_ext/493934858/lodepng.o.d 
	@${RM} ${OBJECTDIR}/_ext/493934858/lodepng.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/493934858/lodepng.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_REAL_ICE=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/493934858/lodepng.o.d" -o ${OBJECTDIR}/_ext/493934858/lodepng.o ../../../../../third_party/decoder/lodepng/lodepng.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/_ext/1465531745/bsp.o: ../src/system_config/pic32mz_ef_sk_meb2/bsp/bsp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1465531745" 
	@${RM} ${OBJECTDIR}/_ext/1465531745/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1465531745/bsp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1465531745/bsp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1465531745/bsp.o.d" -o ${OBJECTDIR}/_ext/1465531745/bsp.o ../src/system_config/pic32mz_ef_sk_meb2/bsp/bsp.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1219754583/drv_i2c_static_buffer_model.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/i2c/src/drv_i2c_static_buffer_model.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1219754583" 
	@${RM} ${OBJECTDIR}/_ext/1219754583/drv_i2c_static_buffer_model.o.d 
	@${RM} ${OBJECTDIR}/_ext/1219754583/drv_i2c_static_buffer_model.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1219754583/drv_i2c_static_buffer_model.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1219754583/drv_i2c_static_buffer_model.o.d" -o ${OBJECTDIR}/_ext/1219754583/drv_i2c_static_buffer_model.o ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/i2c/src/drv_i2c_static_buffer_model.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1219754583/drv_i2c_mapping.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/i2c/src/drv_i2c_mapping.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1219754583" 
	@${RM} ${OBJECTDIR}/_ext/1219754583/drv_i2c_mapping.o.d 
	@${RM} ${OBJECTDIR}/_ext/1219754583/drv_i2c_mapping.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1219754583/drv_i2c_mapping.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1219754583/drv_i2c_mapping.o.d" -o ${OBJECTDIR}/_ext/1219754583/drv_i2c_mapping.o ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/i2c/src/drv_i2c_mapping.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/199634090/drv_tmr_static.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/tmr/src/drv_tmr_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/199634090" 
	@${RM} ${OBJECTDIR}/_ext/199634090/drv_tmr_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/199634090/drv_tmr_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/199634090/drv_tmr_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/199634090/drv_tmr_static.o.d" -o ${OBJECTDIR}/_ext/199634090/drv_tmr_static.o ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/tmr/src/drv_tmr_static.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/199634090/drv_tmr_mapping.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/tmr/src/drv_tmr_mapping.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/199634090" 
	@${RM} ${OBJECTDIR}/_ext/199634090/drv_tmr_mapping.o.d 
	@${RM} ${OBJECTDIR}/_ext/199634090/drv_tmr_mapping.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/199634090/drv_tmr_mapping.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/199634090/drv_tmr_mapping.o.d" -o ${OBJECTDIR}/_ext/199634090/drv_tmr_mapping.o ../src/system_config/pic32mz_ef_sk_meb2/framework/driver/tmr/src/drv_tmr_mapping.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/713288229/drv_gfx_lcc_generic.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/driver/controller/lcc/drv_gfx_lcc_generic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/713288229" 
	@${RM} ${OBJECTDIR}/_ext/713288229/drv_gfx_lcc_generic.o.d 
	@${RM} ${OBJECTDIR}/_ext/713288229/drv_gfx_lcc_generic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/713288229/drv_gfx_lcc_generic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/713288229/drv_gfx_lcc_generic.o.d" -o ${OBJECTDIR}/_ext/713288229/drv_gfx_lcc_generic.o ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/driver/controller/lcc/drv_gfx_lcc_generic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/477038478/gfx_display_def.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/hal/gfx_display_def.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/477038478" 
	@${RM} ${OBJECTDIR}/_ext/477038478/gfx_display_def.o.d 
	@${RM} ${OBJECTDIR}/_ext/477038478/gfx_display_def.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/477038478/gfx_display_def.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/477038478/gfx_display_def.o.d" -o ${OBJECTDIR}/_ext/477038478/gfx_display_def.o ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/hal/gfx_display_def.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/477038478/gfx_driver_def.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/hal/gfx_driver_def.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/477038478" 
	@${RM} ${OBJECTDIR}/_ext/477038478/gfx_driver_def.o.d 
	@${RM} ${OBJECTDIR}/_ext/477038478/gfx_driver_def.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/477038478/gfx_driver_def.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/477038478/gfx_driver_def.o.d" -o ${OBJECTDIR}/_ext/477038478/gfx_driver_def.o ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/hal/gfx_driver_def.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1740298103/libaria_harmony.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/libaria/libaria_harmony.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1740298103" 
	@${RM} ${OBJECTDIR}/_ext/1740298103/libaria_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/1740298103/libaria_harmony.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1740298103/libaria_harmony.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1740298103/libaria_harmony.o.d" -o ${OBJECTDIR}/_ext/1740298103/libaria_harmony.o ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/libaria/libaria_harmony.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1740298103/libaria_init.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/libaria/libaria_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1740298103" 
	@${RM} ${OBJECTDIR}/_ext/1740298103/libaria_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1740298103/libaria_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1740298103/libaria_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1740298103/libaria_init.o.d" -o ${OBJECTDIR}/_ext/1740298103/libaria_init.o ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/libaria/libaria_init.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1740298103/libaria_events.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/libaria/libaria_events.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1740298103" 
	@${RM} ${OBJECTDIR}/_ext/1740298103/libaria_events.o.d 
	@${RM} ${OBJECTDIR}/_ext/1740298103/libaria_events.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1740298103/libaria_events.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1740298103/libaria_events.o.d" -o ${OBJECTDIR}/_ext/1740298103/libaria_events.o ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/libaria/libaria_events.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1740298103/libaria_macros.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/libaria/libaria_macros.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1740298103" 
	@${RM} ${OBJECTDIR}/_ext/1740298103/libaria_macros.o.d 
	@${RM} ${OBJECTDIR}/_ext/1740298103/libaria_macros.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1740298103/libaria_macros.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1740298103/libaria_macros.o.d" -o ${OBJECTDIR}/_ext/1740298103/libaria_macros.o ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/libaria/libaria_macros.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/715821942/gfx_assets.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/gfx_assets.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/715821942" 
	@${RM} ${OBJECTDIR}/_ext/715821942/gfx_assets.o.d 
	@${RM} ${OBJECTDIR}/_ext/715821942/gfx_assets.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/715821942/gfx_assets.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/715821942/gfx_assets.o.d" -o ${OBJECTDIR}/_ext/715821942/gfx_assets.o ../src/system_config/pic32mz_ef_sk_meb2/framework/gfx/gfx_assets.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847413222/sys_clk.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/system/clk/src/sys_clk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847413222" 
	@${RM} ${OBJECTDIR}/_ext/1847413222/sys_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847413222/sys_clk.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847413222/sys_clk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847413222/sys_clk.o.d" -o ${OBJECTDIR}/_ext/1847413222/sys_clk.o ../src/system_config/pic32mz_ef_sk_meb2/framework/system/clk/src/sys_clk.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847413222/sys_clk_pic32mz.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/system/clk/src/sys_clk_pic32mz.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847413222" 
	@${RM} ${OBJECTDIR}/_ext/1847413222/sys_clk_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847413222/sys_clk_pic32mz.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847413222/sys_clk_pic32mz.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847413222/sys_clk_pic32mz.o.d" -o ${OBJECTDIR}/_ext/1847413222/sys_clk_pic32mz.o ../src/system_config/pic32mz_ef_sk_meb2/framework/system/clk/src/sys_clk_pic32mz.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/924081491/sys_devcon.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/924081491" 
	@${RM} ${OBJECTDIR}/_ext/924081491/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/924081491/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/924081491/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/924081491/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/924081491/sys_devcon.o ../src/system_config/pic32mz_ef_sk_meb2/framework/system/devcon/src/sys_devcon.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/924081491/sys_devcon_pic32mz.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/system/devcon/src/sys_devcon_pic32mz.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/924081491" 
	@${RM} ${OBJECTDIR}/_ext/924081491/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/924081491/sys_devcon_pic32mz.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/924081491/sys_devcon_pic32mz.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/924081491/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/924081491/sys_devcon_pic32mz.o ../src/system_config/pic32mz_ef_sk_meb2/framework/system/devcon/src/sys_devcon_pic32mz.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/50030870/sys_ports_static.o: ../src/system_config/pic32mz_ef_sk_meb2/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/50030870" 
	@${RM} ${OBJECTDIR}/_ext/50030870/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/50030870/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/50030870/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/50030870/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/50030870/sys_ports_static.o ../src/system_config/pic32mz_ef_sk_meb2/framework/system/ports/src/sys_ports_static.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1951523377/system_init.o: ../src/system_config/pic32mz_ef_sk_meb2/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1951523377" 
	@${RM} ${OBJECTDIR}/_ext/1951523377/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1951523377/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1951523377/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1951523377/system_init.o.d" -o ${OBJECTDIR}/_ext/1951523377/system_init.o ../src/system_config/pic32mz_ef_sk_meb2/system_init.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1951523377/system_interrupt.o: ../src/system_config/pic32mz_ef_sk_meb2/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1951523377" 
	@${RM} ${OBJECTDIR}/_ext/1951523377/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1951523377/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1951523377/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1951523377/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1951523377/system_interrupt.o ../src/system_config/pic32mz_ef_sk_meb2/system_interrupt.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1951523377/system_exceptions.o: ../src/system_config/pic32mz_ef_sk_meb2/system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1951523377" 
	@${RM} ${OBJECTDIR}/_ext/1951523377/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1951523377/system_exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1951523377/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1951523377/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1951523377/system_exceptions.o ../src/system_config/pic32mz_ef_sk_meb2/system_exceptions.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1951523377/system_tasks.o: ../src/system_config/pic32mz_ef_sk_meb2/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1951523377" 
	@${RM} ${OBJECTDIR}/_ext/1951523377/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1951523377/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1951523377/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1951523377/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1951523377/system_tasks.o ../src/system_config/pic32mz_ef_sk_meb2/system_tasks.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/ov2640.o: ../src/ov2640.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ov2640.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ov2640.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/ov2640.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/ov2640.o.d" -o ${OBJECTDIR}/_ext/1360937237/ov2640.o ../src/ov2640.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/i2c_master_noint.o: ../src/i2c_master_noint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c_master_noint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c_master_noint.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/i2c_master_noint.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/i2c_master_noint.o.d" -o ${OBJECTDIR}/_ext/1360937237/i2c_master_noint.o ../src/i2c_master_noint.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/i2c_bitbanging.o: ../src/i2c_bitbanging.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c_bitbanging.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/i2c_bitbanging.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/i2c_bitbanging.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/i2c_bitbanging.o.d" -o ${OBJECTDIR}/_ext/1360937237/i2c_bitbanging.o ../src/i2c_bitbanging.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx.o: ../../../../../framework/gfx/hal/src/gfx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx.o ../../../../../framework/gfx/hal/src/gfx.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_color.o: ../../../../../framework/gfx/hal/src/gfx_color.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_color.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_color.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_color.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_color.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_color.o ../../../../../framework/gfx/hal/src/gfx_color.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_context.o: ../../../../../framework/gfx/hal/src/gfx_context.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_context.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_context.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_context.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_context.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_context.o ../../../../../framework/gfx/hal/src/gfx_context.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_default_impl.o: ../../../../../framework/gfx/hal/src/gfx_default_impl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_default_impl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_default_impl.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_default_impl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_default_impl.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_default_impl.o ../../../../../framework/gfx/hal/src/gfx_default_impl.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_display.o: ../../../../../framework/gfx/hal/src/gfx_display.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_display.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_display.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_display.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_display.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_display.o ../../../../../framework/gfx/hal/src/gfx_display.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_driver_interface.o: ../../../../../framework/gfx/hal/src/gfx_driver_interface.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_driver_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_driver_interface.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_driver_interface.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_driver_interface.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_driver_interface.o ../../../../../framework/gfx/hal/src/gfx_driver_interface.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_get.o: ../../../../../framework/gfx/hal/src/gfx_get.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_get.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_get.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_get.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_get.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_get.o ../../../../../framework/gfx/hal/src/gfx_get.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_interface.o: ../../../../../framework/gfx/hal/src/gfx_interface.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_interface.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_interface.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_interface.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_interface.o ../../../../../framework/gfx/hal/src/gfx_interface.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_layer.o: ../../../../../framework/gfx/hal/src/gfx_layer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_layer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_layer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_layer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_layer.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_layer.o ../../../../../framework/gfx/hal/src/gfx_layer.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_pixel_buffer.o: ../../../../../framework/gfx/hal/src/gfx_pixel_buffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_pixel_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_pixel_buffer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_pixel_buffer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_pixel_buffer.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_pixel_buffer.o ../../../../../framework/gfx/hal/src/gfx_pixel_buffer.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_rect.o: ../../../../../framework/gfx/hal/src/gfx_rect.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_rect.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_rect.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_rect.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_rect.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_rect.o ../../../../../framework/gfx/hal/src/gfx_rect.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_util.o: ../../../../../framework/gfx/hal/src/gfx_util.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_util.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_util.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_util.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_util.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_util.o ../../../../../framework/gfx/hal/src/gfx_util.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_set.o: ../../../../../framework/gfx/hal/src/gfx_set.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_set.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_set.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_set.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_set.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_set.o ../../../../../framework/gfx/hal/src/gfx_set.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_color_blend.o: ../../../../../framework/gfx/hal/src/gfx_color_blend.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_color_blend.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_color_blend.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_color_blend.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_color_blend.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_color_blend.o ../../../../../framework/gfx/hal/src/gfx_color_blend.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_color_convert.o: ../../../../../framework/gfx/hal/src/gfx_color_convert.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_color_convert.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_color_convert.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_color_convert.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_color_convert.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_color_convert.o ../../../../../framework/gfx/hal/src/gfx_color_convert.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_color_lerp.o: ../../../../../framework/gfx/hal/src/gfx_color_lerp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_color_lerp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_color_lerp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_color_lerp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_color_lerp.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_color_lerp.o ../../../../../framework/gfx/hal/src/gfx_color_lerp.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_color_value.o: ../../../../../framework/gfx/hal/src/gfx_color_value.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_color_value.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_color_value.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_color_value.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_color_value.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_color_value.o ../../../../../framework/gfx/hal/src/gfx_color_value.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_draw_blit.o: ../../../../../framework/gfx/hal/src/gfx_draw_blit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_draw_blit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_draw_blit.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_draw_blit.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_draw_blit.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_draw_blit.o ../../../../../framework/gfx/hal/src/gfx_draw_blit.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_draw_circle.o: ../../../../../framework/gfx/hal/src/gfx_draw_circle.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_draw_circle.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_draw_circle.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_draw_circle.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_draw_circle.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_draw_circle.o ../../../../../framework/gfx/hal/src/gfx_draw_circle.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_draw_line.o: ../../../../../framework/gfx/hal/src/gfx_draw_line.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_draw_line.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_draw_line.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_draw_line.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_draw_line.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_draw_line.o ../../../../../framework/gfx/hal/src/gfx_draw_line.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_draw_pixel.o: ../../../../../framework/gfx/hal/src/gfx_draw_pixel.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_draw_pixel.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_draw_pixel.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_draw_pixel.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_draw_pixel.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_draw_pixel.o ../../../../../framework/gfx/hal/src/gfx_draw_pixel.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_draw_rect.o: ../../../../../framework/gfx/hal/src/gfx_draw_rect.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_draw_rect.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_draw_rect.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_draw_rect.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_draw_rect.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_draw_rect.o ../../../../../framework/gfx/hal/src/gfx_draw_rect.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1847583374/gfx_math.o: ../../../../../framework/gfx/hal/src/gfx_math.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1847583374" 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_math.o.d 
	@${RM} ${OBJECTDIR}/_ext/1847583374/gfx_math.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1847583374/gfx_math.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1847583374/gfx_math.o.d" -o ${OBJECTDIR}/_ext/1847583374/gfx_math.o ../../../../../framework/gfx/hal/src/gfx_math.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria.o: ../../../../../framework/gfx/libaria/src/libaria.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria.o ../../../../../framework/gfx/libaria/src/libaria.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_context.o: ../../../../../framework/gfx/libaria/src/libaria_context.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_context.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_context.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_context.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_context.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_context.o ../../../../../framework/gfx/libaria/src/libaria_context.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_context_paint.o: ../../../../../framework/gfx/libaria/src/libaria_context_paint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_context_paint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_context_paint.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_context_paint.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_context_paint.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_context_paint.o ../../../../../framework/gfx/libaria/src/libaria_context_paint.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_draw.o: ../../../../../framework/gfx/libaria/src/libaria_draw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_draw.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_draw.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_draw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_draw.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_draw.o ../../../../../framework/gfx/libaria/src/libaria_draw.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_editwidget.o: ../../../../../framework/gfx/libaria/src/libaria_editwidget.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_editwidget.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_editwidget.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_editwidget.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_editwidget.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_editwidget.o ../../../../../framework/gfx/libaria/src/libaria_editwidget.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_event.o: ../../../../../framework/gfx/libaria/src/libaria_event.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_event.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_event.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_event.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_event.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_event.o ../../../../../framework/gfx/libaria/src/libaria_event.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_input.o: ../../../../../framework/gfx/libaria/src/libaria_input.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_input.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_input.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_input.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_input.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_input.o ../../../../../framework/gfx/libaria/src/libaria_input.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_layer.o: ../../../../../framework/gfx/libaria/src/libaria_layer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_layer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_layer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_layer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_layer.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_layer.o ../../../../../framework/gfx/libaria/src/libaria_layer.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_list.o: ../../../../../framework/gfx/libaria/src/libaria_list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_list.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_list.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_list.o ../../../../../framework/gfx/libaria/src/libaria_list.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_scheme.o: ../../../../../framework/gfx/libaria/src/libaria_scheme.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_scheme.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_scheme.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_scheme.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_scheme.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_scheme.o ../../../../../framework/gfx/libaria/src/libaria_scheme.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_screen.o: ../../../../../framework/gfx/libaria/src/libaria_screen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_screen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_screen.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_screen.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_screen.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_screen.o ../../../../../framework/gfx/libaria/src/libaria_screen.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_string.o: ../../../../../framework/gfx/libaria/src/libaria_string.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_string.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_string.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_string.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_string.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_string.o ../../../../../framework/gfx/libaria/src/libaria_string.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_utils.o: ../../../../../framework/gfx/libaria/src/libaria_utils.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_utils.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_utils.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_utils.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_utils.o ../../../../../framework/gfx/libaria/src/libaria_utils.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget.o: ../../../../../framework/gfx/libaria/src/libaria_widget.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget.o ../../../../../framework/gfx/libaria/src/libaria_widget.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_button.o: ../../../../../framework/gfx/libaria/src/libaria_widget_button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_button.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_button.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_button.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_button.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_button.o ../../../../../framework/gfx/libaria/src/libaria_widget_button.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_button_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_button_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_button_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_button_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_button_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_button_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_button_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_button_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_checkbox.o: ../../../../../framework/gfx/libaria/src/libaria_widget_checkbox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_checkbox.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_checkbox.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_checkbox.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_checkbox.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_checkbox.o ../../../../../framework/gfx/libaria/src/libaria_widget_checkbox.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_checkbox_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_checkbox_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_checkbox_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_checkbox_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_checkbox_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_checkbox_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_checkbox_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_checkbox_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_circle.o: ../../../../../framework/gfx/libaria/src/libaria_widget_circle.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_circle.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_circle.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_circle.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_circle.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_circle.o ../../../../../framework/gfx/libaria/src/libaria_widget_circle.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_circle_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_circle_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_circle_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_circle_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_circle_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_circle_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_circle_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_circle_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_drawsurface.o: ../../../../../framework/gfx/libaria/src/libaria_widget_drawsurface.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_drawsurface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_drawsurface.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_drawsurface.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_drawsurface.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_drawsurface.o ../../../../../framework/gfx/libaria/src/libaria_widget_drawsurface.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_drawsurface_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_drawsurface_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_drawsurface_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_drawsurface_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_drawsurface_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_drawsurface_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_drawsurface_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_drawsurface_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_gradient.o: ../../../../../framework/gfx/libaria/src/libaria_widget_gradient.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_gradient.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_gradient.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_gradient.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_gradient.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_gradient.o ../../../../../framework/gfx/libaria/src/libaria_widget_gradient.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_gradient_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_gradient_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_gradient_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_gradient_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_gradient_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_gradient_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_gradient_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_gradient_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_groupbox.o: ../../../../../framework/gfx/libaria/src/libaria_widget_groupbox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_groupbox.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_groupbox.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_groupbox.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_groupbox.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_groupbox.o ../../../../../framework/gfx/libaria/src/libaria_widget_groupbox.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_groupbox_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_groupbox_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_groupbox_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_groupbox_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_groupbox_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_groupbox_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_groupbox_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_groupbox_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_image.o: ../../../../../framework/gfx/libaria/src/libaria_widget_image.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_image.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_image.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_image.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_image.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_image.o ../../../../../framework/gfx/libaria/src/libaria_widget_image.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_image_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_image_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_image_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_image_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_image_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_image_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_image_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_image_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_imagesequence.o: ../../../../../framework/gfx/libaria/src/libaria_widget_imagesequence.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_imagesequence.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_imagesequence.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_imagesequence.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_imagesequence.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_imagesequence.o ../../../../../framework/gfx/libaria/src/libaria_widget_imagesequence.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_imagesequence_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_imagesequence_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_imagesequence_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_imagesequence_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_imagesequence_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_imagesequence_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_imagesequence_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_imagesequence_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_keypad.o: ../../../../../framework/gfx/libaria/src/libaria_widget_keypad.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_keypad.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_keypad.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_keypad.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_keypad.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_keypad.o ../../../../../framework/gfx/libaria/src/libaria_widget_keypad.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_keypad_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_keypad_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_keypad_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_keypad_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_keypad_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_keypad_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_keypad_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_keypad_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_label.o: ../../../../../framework/gfx/libaria/src/libaria_widget_label.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_label.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_label.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_label.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_label.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_label.o ../../../../../framework/gfx/libaria/src/libaria_widget_label.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_label_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_label_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_label_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_label_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_label_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_label_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_label_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_label_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_line.o: ../../../../../framework/gfx/libaria/src/libaria_widget_line.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_line.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_line.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_line.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_line.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_line.o ../../../../../framework/gfx/libaria/src/libaria_widget_line.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_line_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_line_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_line_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_line_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_line_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_line_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_line_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_line_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_list.o: ../../../../../framework/gfx/libaria/src/libaria_widget_list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_list.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_list.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_list.o ../../../../../framework/gfx/libaria/src/libaria_widget_list.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_list_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_list_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_list_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_list_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_list_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_list_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_list_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_list_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_listwheel.o: ../../../../../framework/gfx/libaria/src/libaria_widget_listwheel.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_listwheel.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_listwheel.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_listwheel.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_listwheel.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_listwheel.o ../../../../../framework/gfx/libaria/src/libaria_widget_listwheel.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_listwheel_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_listwheel_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_listwheel_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_listwheel_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_listwheel_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_listwheel_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_listwheel_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_listwheel_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_progressbar.o: ../../../../../framework/gfx/libaria/src/libaria_widget_progressbar.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_progressbar.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_progressbar.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_progressbar.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_progressbar.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_progressbar.o ../../../../../framework/gfx/libaria/src/libaria_widget_progressbar.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_progressbar_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_progressbar_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_progressbar_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_progressbar_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_progressbar_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_progressbar_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_progressbar_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_progressbar_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_radiobutton.o: ../../../../../framework/gfx/libaria/src/libaria_widget_radiobutton.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_radiobutton.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_radiobutton.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_radiobutton.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_radiobutton.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_radiobutton.o ../../../../../framework/gfx/libaria/src/libaria_widget_radiobutton.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_radiobutton_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_radiobutton_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_radiobutton_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_radiobutton_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_radiobutton_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_radiobutton_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_radiobutton_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_radiobutton_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_radiobutton_group.o: ../../../../../framework/gfx/libaria/src/libaria_radiobutton_group.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_radiobutton_group.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_radiobutton_group.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_radiobutton_group.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_radiobutton_group.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_radiobutton_group.o ../../../../../framework/gfx/libaria/src/libaria_radiobutton_group.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_rectangle.o: ../../../../../framework/gfx/libaria/src/libaria_widget_rectangle.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_rectangle.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_rectangle.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_rectangle.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_rectangle.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_rectangle.o ../../../../../framework/gfx/libaria/src/libaria_widget_rectangle.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_rectangle_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_rectangle_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_rectangle_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_rectangle_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_rectangle_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_rectangle_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_rectangle_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_rectangle_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_scrollbar.o: ../../../../../framework/gfx/libaria/src/libaria_widget_scrollbar.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_scrollbar.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_scrollbar.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_scrollbar.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_scrollbar.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_scrollbar.o ../../../../../framework/gfx/libaria/src/libaria_widget_scrollbar.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_scrollbar_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_scrollbar_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_scrollbar_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_scrollbar_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_scrollbar_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_scrollbar_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_scrollbar_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_scrollbar_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_slider.o: ../../../../../framework/gfx/libaria/src/libaria_widget_slider.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_slider.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_slider.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_slider.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_slider.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_slider.o ../../../../../framework/gfx/libaria/src/libaria_widget_slider.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_slider_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_slider_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_slider_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_slider_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_slider_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_slider_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_slider_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_slider_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_textfield.o: ../../../../../framework/gfx/libaria/src/libaria_widget_textfield.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_textfield.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_textfield.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_textfield.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_textfield.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_textfield.o ../../../../../framework/gfx/libaria/src/libaria_widget_textfield.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_textfield_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_textfield_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_textfield_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_textfield_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_textfield_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_textfield_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_textfield_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_textfield_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_touchtest.o: ../../../../../framework/gfx/libaria/src/libaria_widget_touchtest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_touchtest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_touchtest.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_touchtest.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_touchtest.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_touchtest.o ../../../../../framework/gfx/libaria/src/libaria_widget_touchtest.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_touchtest_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_touchtest_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_touchtest_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_touchtest_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_touchtest_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_touchtest_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_touchtest_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_touchtest_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_window.o: ../../../../../framework/gfx/libaria/src/libaria_widget_window.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_window.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_window.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_window.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_window.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_window.o ../../../../../framework/gfx/libaria/src/libaria_widget_window.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1907747181/libaria_widget_window_skin_classic.o: ../../../../../framework/gfx/libaria/src/libaria_widget_window_skin_classic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1907747181" 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_window_skin_classic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1907747181/libaria_widget_window_skin_classic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1907747181/libaria_widget_window_skin_classic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1907747181/libaria_widget_window_skin_classic.o.d" -o ${OBJECTDIR}/_ext/1907747181/libaria_widget_window_skin_classic.o ../../../../../framework/gfx/libaria/src/libaria_widget_window_skin_classic.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1597685232/gfxu_image.o: ../../../../../framework/gfx/utils/src/gfxu_image.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1597685232" 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_image.o.d 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_image.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1597685232/gfxu_image.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1597685232/gfxu_image.o.d" -o ${OBJECTDIR}/_ext/1597685232/gfxu_image.o ../../../../../framework/gfx/utils/src/gfxu_image.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1597685232/gfxu_image_png_external.o: ../../../../../framework/gfx/utils/src/gfxu_image_png_external.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1597685232" 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_image_png_external.o.d 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_image_png_external.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1597685232/gfxu_image_png_external.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1597685232/gfxu_image_png_external.o.d" -o ${OBJECTDIR}/_ext/1597685232/gfxu_image_png_external.o ../../../../../framework/gfx/utils/src/gfxu_image_png_external.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1597685232/gfxu_image_png_internal.o: ../../../../../framework/gfx/utils/src/gfxu_image_png_internal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1597685232" 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_image_png_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_image_png_internal.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1597685232/gfxu_image_png_internal.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1597685232/gfxu_image_png_internal.o.d" -o ${OBJECTDIR}/_ext/1597685232/gfxu_image_png_internal.o ../../../../../framework/gfx/utils/src/gfxu_image_png_internal.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1597685232/gfxu_image_jpg_internal.o: ../../../../../framework/gfx/utils/src/gfxu_image_jpg_internal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1597685232" 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_image_jpg_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_image_jpg_internal.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1597685232/gfxu_image_jpg_internal.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1597685232/gfxu_image_jpg_internal.o.d" -o ${OBJECTDIR}/_ext/1597685232/gfxu_image_jpg_internal.o ../../../../../framework/gfx/utils/src/gfxu_image_jpg_internal.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1597685232/gfxu_image_raw_external.o: ../../../../../framework/gfx/utils/src/gfxu_image_raw_external.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1597685232" 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_image_raw_external.o.d 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_image_raw_external.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1597685232/gfxu_image_raw_external.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1597685232/gfxu_image_raw_external.o.d" -o ${OBJECTDIR}/_ext/1597685232/gfxu_image_raw_external.o ../../../../../framework/gfx/utils/src/gfxu_image_raw_external.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1597685232/gfxu_image_raw_internal.o: ../../../../../framework/gfx/utils/src/gfxu_image_raw_internal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1597685232" 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_image_raw_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_image_raw_internal.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1597685232/gfxu_image_raw_internal.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1597685232/gfxu_image_raw_internal.o.d" -o ${OBJECTDIR}/_ext/1597685232/gfxu_image_raw_internal.o ../../../../../framework/gfx/utils/src/gfxu_image_raw_internal.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1597685232/gfxu_image_rle_external.o: ../../../../../framework/gfx/utils/src/gfxu_image_rle_external.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1597685232" 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_image_rle_external.o.d 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_image_rle_external.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1597685232/gfxu_image_rle_external.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1597685232/gfxu_image_rle_external.o.d" -o ${OBJECTDIR}/_ext/1597685232/gfxu_image_rle_external.o ../../../../../framework/gfx/utils/src/gfxu_image_rle_external.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1597685232/gfxu_image_rle_internal.o: ../../../../../framework/gfx/utils/src/gfxu_image_rle_internal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1597685232" 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_image_rle_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_image_rle_internal.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1597685232/gfxu_image_rle_internal.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1597685232/gfxu_image_rle_internal.o.d" -o ${OBJECTDIR}/_ext/1597685232/gfxu_image_rle_internal.o ../../../../../framework/gfx/utils/src/gfxu_image_rle_internal.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1597685232/gfxu_image_utils.o: ../../../../../framework/gfx/utils/src/gfxu_image_utils.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1597685232" 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_image_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_image_utils.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1597685232/gfxu_image_utils.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1597685232/gfxu_image_utils.o.d" -o ${OBJECTDIR}/_ext/1597685232/gfxu_image_utils.o ../../../../../framework/gfx/utils/src/gfxu_image_utils.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1597685232/gfxu_palette.o: ../../../../../framework/gfx/utils/src/gfxu_palette.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1597685232" 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_palette.o.d 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_palette.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1597685232/gfxu_palette.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1597685232/gfxu_palette.o.d" -o ${OBJECTDIR}/_ext/1597685232/gfxu_palette.o ../../../../../framework/gfx/utils/src/gfxu_palette.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1597685232/gfxu_string.o: ../../../../../framework/gfx/utils/src/gfxu_string.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1597685232" 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_string.o.d 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_string.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1597685232/gfxu_string.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1597685232/gfxu_string.o.d" -o ${OBJECTDIR}/_ext/1597685232/gfxu_string.o ../../../../../framework/gfx/utils/src/gfxu_string.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1597685232/gfxu_string_external.o: ../../../../../framework/gfx/utils/src/gfxu_string_external.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1597685232" 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_string_external.o.d 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_string_external.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1597685232/gfxu_string_external.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1597685232/gfxu_string_external.o.d" -o ${OBJECTDIR}/_ext/1597685232/gfxu_string_external.o ../../../../../framework/gfx/utils/src/gfxu_string_external.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1597685232/gfxu_string_internal.o: ../../../../../framework/gfx/utils/src/gfxu_string_internal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1597685232" 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_string_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_string_internal.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1597685232/gfxu_string_internal.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1597685232/gfxu_string_internal.o.d" -o ${OBJECTDIR}/_ext/1597685232/gfxu_string_internal.o ../../../../../framework/gfx/utils/src/gfxu_string_internal.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1597685232/gfxu_string_query.o: ../../../../../framework/gfx/utils/src/gfxu_string_query.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1597685232" 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_string_query.o.d 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_string_query.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1597685232/gfxu_string_query.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1597685232/gfxu_string_query.o.d" -o ${OBJECTDIR}/_ext/1597685232/gfxu_string_query.o ../../../../../framework/gfx/utils/src/gfxu_string_query.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1597685232/gfxu_string_utils.o: ../../../../../framework/gfx/utils/src/gfxu_string_utils.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1597685232" 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_string_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1597685232/gfxu_string_utils.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1597685232/gfxu_string_utils.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1597685232/gfxu_string_utils.o.d" -o ${OBJECTDIR}/_ext/1597685232/gfxu_string_utils.o ../../../../../framework/gfx/utils/src/gfxu_string_utils.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/853959373/sys_dma.o: ../../../../../framework/system/dma/src/sys_dma.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/853959373" 
	@${RM} ${OBJECTDIR}/_ext/853959373/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/853959373/sys_dma.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/853959373/sys_dma.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/853959373/sys_dma.o.d" -o ${OBJECTDIR}/_ext/853959373/sys_dma.o ../../../../../framework/system/dma/src/sys_dma.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o: ../../../../../framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1042686532" 
	@${RM} ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/1042686532/sys_int_pic32.o ../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/426253641/jidctint.o: ../../../../../third_party/decoder/jidctint/src/jidctint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/426253641" 
	@${RM} ${OBJECTDIR}/_ext/426253641/jidctint.o.d 
	@${RM} ${OBJECTDIR}/_ext/426253641/jidctint.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/426253641/jidctint.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/426253641/jidctint.o.d" -o ${OBJECTDIR}/_ext/426253641/jidctint.o ../../../../../third_party/decoder/jidctint/src/jidctint.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/493934858/lodepng.o: ../../../../../third_party/decoder/lodepng/lodepng.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/493934858" 
	@${RM} ${OBJECTDIR}/_ext/493934858/lodepng.o.d 
	@${RM} ${OBJECTDIR}/_ext/493934858/lodepng.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/493934858/lodepng.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_meb2" -I"../src/pic32mz_ef_sk_meb2" -I"../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_meb2/framework" -I"../src/system_config/pic32mz_ef_sk_meb2/bsp" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/493934858/lodepng.o.d" -o ${OBJECTDIR}/_ext/493934858/lodepng.o ../../../../../third_party/decoder/lodepng/lodepng.c    -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/aria_quickstart.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../bin/framework/peripheral/PIC32MZ2048ECM144_peripherals.a  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_REAL_ICE=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/aria_quickstart.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\bin\framework\peripheral\PIC32MZ2048ECM144_peripherals.a      -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x27F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_REAL_ICE=1,--defsym=_min_heap_size=102400,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/aria_quickstart.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../bin/framework/peripheral/PIC32MZ2048ECM144_peripherals.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/aria_quickstart.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\bin\framework\peripheral\PIC32MZ2048ECM144_peripherals.a      -DXPRJ_pic32mz_ef_sk_meb2=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=102400,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/aria_quickstart.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/pic32mz_ef_sk_meb2
	${RM} -r dist/pic32mz_ef_sk_meb2

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
