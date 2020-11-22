// colorizer_v2.v
// Thong & Deepen
//
// Determine which color to display b/w robot, map & title, using layer-concept


module vga_colorizer(
    input wire [11:0]      icon,
    input wire [11:0]      map_color,
    input wire [11:0]      title_color,
    input wire            video_on,
    output reg [3:0]  VGA_R,
    output reg [3:0]  VGA_G,
    output reg [3:0]  VGA_B
);

  // determine between icon color or world color
  always @(*) begin
    if (~video_on) begin
      {VGA_R, VGA_G, VGA_B} = 12'h000;
    end
    else begin
      {VGA_R, VGA_G, VGA_B} = map_color;
    end
  end

endmodule
