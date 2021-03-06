transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/vga_red {D:/vga_red/vga_red.v}
vlog -vlog01compat -work work +incdir+D:/vga_red {D:/vga_red/vga_pll.v}
vlog -vlog01compat -work work +incdir+D:/vga_red/db {D:/vga_red/db/vga_pll_altpll.v}

vlog -vlog01compat -work work +incdir+D:/vga_red/simulation/modelsim {D:/vga_red/simulation/modelsim/vga_red.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiii_ver -L rtl_work -L work -voptargs="+acc" vga_red_vlg_tst

add wave *
view structure
view signals
run -all
