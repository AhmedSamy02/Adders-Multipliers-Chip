report = """
Information: Propagating switching activity (low effort zero delay simulation). (PWR-6)
Warning: Design has unannotated primary inputs. (PWR-414)
Warning: Design has unannotated sequential cell outputs. (PWR-415)
 
****************************************
Report : power
        -analysis_effort low
Design : SimpleMultiplier
Version: U-2022.12-SP7
Date   : Sun Dec 24 12:17:49 2023
****************************************


Library(s) Used:

    NangateOpenCellLibrary_ss0p95vn40c (File: /home/user55/Documents/NangateOpenCellLibrary_PDKv1_3_v2010_12/lib/Front_End/Liberty/NLDM/NangateOpenCellLibrary_ss0p95vn40c.db)


Operating Conditions: worst_low   Library: NangateOpenCellLibrary_ss0p95vn40c
Wire Load Model Mode: top

Design        Wire Load Model            Library
------------------------------------------------
SimpleMultiplier       5K_hvratio_1_1    NangateOpenCellLibrary_ss0p95vn40c


Global Operating Voltage = 0.95 
Power-specific unit information :
    Voltage Units = 1V
    Capacitance Units = 1.000000ff
    Time Units = 1ns
    Dynamic Power Units = 1uW    (derived from V,C,T units)
    Leakage Power Units = 1nW


Attributes
----------
i - Including register clock pin internal power


  Cell Internal Power  =  98.5440 uW   (63%)
  Net Switching Power  =  59.0070 uW   (37%)
                         ---------
Total Dynamic Power    = 157.5511 uW  (100%)

Cell Leakage Power     =  24.2556 uW


                 Internal         Switching           Leakage            Total
Power Group      Power            Power               Power              Power   (   %    )  Attrs
--------------------------------------------------------------------------------------------------
io_pad             0.0000            0.0000            0.0000            0.0000  (   0.00%)
memory             0.0000            0.0000            0.0000            0.0000  (   0.00%)
black_box          0.0000            0.0000            0.0000            0.0000  (   0.00%)
clock_network     28.8005            0.0000            0.0000           28.8005  (  15.84%)  i
register           8.4266            4.5312        2.1544e+03           15.1122  (   8.31%)
sequential         0.0000            0.0000            0.0000            0.0000  (   0.00%)
combinational     61.3169           54.4759        2.2101e+04          137.8939  (  75.85%)
--------------------------------------------------------------------------------------------------
Total             98.5440 uW        59.0071 uW     2.4256e+04 nW       181.8066 uW
1

"""

lines = report.split("\t")

for line in lines:
    if "Total" in line:
        1
    if "Total" in line:
        parts = line.split()
        total_power_str = parts[-3]
        break

total_power = float(total_power_str)

print(total_power)
