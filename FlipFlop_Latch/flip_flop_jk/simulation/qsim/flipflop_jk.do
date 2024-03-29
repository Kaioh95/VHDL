onerror {exit -code 1}
vlib work
vcom -work work flipflop_jk.vho
vcom -work work Waveform.vwf.vht
vsim -novopt -c -t 1ps -sdfmax flipflop_jk_vhd_vec_tst/i1=flipflop_jk_vhd.sdo -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.flipflop_jk_vhd_vec_tst
vcd file -direction flipflop_jk.msim.vcd
vcd add -internal flipflop_jk_vhd_vec_tst/*
vcd add -internal flipflop_jk_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
