set STITCH_INCLUDE_LIST [ list $DesignRoot/cheriot-ibex/rtl/ \
                               $DesignRoot/cheriot-ibex/vendor/lowrisc_ip/ip/prim/rtl/ \
                               $DesignRoot/cheriot-ibex/vendor/lowrisc_ip/dv/sv/dv_utils/ \
                               $DesignRoot/src/msft_cheri_subsystem \
                        ] 

read_verilog -sv [ glob $DesignRoot/cheriot-ibex/vendor/lowrisc_ip/ip/prim/rtl/prim_ram_1p_pkg.sv]
read_verilog -sv [ glob $DesignRoot/cheriot-ibex/vendor/lowrisc_ip/ip/prim/rtl/prim_cipher_pkg.sv ]
read_verilog -sv [ glob $DesignRoot/cheriot-ibex/rtl/cheri_pkg.sv ]
read_verilog -sv [ glob $DesignRoot/cheriot-ibex/rtl/ibex_pkg.sv ]
read_verilog -sv [ glob $DesignRoot/cheriot-ibex/rtl/ibex_tracer_pkg.sv ]
read_verilog -sv [ glob $DesignRoot/cheriot-ibex/rtl/cheri_decoder.sv ]
read_verilog -sv [ glob $DesignRoot/cheriot-ibex/rtl/cheri_ex.sv ]
read_verilog -sv [ glob $DesignRoot/cheriot-ibex/rtl/cheri_regfile.sv ]
read_verilog -sv [ glob $DesignRoot/cheriot-ibex/rtl/cheri_trvk_stage.sv ]
read_verilog -sv [ glob $DesignRoot/cheriot-ibex/rtl/cheri_tbre.sv ]
read_verilog -sv [ glob $DesignRoot/cheriot-ibex/rtl/cheri_stkz.sv ]
read_verilog -sv [ glob $DesignRoot/cheriot-ibex/rtl/cheri_tbre_wrapper.sv ]
read_verilog -sv [ glob $DesignRoot/cheriot-ibex/rtl/ibex_fetch_fifo.sv ]
read_verilog -sv [ glob $DesignRoot/cheriot-ibex/rtl/ibex_prefetch_buffer.sv ]
read_verilog -sv [ glob $DesignRoot/cheriot-ibex/rtl/ibex_branch_predict.sv ]
read_verilog -sv [ glob $DesignRoot/cheriot-ibex/rtl/ibex_compressed_decoder.sv ]
read_verilog -sv [ glob $DesignRoot/cheriot-ibex/rtl/ibex_if_stage.sv ]
read_verilog -sv [ glob $DesignRoot/cheriot-ibex/rtl/ibex_controller.sv ]
read_verilog -sv [ glob $DesignRoot/cheriot-ibex/rtl/ibex_decoder.sv ]
read_verilog -sv [ glob $DesignRoot/cheriot-ibex/rtl/ibex_id_stage.sv ]
read_verilog -sv [ glob $DesignRoot/cheriot-ibex/rtl/ibex_load_store_unit.sv ]
read_verilog -sv [ glob $DesignRoot/cheriot-ibex/rtl/ibex_wb_stage.sv ]
read_verilog -sv [ glob $DesignRoot/cheriot-ibex/rtl/ibex_alu.sv ]
read_verilog -sv [ glob $DesignRoot/cheriot-ibex/rtl/ibex_multdiv_fast.sv ]
read_verilog -sv [ glob $DesignRoot/cheriot-ibex/rtl/ibex_multdiv_slow.sv ]
read_verilog -sv [ glob $DesignRoot/cheriot-ibex/rtl/ibex_ex_block.sv ]
read_verilog -sv [ glob $DesignRoot/cheriot-ibex/rtl/ibex_csr.sv ]
read_verilog -sv [ glob $DesignRoot/cheriot-ibex/rtl/ibex_cs_registers.sv ]
read_verilog -sv [ glob $DesignRoot/cheriot-ibex/rtl/ibex_counter.sv ]
read_verilog -sv [ glob $DesignRoot/cheriot-ibex/rtl/ibex_dummy_instr.sv ]
read_verilog -sv [ glob $DesignRoot/cheriot-ibex/rtl/ibex_core.sv ]
read_verilog -sv [ glob $DesignRoot/cheriot-ibex/rtl/ibex_pmp.sv ]
read_verilog -sv [ glob $DesignRoot/cheriot-ibex/rtl/ibexc_top.sv ]
read_verilog -sv [ glob $DesignRoot/cheriot-ibex/rtl/ibex_tracer.sv ]
read_verilog -sv [ glob $DesignRoot/cheriot-ibex/rtl/ibexc_top_tracing.sv ]
read_verilog -sv [ glob $DesignRoot/cheriot-ibex/vendor/lowrisc_ip/ip/prim/rtl/prim_fifo_async.sv]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_core/msftDvIp_obimux3.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_core/msftDvIp_obimux3w0.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_core/msftDvIp_riscv_cheri_debug_reg.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_core/msftDvIp_riscv_cheri_debug_rom.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_core/msftDvIp_riscv_cheri_debug.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_core/msftDvIp_riscv_cheri_dmibus.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_core/msftDvIp_riscv_cheri_mem.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_core/msftDvIp_cheri_core_wrapper.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_core/msftDvIp_cheri_core0.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_mmreg.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_plic.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_clint_tmr.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_tcdev_wrapper.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_axi_fifo.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_axi_mem_bit_write.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_axi_mgr_ifc.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_axi_sub_ifc.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_cheri_axi_fabric.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_creg_intc.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_creg_timer.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_dma_ctrl0.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_dma_engine.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_dma_fifo.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_dmb_fifo.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_dmb.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_fpga_block_ram_2port_model.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_fpga_block_ram_byte_wr_model.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_fpga_block_ram_model.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_gpio.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_i2c_1m_1s.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_i2c_fifo.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_i2c_mgr.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_i2c_sub.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_jtag_driver.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_msftDvIp_cheri_axi_fabric_addr_decode.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_msftDvIp_cheri_axi_fabric_mgr_mux.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_msftDvIp_cheri_axi_fabric_sub_mux.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_periph_axi2apb_decode_decoder.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_periph_axi2apb_decode.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_periph_wrapper_v0.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_riscv_memory_v0.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_spi_1m_1s.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_spi_fifo.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_spi_mgr.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_spi_sub.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_uart_fifo.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_uart.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvDebug_backdoor_v0.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvDebug_cpu_trace.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_axi2apb.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_axi_def_sub.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_axi_dma_apb.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_eth_mac_lite.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_subsystem/msftDvIp_cheri0_subsystem.sv ]
#$DesignRoot/src/msft_cheri_arty7/BUFG.v
#$DesignRoot/src/msft_cheri_arty7/IBUF.v
#$DesignRoot/src/msft_cheri_arty7/IOBUF.v
#$DesignRoot/src/msft_cheri_arty7/OBUF.v
#$DesignRoot/src/msft_cheri_arty7/PULLDOWN.v
#$DesignRoot/src/msft_cheri_arty7/PULLUP.v
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_arty7/msftDvDebug_jtag2AxiApb_pkg.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_arty7/msftDvIp_mmcm_arty7_0.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_arty7/msftDvIp_mmcm_arty7_1.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_arty7/msftDvIp_led_alive.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_arty7/msftDvDebug_sync_pulse_gen.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_arty7/msftDvDebug_globals.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_arty7/msftDvDbug_apb_mux.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_arty7/msftDvDebug_apb_mgr_sm.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_arty7/msftDvDebug_jtag_tap.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_arty7/msftDvDebug_jtag2AxiApb.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_arty7/msftDvDebug_spiSlave.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_arty7/msftDvDebug_i2c_sub_base.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_arty7/msftDvDebug_i2c_sub.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_arty7/msftDvDebug_apb_mux.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_arty7/msftDvDebug_v1.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_arty7/prim_flop_2sync.sv ]
read_verilog -sv [ glob $DesignRoot/src/msft_cheri_arty7/msftDvIp_cheri_arty7_fpga.sv ]
