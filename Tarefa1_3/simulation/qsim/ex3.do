onerror {exit -code 1}
vlib work
vcom -work work ex3.vho
vcom -work work Waveform.vwf.vht
vsim -novopt -c -t 1ps -sdfmax ex3_vhd_vec_tst/i1=ex3_vhd.sdo -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.ex3_vhd_vec_tst
vcd file -direction ex3.msim.vcd
vcd add -internal ex3_vhd_vec_tst/*
vcd add -internal ex3_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
