cd /home/runner
export PATH=/usr/bin:/bin:/tool/pandora64/bin:/usr/share/iverilog-0.9.7/bin
export PYTHONPATH=/playground_lib/cocotb-1.2/build/libs/x86_64:/playground_lib/cocotb-1.2:.
export MODULE=tb
export LD_LIBRARY_PATH=/playground_lib/cocotb-1.2/build/libs/x86_64
export COCOTB_SIM=1
export COCOTB_HOME=/playground_lib/cocotb-1.2
export COCOTB_LIB=/playground_lib/cocotb-1.2/build/libs/x86_64
export HOME=/home/runner
iverilog '-Wall' dut.sv  && unbuffer vvp -M $COCOTB_LIB -m gpivpi a.out  ; echo 'Creating result.zip...' && zip -r /tmp/tmp_zip_file_123play.zip . && mv /tmp/tmp_zip_file_123play.zip result.zip
