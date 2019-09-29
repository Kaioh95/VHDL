onerror {exit -code 1}
vlib work
vcom -work work maq_cafe.vho
vcom -work work Waveform.vwf.vht
vsim -novopt -c -t 1ps -sdfmax maq_cafe_vhd_vec_tst/i1=maq_cafe_vhd.sdo -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.maq_cafe_vhd_vec_tst
vcd file -direction maq_cafe.msim.vcd
vcd add -internal maq_cafe_vhd_vec_tst/*
vcd add -internal maq_cafe_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
