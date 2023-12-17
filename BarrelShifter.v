module BarrelShifter (
    input  [22:0] In,
    output [22:0] Out,
    input  [ 4:0] Shift
);

  wire [22:0] a;
  genvar i;

  generate

      for (i = 0; i < 22; i = i + 1) begin : b2
        MUX2X1 M (
            In[i],
            In[i+1],
            Shift[0],
            a[i]
        );
      end
      MUX2X1 M1 (
          In[22],
          1'b0,
          Shift[0],
          a[22]
      );
  endgenerate

  wire [22:0] a1;
  genvar j, k;

  generate
      for (j = 0; j < 21; j = j + 1) begin : b4
        MUX2X1 M2 (
            a[j],
            a[j+2],
            Shift[1],
            a1[j]
        );
      end
      for (k = 21; k < 23; k = k + 1) begin : b5
        MUX2X1 M3 (
            a[k],
            1'b0,
            Shift[1],
            a1[k]
        );
      end
  endgenerate

  genvar p, q;
  wire [22:0] a2;

  generate
      for (p = 0; p < 19; p = p + 1) begin : b7
        MUX2X1 M4 (
            a1[p],
            a1[p+4],
            Shift[2],
            a2[p]
        );
      end
      for (k = 19; k < 23; k = k + 1) begin : b8
        MUX2X1 M5 (
            a1[k],
            1'b0,
            Shift[2],
            a2[k]
        );
      end
    
  endgenerate

  genvar x, y;
  wire [22:0] a3;

  generate
      for (x = 0; x < 15; x = x + 1) begin : b9
        MUX2X1 M6 (
            a2[x],
            a2[x+8],
            Shift[3],
            a3[x]
        );
      end
      for (y = 15; y < 23; y = y + 1) begin : b10
        MUX2X1 M7 (
            a2[y],
            1'b0,
            Shift[3],
            a3[y]
        );
      end
  endgenerate

  genvar s, t;
  wire [22:0] a4;

  generate
      for (s = 0; s < 7; s = s + 1) begin : b12
        MUX2X1 M8 (
            a3[s],
            a3[s+4],
            Shift[4],
            a4[s]
        );
      end
      for (t = 7; t < 23; t = t + 1) begin : b13
        MUX2X1 M9 (
            a3[t],
            1'b0,
            Shift[4],
            a4[t]
        );
      end
  endgenerate

  assign Out = a4;

endmodule