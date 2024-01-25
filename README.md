## <img align= center width=50px height=50px src="https://github.com/AhmedSamy02/Adders-Mania/assets/88517271/dba75e61-02dd-465b-bc31-90907f36c93a"> Table of Contents

- [Overview](#overview)
- [Project Description](#des)
- [Output](#out)
- [Contributors](#contributors)
- [License](#license)


## <img src="https://github.com/AhmedSamy02/Adders-Mania/assets/88517271/9ed3ee67-0407-4c82-9e29-4faa76d1ac44" width="50" height="50" /> Overview <a name = "overview"></a>
Project of the VLSI course in our 3rd year in the Faculty of Engineering, Cairo University. Mainly consists of three mini projects which are: adders mania, multipliers maina, and generating the chip.
## <img src="https://github.com/YaraHisham61/OS_Scheduler/assets/88517271/d8e6c9f3-9ba5-4d9e-a108-7d9a95989812" width="30" height="30" /> Project Description <a name = "des"></a>

###  Mini Project 1: Adders Mania <img src="https://media.giphy.com/media/MbFaRTRxoucfCbmLSZ/giphy.gif" width="30" height="30" />
  The adders are the building blocks of all “compute” units. Their performance impacts the whole chip. so in this mini project, we:
 - Designed and implemented using Verilog the following 32-bit signed adders
    - Verilog (‘+’) version of adders
    - Ripple Carry Adder
    - Carry Look-Ahead Adder
    - Carry Bypass Adder
    - Carry Select Adder
    - Floating Point Adder (IEEE-standard) using Verilog (‘+’) version of adders
  - Implemented a testbench to test the above adders: Covering 8 cases:
    - Overflow of positive numbers.
    - Overflow of negative numbers.
    - Addition of positive and negative number
    - Addition of positive and positive number
    - Addition of negative and negative number
    - Additional 3 random test cases
  - Synthesis of the adders.
  - Apply post-synthesis simulation using our previously made testbench.

For more details, see [Adders Mania Presentation](https://www.canva.com/design/DAF24YO-pDQ/7OuSiESfmNEKVjfu1ePepw/edit?utm_content=DAF24YO-pDQ&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton)
### Mini Project 2: Multipliers Mania  <img src="https://media.giphy.com/media/d8RK4kgqbHJSw/giphy.gif" width="30" height="30" />
The multiplier is another important block in the chip. So in this mini project, we:
 - Designed and implemented using Verilog the following 32-bit signed multipliers
    - Verilog (‘*’) version of multiplier
    - Multiplier Tree (combinational)
    - Sequential Multiplier using shift & accumulate
    - Booth Algorithm 
    - Floating Point Multiplier (IEEE-standard) using Verilog (‘*’) version of multiplier
  - Implemented a testbench to test the above multipliers: Covering 8 cases:
    - Multiplication of positive and negative number.
    - Multiplication of positive and positive number.
    - Multiplication of negative and negative number.
    - Multiplication of negative and positive number.
    - Multiplication by zero.
    - Multiplication by 1.
    - Additional 2 random test cases.
  - Synthesis of the multipliers.
  - Apply post-synthesis simulation using our previously made testbench.

For more details, see [Multipliers Mania Presentation](https://www.canva.com/design/DAF35VtIQLE/q_s1TCyMHY58L4Y6yjqOqA/edit?utm_content=DAF35VtIQLE&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton
)
  
### Mini Project 3: Generating The Chip <img src="https://media.giphy.com/media/2EmwFpfMvDkMGwjiu0/giphy.gif" width="30" height="30" />
After synthesizing both floating point adder and multiplier, we generated the chip by placing and routing the adder and multiplier with similar constraints to synthesis. After this step we:
- Applied post-routing simulation using our previously made testbench with including our sdf files
- Generated the final GDS file for each design.

## <img src="https://github.com/YaraHisham61/OS_Scheduler/assets/88517271/52e64c12-9638-45ba-9040-d6545e67a1df" width="50" height="50" /> Outputs Files <a name = "out"></a>
### Mini Project 1 & 2
For each adder and multiplier we generated post-synthesis reports of:
- Total Area
- Max Delay
- Max Slack
- Min Slack
- Total Power
- clk
  
Which can be found in [Adders-Mania/Output folder](https://github.com/AhmedSamy02/Adders-Mania/tree/master/Adders-Mania/Outputs) and [Multipliers-Mania/Output folder](https://github.com/AhmedSamy02/Adders-Mania/tree/master/Multipliers-Mania/Outputs)

### Mini Project 3
For the floating point adder and multiplier we generated post-routing reports and GDS files which can be found in [Routing folder](https://github.com/AhmedSamy02/Adders-Mania/tree/master/Routing)
## <img src="https://github.com/YaraHisham61/OS_Scheduler/assets/88517271/859c6d0a-d951-4135-b420-6ca35c403803" width="50" height="50" /> Contributors <a name = "contributors"></a>
<table>
  <tr>
   <td align="center">
    <a href="https://github.com/AhmedSamy02" target="_black">
    <img src="https://avatars.githubusercontent.com/u/96637750?v=4" width="150px;" alt="Ahmed Samy"/>
    <br />
    <sub><b>Ahmed Samy</b></sub></a>
    </td>
   <td align="center">
    <a href="https://github.com/kaokab33" target="_black">
    <img src="https://avatars.githubusercontent.com/u/93781327?v=4" width="150px;" alt="Kareem Samy"/>
    <br />
    <sub><b>Kareem Samy</b></sub></a>
    </td>
   <td align="center">
    <a href="https://github.com/nancyalgazzar" target="_black">
    <img src="https://avatars.githubusercontent.com/u/94644017?v=4" width="150px;" alt="Nancy Ayman"/>
    <br />
    <sub><b>Nancy Ayman</b></sub></a>
    </td>
   <td align="center">
    <a href="https://github.com/YaraHisham61" target="_black">
    <img src="https://avatars.githubusercontent.com/u/88517271?v=4" width="150px;" alt="Yara Hisham"/>
    <br />
    <sub><b>Yara Hisham</b></sub></a>
    </td>
  </tr>
 </table>

  ## <img src="https://github.com/YaraHisham61/Architecture_Project/assets/88517271/c4a8b264-bf74-4f14-ba2a-b017ef999151" width="50" height="50" /> License <a name = "license"></a>
> This software is licensed under MIT License, See [License](https://github.com/AhmedSamy02/Adders-Mania/blob/master/LICENSE)
