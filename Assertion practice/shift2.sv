module shift_reg2 #(
    parameter int WIDTH = 4
)(
    input  logic             clk,
    input  logic             rst,
    input  logic             load,
    input  logic             shift_en,
    input  logic [WIDTH-1:0] d_in,
    input  logic             s_in,
    output logic [WIDTH-1:0] d_out
);

    always_ff @(posedge clk) begin
        if (rst) begin
            d_out <= '0;
        end else if (shift_en) begin
            // BUG: Shift has incorrectly been given priority over load
            d_out <= {d_out[WIDTH-2:0], s_in};
        end else if (load) begin
            d_out <= d_in;
        end
        // else: hold previous value
    end

endmodule