onerror {exit -code 1}
vlib work
vcom -work work MaiorDe3.vho
vcom -work work Waveform1.vwf.vht
vsim -novopt -c -t 1ps -sdfmax MaiorDe3_vhd_vec_tst/i1=MaiorDe3_vhd.sdo -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.MaiorDe3_vhd_vec_tst
vcd file -direction MaiorDe3.msim.vcd
vcd add -internal MaiorDe3_vhd_vec_tst/*
vcd add -internal MaiorDe3_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
