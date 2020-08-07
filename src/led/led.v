module led
(
    input      I_10m_clk,
    output reg O_led_out
);


reg [25:0] S_clk_cnt;
reg O_led_out;
always @(posedge I_10m_clk)
    begin
        if(S_clk_cnt >= 26'd49999999)
            begin
                S_clk_cnt <= 26'd0;
            end
        else
            begin   
                S_clk_cnt <= S_clk_cnt + 26'd1;
            end
    end
    
always @(posedge I_10m_clk)
    begin
        if(S_clk_cnt >= 26'd49999999)
            begin   
                O_led_out <= ~O_led_out;
            end
        else
            begin
                O_led_out <= O_led_out;
            end
    end
endmodule