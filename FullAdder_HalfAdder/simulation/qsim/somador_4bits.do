onerror {exit -code 1}
vlib work
vcom -work work somador_4bits.vho
vcom -work work Waveform.vwf.vht
vsim -novopt -c -t 1ps -sdfmax somador_4bits_vhd_vec_tst/i1=somador_4bits_vhd.sdo -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.somador_4bits_vhd_vec_tst
vcd file -direction somador_4bits.msim.vcd
vcd add -internal somador_4bits_vhd_vec_tst/*
vcd add -internal somador_4bits_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
