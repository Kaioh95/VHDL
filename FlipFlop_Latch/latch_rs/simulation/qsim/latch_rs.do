onerror {exit -code 1}
vlib work
vcom -work work latch_rs.vho
vcom -work work Waveform.vwf.vht
vsim -novopt -c -t 1ps -sdfmax latch_rs_vhd_vec_tst/i1=latch_rs_vhd.sdo -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.latch_rs_vhd_vec_tst
vcd file -direction latch_rs.msim.vcd
vcd add -internal latch_rs_vhd_vec_tst/*
vcd add -internal latch_rs_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
