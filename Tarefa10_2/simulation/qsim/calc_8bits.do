onerror {exit -code 1}
vlib work
vcom -work work calc_8bits.vho
vcom -work work Waveform.vwf.vht
vsim -novopt -c -t 1ps -sdfmax calc_8bits_vhd_vec_tst/i1=calc_8bits_vhd.sdo -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.calc_8bits_vhd_vec_tst
vcd file -direction calc_8bits.msim.vcd
vcd add -internal calc_8bits_vhd_vec_tst/*
vcd add -internal calc_8bits_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
