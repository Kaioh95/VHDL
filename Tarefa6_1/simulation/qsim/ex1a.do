onerror {exit -code 1}
vlib work
vcom -work work ex1a.vho
vcom -work work Waveform.vwf.vht
vsim -novopt -c -t 1ps -sdfmax ex1a_vhd_vec_tst/i1=ex1a_vhd.sdo -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.ex1a_vhd_vec_tst
vcd file -direction ex1a.msim.vcd
vcd add -internal ex1a_vhd_vec_tst/*
vcd add -internal ex1a_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
