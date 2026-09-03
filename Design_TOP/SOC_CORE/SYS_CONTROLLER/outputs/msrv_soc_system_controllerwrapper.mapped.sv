`ifndef SYNTHESIS

//
// This is an automatically generated file from 
// dc_shell Version T-2022.03-SP4 -- Aug 24, 2022
//

// For simulation only. Do not modify.

module msrv_soc_system_controllerwrapper_svsim (
    input  logic [56-1:0] HADDR,
    input  logic                 HWRITE,
    input  logic [2:0]           HSIZE,
    input  logic [64-1:0]    HWDATA,
    input  logic [64/8-1:0]  HWSTRB,
    input  logic                 HREADY,
    input  logic [1:0]           HTRANS,
    output logic                 HRESPSYS_CTRL, HREADYSYS_CTRL,
    output logic                 HSELSYS_CTRL,
    input  logic                 clk,	  
        input  logic                 reset_ext, 

        output logic                reset,
    output logic                clk_out   );

	

  msrv_soc_system_controllerwrapper msrv_soc_system_controllerwrapper( 
        {>>{ HADDR }}, {>>{ HWRITE }}, {>>{ HSIZE }}, {>>{ HWDATA }}, 
        {>>{ HWSTRB }}, {>>{ HREADY }}, {>>{ HTRANS }}, {>>{ HRESPSYS_CTRL }}, 
        {>>{ HREADYSYS_CTRL }}, {>>{ HSELSYS_CTRL }}, {>>{ clk }}, 
        {>>{ reset_ext }}, {>>{ reset }}, {>>{ clk_out }} );
endmodule
`endif
