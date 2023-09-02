
`include "sample_manager.sv"
`include "csv_file_dump.sv"
`include "df_fifo_monitor.sv"
`include "df_process_monitor.sv"
`include "nodf_module_monitor.sv"
`timescale 1ns/1ps

// top module for dataflow related monitors
module dataflow_monitor(
input logic clock,
input logic reset,
input logic finish
);


    df_process_intf process_intf_1(clock,reset);
    assign process_intf_1.ap_start = AESL_inst_row_product.Block_ZN8ap_fixedILi32ELi16EL9ap_q_mode5EL9ap_o_mode3ELi0EEC2Ei_exit96_proc_U0.ap_start;
    assign process_intf_1.ap_ready = AESL_inst_row_product.Block_ZN8ap_fixedILi32ELi16EL9ap_q_mode5EL9ap_o_mode3ELi0EEC2Ei_exit96_proc_U0.ap_ready;
    assign process_intf_1.ap_done = AESL_inst_row_product.Block_ZN8ap_fixedILi32ELi16EL9ap_q_mode5EL9ap_o_mode3ELi0EEC2Ei_exit96_proc_U0.ap_done;
    assign process_intf_1.ap_continue = AESL_inst_row_product.Block_ZN8ap_fixedILi32ELi16EL9ap_q_mode5EL9ap_o_mode3ELi0EEC2Ei_exit96_proc_U0.ap_continue;
    assign process_intf_1.real_start = AESL_inst_row_product.Block_ZN8ap_fixedILi32ELi16EL9ap_q_mode5EL9ap_o_mode3ELi0EEC2Ei_exit96_proc_U0.ap_start;
    assign process_intf_1.pin_stall = 1'b0;
    assign process_intf_1.pout_stall = 1'b0;
    assign process_intf_1.finish = finish;
    csv_file_dump pstall_csv_dumper_1;
    csv_file_dump pstatus_csv_dumper_1;
    df_process_monitor process_monitor_1;

    nodf_module_intf module_intf_1(clock,reset);
    assign module_intf_1.ap_start = AESL_inst_row_product.ap_start;
    assign module_intf_1.ap_ready = AESL_inst_row_product.ap_ready;
    assign module_intf_1.ap_done = AESL_inst_row_product.ap_done;
    assign module_intf_1.ap_continue = 1'b1;
    assign module_intf_1.finish = finish;
    csv_file_dump mstatus_csv_dumper_1;
    nodf_module_monitor module_monitor_1;

    sample_manager sample_manager_inst;

initial begin
    sample_manager_inst = new;


    pstall_csv_dumper_1 = new("./stalling1.csv");
    pstatus_csv_dumper_1 = new("./status1.csv");
    process_monitor_1 = new(pstall_csv_dumper_1,process_intf_1,pstatus_csv_dumper_1);

    mstatus_csv_dumper_1 = new("./module_status1.csv");
    module_monitor_1 = new(module_intf_1,mstatus_csv_dumper_1);

    sample_manager_inst.add_one_monitor(process_monitor_1);
    sample_manager_inst.add_one_monitor(module_monitor_1);
    
    fork
        sample_manager_inst.start_monitor();
        last_transaction_done;
    join
    disable fork;

    sample_manager_inst.start_dump();
end

    task last_transaction_done();
        wait(reset == 0);
        while(1) begin
            if (finish == 1'b1)
                break;
            else
                @(posedge clock);
        end
    endtask


endmodule
