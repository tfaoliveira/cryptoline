(**
$ cv -v -isafety basemul_red.cl
Parsing CryptoLine file:		[OK]		0.008369 seconds
Checking well-formedness:		[OK]		0.002230 seconds
Transforming to SSA form:		[OK]		0.001276 seconds
Normalizing specification:		[OK]		0.000982 seconds
Rewriting assignments:			[OK]		0.002477 seconds
Verifying program safety:		
	 Cut 0
	     Round 1 (0 safety conditions, timeout = 300 seconds)
	 Overall			[OK]		0.000193 seconds
Verifying range assertions:		[OK]		1.783709 seconds
Verifying range specification:		[OK]		3.676146 seconds
Rewriting value-preserved casting:	[OK]		0.000078 seconds
Verifying algebraic assertions:		[OK]		0.002530 seconds
Verifying algebraic specification:	[OK]		0.001942 seconds
Verification result:			[OK]		5.482386 seconds
**)

(** cv -v -isafety basemul_red.cl **)

proc main (
  sint16 a0_0,  sint16 a0_1,  sint16 a0_2,  sint16 a0_3,
  sint16 a0_4,  sint16 a0_5,  sint16 a0_6,  sint16 a0_7,
  sint16 a0_8,  sint16 a0_9,  sint16 a0_10, sint16 a0_11,
  sint16 a0_12, sint16 a0_13, sint16 a0_14, sint16 a0_15,

  sint16 a1_0,  sint16 a1_1,  sint16 a1_2,  sint16 a1_3,
  sint16 a1_4,  sint16 a1_5,  sint16 a1_6,  sint16 a1_7,
  sint16 a1_8,  sint16 a1_9,  sint16 a1_10, sint16 a1_11,
  sint16 a1_12, sint16 a1_13, sint16 a1_14, sint16 a1_15,

  sint16 b0_0,  sint16 b0_1,  sint16 b0_2,  sint16 b0_3,
  sint16 b0_4,  sint16 b0_5,  sint16 b0_6,  sint16 b0_7,
  sint16 b0_8,  sint16 b0_9,  sint16 b0_10, sint16 b0_11,
  sint16 b0_12, sint16 b0_13, sint16 b0_14, sint16 b0_15,

  sint16 b1_0,  sint16 b1_1,  sint16 b1_2,  sint16 b1_3,
  sint16 b1_4,  sint16 b1_5,  sint16 b1_6,  sint16 b1_7,
  sint16 b1_8,  sint16 b1_9,  sint16 b1_10, sint16 b1_11,
  sint16 b1_12, sint16 b1_13, sint16 b1_14, sint16 b1_15
) =
{
  true
  &&
  and[
    limbs 16 [0@16, (-3329)@16] < limbs 16 [a0_0,  a0_1],  limbs 16 [a0_0,  a0_1]  < limbs 16 [0@16, 3329@16],
    limbs 16 [0@16, (-3329)@16] < limbs 16 [a0_2,  a0_3],  limbs 16 [a0_2,  a0_3]  < limbs 16 [0@16, 3329@16],
    limbs 16 [0@16, (-3329)@16] < limbs 16 [a0_4,  a0_5],  limbs 16 [a0_4,  a0_5]  < limbs 16 [0@16, 3329@16],
    limbs 16 [0@16, (-3329)@16] < limbs 16 [a0_6,  a0_7],  limbs 16 [a0_6,  a0_7]  < limbs 16 [0@16, 3329@16],
    limbs 16 [0@16, (-3329)@16] < limbs 16 [a0_8,  a0_9],  limbs 16 [a0_8,  a0_9]  < limbs 16 [0@16, 3329@16],
    limbs 16 [0@16, (-3329)@16] < limbs 16 [a0_10, a0_11], limbs 16 [a0_10, a0_11] < limbs 16 [0@16, 3329@16],
    limbs 16 [0@16, (-3329)@16] < limbs 16 [a0_12, a0_13], limbs 16 [a0_12, a0_13] < limbs 16 [0@16, 3329@16],
    limbs 16 [0@16, (-3329)@16] < limbs 16 [a0_14, a0_15], limbs 16 [a0_14, a0_15] < limbs 16 [0@16, 3329@16],
    limbs 16 [0@16, (-3329)@16] < limbs 16 [a1_0,  a1_1],  limbs 16 [a1_0,  a1_1]  < limbs 16 [0@16, 3329@16],
    limbs 16 [0@16, (-3329)@16] < limbs 16 [a1_2,  a1_3],  limbs 16 [a1_2,  a1_3]  < limbs 16 [0@16, 3329@16],
    limbs 16 [0@16, (-3329)@16] < limbs 16 [a1_4,  a1_5],  limbs 16 [a1_4,  a1_5]  < limbs 16 [0@16, 3329@16],
    limbs 16 [0@16, (-3329)@16] < limbs 16 [a1_6,  a1_7],  limbs 16 [a1_6,  a1_7]  < limbs 16 [0@16, 3329@16],
    limbs 16 [0@16, (-3329)@16] < limbs 16 [a1_8,  a1_9],  limbs 16 [a1_8,  a1_9]  < limbs 16 [0@16, 3329@16],
    limbs 16 [0@16, (-3329)@16] < limbs 16 [a1_10, a1_11], limbs 16 [a1_10, a1_11] < limbs 16 [0@16, 3329@16],
    limbs 16 [0@16, (-3329)@16] < limbs 16 [a1_12, a1_13], limbs 16 [a1_12, a1_13] < limbs 16 [0@16, 3329@16],
    limbs 16 [0@16, (-3329)@16] < limbs 16 [a1_14, a1_15], limbs 16 [a1_14, a1_15] < limbs 16 [0@16, 3329@16],

    limbs 16 [0@16, (-3329)@16] < limbs 16 [b0_0,  b0_1],  limbs 16 [b0_0,  b0_1]  < limbs 16 [0@16, 3329@16],
    limbs 16 [0@16, (-3329)@16] < limbs 16 [b0_2,  b0_3],  limbs 16 [b0_2,  b0_3]  < limbs 16 [0@16, 3329@16],
    limbs 16 [0@16, (-3329)@16] < limbs 16 [b0_4,  b0_5],  limbs 16 [b0_4,  b0_5]  < limbs 16 [0@16, 3329@16],
    limbs 16 [0@16, (-3329)@16] < limbs 16 [b0_6,  b0_7],  limbs 16 [b0_6,  b0_7]  < limbs 16 [0@16, 3329@16],
    limbs 16 [0@16, (-3329)@16] < limbs 16 [b0_8,  b0_9],  limbs 16 [b0_8,  b0_9]  < limbs 16 [0@16, 3329@16],
    limbs 16 [0@16, (-3329)@16] < limbs 16 [b0_10, b0_11], limbs 16 [b0_10, b0_11] < limbs 16 [0@16, 3329@16],
    limbs 16 [0@16, (-3329)@16] < limbs 16 [b0_12, b0_13], limbs 16 [b0_12, b0_13] < limbs 16 [0@16, 3329@16],
    limbs 16 [0@16, (-3329)@16] < limbs 16 [b0_14, b0_15], limbs 16 [b0_14, b0_15] < limbs 16 [0@16, 3329@16],
    limbs 16 [0@16, (-3329)@16] < limbs 16 [b1_0,  b1_1],  limbs 16 [b1_0,  b1_1]  < limbs 16 [0@16, 3329@16],
    limbs 16 [0@16, (-3329)@16] < limbs 16 [b1_2,  b1_3],  limbs 16 [b1_2,  b1_3]  < limbs 16 [0@16, 3329@16],
    limbs 16 [0@16, (-3329)@16] < limbs 16 [b1_4,  b1_5],  limbs 16 [b1_4,  b1_5]  < limbs 16 [0@16, 3329@16],
    limbs 16 [0@16, (-3329)@16] < limbs 16 [b1_6,  b1_7],  limbs 16 [b1_6,  b1_7]  < limbs 16 [0@16, 3329@16],
    limbs 16 [0@16, (-3329)@16] < limbs 16 [b1_8,  b1_9],  limbs 16 [b1_8,  b1_9]  < limbs 16 [0@16, 3329@16],
    limbs 16 [0@16, (-3329)@16] < limbs 16 [b1_10, b1_11], limbs 16 [b1_10, b1_11] < limbs 16 [0@16, 3329@16],
    limbs 16 [0@16, (-3329)@16] < limbs 16 [b1_12, b1_13], limbs 16 [b1_12, b1_13] < limbs 16 [0@16, 3329@16],
    limbs 16 [0@16, (-3329)@16] < limbs 16 [b1_14, b1_15], limbs 16 [b1_14, b1_15] < limbs 16 [0@16, 3329@16]
  ]
}

(** ******************************************** **)

mov L0x7fffffffd8b0 a0_0;
mov L0x7fffffffd8b2 a0_1; 
mov L0x7fffffffd8b4 a0_2; 
mov L0x7fffffffd8b6 a0_3; 
mov L0x7fffffffd8b8 a0_4; 
mov L0x7fffffffd8ba a0_5; 
mov L0x7fffffffd8bc a0_6; 
mov L0x7fffffffd8be a0_7; 
mov L0x7fffffffd8c0 a0_8; 
mov L0x7fffffffd8c2 a0_9; 
mov L0x7fffffffd8c4 a0_10; 
mov L0x7fffffffd8c6 a0_11; 
mov L0x7fffffffd8c8 a0_12; 
mov L0x7fffffffd8ca a0_13; 
mov L0x7fffffffd8cc a0_14; 
mov L0x7fffffffd8ce a0_15;

mov L0x7fffffffd8d0 a1_0;
mov L0x7fffffffd8d2 a1_1;
mov L0x7fffffffd8d4 a1_2;
mov L0x7fffffffd8d6 a1_3;
mov L0x7fffffffd8d8 a1_4;
mov L0x7fffffffd8da a1_5;
mov L0x7fffffffd8dc a1_6;
mov L0x7fffffffd8de a1_7;
mov L0x7fffffffd8e0 a1_8;
mov L0x7fffffffd8e2 a1_9;
mov L0x7fffffffd8e4 a1_10;
mov L0x7fffffffd8e6 a1_11;
mov L0x7fffffffd8e8 a1_12;
mov L0x7fffffffd8ea a1_13;
mov L0x7fffffffd8ec a1_14;
mov L0x7fffffffd8ee a1_15;

mov L0x7fffffffd8f0 b0_0; 
mov L0x7fffffffd8f2 b0_1; 
mov L0x7fffffffd8f4 b0_2; 
mov L0x7fffffffd8f6 b0_3; 
mov L0x7fffffffd8f8 b0_4; 
mov L0x7fffffffd8fa b0_5; 
mov L0x7fffffffd8fc b0_6; 
mov L0x7fffffffd8fe b0_7;
mov L0x7fffffffd900 b0_8; 
mov L0x7fffffffd902 b0_9; 
mov L0x7fffffffd904 b0_10; 
mov L0x7fffffffd906 b0_11; 
mov L0x7fffffffd908 b0_12; 
mov L0x7fffffffd90a b0_13; 
mov L0x7fffffffd90c b0_14; 
mov L0x7fffffffd90e b0_15; 

mov L0x7fffffffd910 b1_0;
mov L0x7fffffffd912 b1_1;
mov L0x7fffffffd914 b1_2;
mov L0x7fffffffd916 b1_3;
mov L0x7fffffffd918 b1_4;
mov L0x7fffffffd91a b1_5;
mov L0x7fffffffd91c b1_6;
mov L0x7fffffffd91e b1_7;
mov L0x7fffffffd920 b1_8;
mov L0x7fffffffd922 b1_9;
mov L0x7fffffffd924 b1_10;
mov L0x7fffffffd926 b1_11;
mov L0x7fffffffd928 b1_12;
mov L0x7fffffffd92a b1_13;
mov L0x7fffffffd92c b1_14;
mov L0x7fffffffd92e b1_15;

mov L0x7fffffffd930 3329@sint16;
mov L0x7fffffffd932 3329@sint16;
mov L0x7fffffffd934 3329@sint16;
mov L0x7fffffffd936 3329@sint16;
mov L0x7fffffffd938 3329@sint16;
mov L0x7fffffffd93a 3329@sint16;
mov L0x7fffffffd93c 3329@sint16;
mov L0x7fffffffd93e 3329@sint16;
mov L0x7fffffffd940 3329@sint16;
mov L0x7fffffffd942 3329@sint16;
mov L0x7fffffffd944 3329@sint16;
mov L0x7fffffffd946 3329@sint16;
mov L0x7fffffffd948 3329@sint16;
mov L0x7fffffffd94a 3329@sint16;
mov L0x7fffffffd94c 3329@sint16;
mov L0x7fffffffd94e 3329@sint16;

mov L0x7fffffffd950 (-3327)@sint16;
mov L0x7fffffffd952 (-3327)@sint16; 
mov L0x7fffffffd954 (-3327)@sint16; 
mov L0x7fffffffd956 (-3327)@sint16; 
mov L0x7fffffffd958 (-3327)@sint16; 
mov L0x7fffffffd95a (-3327)@sint16; 
mov L0x7fffffffd95c (-3327)@sint16; 
mov L0x7fffffffd95e (-3327)@sint16; 
mov L0x7fffffffd960 (-3327)@sint16; 
mov L0x7fffffffd962 (-3327)@sint16; 
mov L0x7fffffffd964 (-3327)@sint16; 
mov L0x7fffffffd966 (-3327)@sint16; 
mov L0x7fffffffd968 (-3327)@sint16; 
mov L0x7fffffffd96a (-3327)@sint16; 
mov L0x7fffffffd96c (-3327)@sint16; 
mov L0x7fffffffd96e (-3327)@sint16; 

(** ******************************************** **)
(** c&p from basemul_red.cl.0 **)

(* #! -> SP = 0x7fffffffd868 *)
#! 0x7fffffffd868 = 0x7fffffffd868;
(* vmovdqu (%rsi),%ymm2                            #! EA = L0x7fffffffd8b0; Value = 0x0000038000000380; PC = 0x5555555551c0 *)
mov ymm2_0000 L0x7fffffffd8b0;
mov ymm2_0001 L0x7fffffffd8b2;
mov ymm2_0010 L0x7fffffffd8b4;
mov ymm2_0011 L0x7fffffffd8b6;
mov ymm2_0100 L0x7fffffffd8b8;
mov ymm2_0101 L0x7fffffffd8ba;
mov ymm2_0110 L0x7fffffffd8bc;
mov ymm2_0111 L0x7fffffffd8be;
mov ymm2_1000 L0x7fffffffd8c0;
mov ymm2_1001 L0x7fffffffd8c2;
mov ymm2_1010 L0x7fffffffd8c4;
mov ymm2_1011 L0x7fffffffd8c6;
mov ymm2_1100 L0x7fffffffd8c8;
mov ymm2_1101 L0x7fffffffd8ca;
mov ymm2_1110 L0x7fffffffd8cc;
mov ymm2_1111 L0x7fffffffd8ce;
(* vmovdqu 0x20(%rsi),%ymm3                        #! EA = L0x7fffffffd8d0; Value = 0x0000000000000000; PC = 0x5555555551c4 *)
mov ymm3_0000 L0x7fffffffd8d0;
mov ymm3_0001 L0x7fffffffd8d2;
mov ymm3_0010 L0x7fffffffd8d4;
mov ymm3_0011 L0x7fffffffd8d6;
mov ymm3_0100 L0x7fffffffd8d8;
mov ymm3_0101 L0x7fffffffd8da;
mov ymm3_0110 L0x7fffffffd8dc;
mov ymm3_0111 L0x7fffffffd8de;
mov ymm3_1000 L0x7fffffffd8e0;
mov ymm3_1001 L0x7fffffffd8e2;
mov ymm3_1010 L0x7fffffffd8e4;
mov ymm3_1011 L0x7fffffffd8e6;
mov ymm3_1100 L0x7fffffffd8e8;
mov ymm3_1101 L0x7fffffffd8ea;
mov ymm3_1110 L0x7fffffffd8ec;
mov ymm3_1111 L0x7fffffffd8ee;
(* vmovdqu (%rdx),%ymm4                            #! EA = L0x7fffffffd8f0; Value = 0x0000000000000000; PC = 0x5555555551c9 *)
mov ymm4_0000 L0x7fffffffd8f0;
mov ymm4_0001 L0x7fffffffd8f2;
mov ymm4_0010 L0x7fffffffd8f4;
mov ymm4_0011 L0x7fffffffd8f6;
mov ymm4_0100 L0x7fffffffd8f8;
mov ymm4_0101 L0x7fffffffd8fa;
mov ymm4_0110 L0x7fffffffd8fc;
mov ymm4_0111 L0x7fffffffd8fe;
mov ymm4_1000 L0x7fffffffd900;
mov ymm4_1001 L0x7fffffffd902;
mov ymm4_1010 L0x7fffffffd904;
mov ymm4_1011 L0x7fffffffd906;
mov ymm4_1100 L0x7fffffffd908;
mov ymm4_1101 L0x7fffffffd90a;
mov ymm4_1110 L0x7fffffffd90c;
mov ymm4_1111 L0x7fffffffd90e;
(* vmovdqu 0x20(%rdx),%ymm5                        #! EA = L0x7fffffffd910; Value = 0x0000000000000000; PC = 0x5555555551cd *)
mov ymm5_0000 L0x7fffffffd910;
mov ymm5_0001 L0x7fffffffd912;
mov ymm5_0010 L0x7fffffffd914;
mov ymm5_0011 L0x7fffffffd916;
mov ymm5_0100 L0x7fffffffd918;
mov ymm5_0101 L0x7fffffffd91a;
mov ymm5_0110 L0x7fffffffd91c;
mov ymm5_0111 L0x7fffffffd91e;
mov ymm5_1000 L0x7fffffffd920;
mov ymm5_1001 L0x7fffffffd922;
mov ymm5_1010 L0x7fffffffd924;
mov ymm5_1011 L0x7fffffffd926;
mov ymm5_1100 L0x7fffffffd928;
mov ymm5_1101 L0x7fffffffd92a;
mov ymm5_1110 L0x7fffffffd92c;
mov ymm5_1111 L0x7fffffffd92e;
(* vmovdqu (%rcx),%ymm0                            #! EA = L0x7fffffffd930; Value = 0x00000000000000c2; PC = 0x5555555551d2 *)
mov ymm0_0000 L0x7fffffffd930;
mov ymm0_0001 L0x7fffffffd932;
mov ymm0_0010 L0x7fffffffd934;
mov ymm0_0011 L0x7fffffffd936;
mov ymm0_0100 L0x7fffffffd938;
mov ymm0_0101 L0x7fffffffd93a;
mov ymm0_0110 L0x7fffffffd93c;
mov ymm0_0111 L0x7fffffffd93e;
mov ymm0_1000 L0x7fffffffd940;
mov ymm0_1001 L0x7fffffffd942;
mov ymm0_1010 L0x7fffffffd944;
mov ymm0_1011 L0x7fffffffd946;
mov ymm0_1100 L0x7fffffffd948;
mov ymm0_1101 L0x7fffffffd94a;
mov ymm0_1110 L0x7fffffffd94c;
mov ymm0_1111 L0x7fffffffd94e;
(* vmovdqu 0x20(%rcx),%ymm1                        #! EA = L0x7fffffffd950; Value = 0x00007ffff7fa72e8; PC = 0x5555555551d6 *)
mov ymm1_0000 L0x7fffffffd950;
mov ymm1_0001 L0x7fffffffd952;
mov ymm1_0010 L0x7fffffffd954;
mov ymm1_0011 L0x7fffffffd956;
mov ymm1_0100 L0x7fffffffd958;
mov ymm1_0101 L0x7fffffffd95a;
mov ymm1_0110 L0x7fffffffd95c;
mov ymm1_0111 L0x7fffffffd95e;
mov ymm1_1000 L0x7fffffffd960;
mov ymm1_1001 L0x7fffffffd962;
mov ymm1_1010 L0x7fffffffd964;
mov ymm1_1011 L0x7fffffffd966;
mov ymm1_1100 L0x7fffffffd968;
mov ymm1_1101 L0x7fffffffd96a;
mov ymm1_1110 L0x7fffffffd96c;
mov ymm1_1111 L0x7fffffffd96e;
(* vpxor  %ymm6,%ymm6,%ymm6                        #! PC = 0x5555555551db *)
mov ymm6_0000 0@sint16;
mov ymm6_0001 0@sint16;
mov ymm6_0010 0@sint16;
mov ymm6_0011 0@sint16;
mov ymm6_0100 0@sint16;
mov ymm6_0101 0@sint16;
mov ymm6_0110 0@sint16;
mov ymm6_0111 0@sint16;
mov ymm6_1000 0@sint16;
mov ymm6_1001 0@sint16;
mov ymm6_1010 0@sint16;
mov ymm6_1011 0@sint16;
mov ymm6_1100 0@sint16;
mov ymm6_1101 0@sint16;
mov ymm6_1110 0@sint16;
mov ymm6_1111 0@sint16;
(* vpblendw $0xaa,%ymm6,%ymm2,%ymm7                #! PC = 0x5555555551df *)
mov ymm7_0000 ymm2_0000;
mov ymm7_0001 ymm6_0001;
mov ymm7_0010 ymm2_0010;
mov ymm7_0011 ymm6_0011;
mov ymm7_0100 ymm2_0100;
mov ymm7_0101 ymm6_0101;
mov ymm7_0110 ymm2_0110;
mov ymm7_0111 ymm6_0111;
mov ymm7_1000 ymm2_1000;
mov ymm7_1001 ymm6_1001;
mov ymm7_1010 ymm2_1010;
mov ymm7_1011 ymm6_1011;
mov ymm7_1100 ymm2_1100;
mov ymm7_1101 ymm6_1101;
mov ymm7_1110 ymm2_1110;
mov ymm7_1111 ymm6_1111;
(* vpblendw $0xaa,%ymm6,%ymm3,%ymm8                #! PC = 0x5555555551e5 *)
mov ymm8_0000 ymm3_0000;
mov ymm8_0001 ymm6_0001;
mov ymm8_0010 ymm3_0010;
mov ymm8_0011 ymm6_0011;
mov ymm8_0100 ymm3_0100;
mov ymm8_0101 ymm6_0101;
mov ymm8_0110 ymm3_0110;
mov ymm8_0111 ymm6_0111;
mov ymm8_1000 ymm3_1000;
mov ymm8_1001 ymm6_1001;
mov ymm8_1010 ymm3_1010;
mov ymm8_1011 ymm6_1011;
mov ymm8_1100 ymm3_1100;
mov ymm8_1101 ymm6_1101;
mov ymm8_1110 ymm3_1110;
mov ymm8_1111 ymm6_1111;
(* vpsrld $0x10,%ymm2,%ymm2                        #! PC = 0x5555555551eb *)
mov ymm2_0000 ymm2_0001;
mov ymm2_0001 0@sint16;
mov ymm2_0010 ymm2_0011;
mov ymm2_0011 0@sint16;
mov ymm2_0100 ymm2_0101;
mov ymm2_0101 0@sint16;
mov ymm2_0110 ymm2_0111;
mov ymm2_0111 0@sint16;
mov ymm2_1000 ymm2_1001;
mov ymm2_1001 0@sint16;
mov ymm2_1010 ymm2_1011;
mov ymm2_1011 0@int16;
mov ymm2_1100 ymm2_1101;
mov ymm2_1101 0@sint16;
mov ymm2_1110 ymm2_1111;
mov ymm2_1111 0@sint16;
(* vpsrld $0x10,%ymm3,%ymm3                        #! PC = 0x5555555551f0 *)
mov ymm3_0000 ymm3_0001;
mov ymm3_0001 0@sint16;
mov ymm3_0010 ymm3_0011;
mov ymm3_0011 0@sint16;
mov ymm3_0100 ymm3_0101;
mov ymm3_0101 0@sint16;
mov ymm3_0110 ymm3_0111;
mov ymm3_0111 0@sint16;
mov ymm3_1000 ymm3_1001;
mov ymm3_1001 0@sint16;
mov ymm3_1010 ymm3_1011;
mov ymm3_1011 0@int16;
mov ymm3_1100 ymm3_1101;
mov ymm3_1101 0@sint16;
mov ymm3_1110 ymm3_1111;
mov ymm3_1111 0@sint16;
(* vpackusdw %ymm8,%ymm7,%ymm7                     #! PC = 0x5555555551f5 *)
assert true && ymm8_0001 = 0@16;
assert true && ymm8_0011 = 0@16;
assert true && ymm8_0101 = 0@16;
assert true && ymm8_0111 = 0@16;
assert true && ymm8_1001 = 0@16;
assert true && ymm8_1011 = 0@16;
assert true && ymm8_1101 = 0@16;
assert true && ymm8_1111 = 0@16;
assert true && ymm7_0001 = 0@16;
assert true && ymm7_0011 = 0@16;
assert true && ymm7_0101 = 0@16;
assert true && ymm7_0111 = 0@16;
assert true && ymm7_1001 = 0@16;
assert true && ymm7_1011 = 0@16;
assert true && ymm7_1101 = 0@16;
assert true && ymm7_1111 = 0@16;
mov tmp_0000 ymm7_0000;
mov tmp_0001 ymm7_0010;
mov tmp_0010 ymm7_0100;
mov tmp_0011 ymm7_0110;
mov tmp_0100 ymm8_0000;
mov tmp_0101 ymm8_0010;
mov tmp_0110 ymm8_0100;
mov tmp_0111 ymm8_0110;
mov tmp_1000 ymm7_1000;
mov tmp_1001 ymm7_1010;
mov tmp_1010 ymm7_1100;
mov tmp_1011 ymm7_1110;
mov tmp_1100 ymm8_1000;
mov tmp_1101 ymm8_1010;
mov tmp_1110 ymm8_1100;
mov tmp_1111 ymm8_1110;
mov ymm7_0000 tmp_0000;
mov ymm7_0001 tmp_0001;
mov ymm7_0010 tmp_0010;
mov ymm7_0011 tmp_0011;
mov ymm7_0100 tmp_0100;
mov ymm7_0101 tmp_0101;
mov ymm7_0110 tmp_0110;
mov ymm7_0111 tmp_0111;
mov ymm7_1000 tmp_1000;
mov ymm7_1001 tmp_1001;
mov ymm7_1010 tmp_1010;
mov ymm7_1011 tmp_1011;
mov ymm7_1100 tmp_1100;
mov ymm7_1101 tmp_1101;
mov ymm7_1110 tmp_1110;
mov ymm7_1111 tmp_1111;
(* vpackusdw %ymm3,%ymm2,%ymm2                     #! PC = 0x5555555551fa *)
assert true && ymm3_0001 = 0@16;
assert true && ymm3_0011 = 0@16;
assert true && ymm3_0101 = 0@16;
assert true && ymm3_0111 = 0@16;
assert true && ymm3_1001 = 0@16;
assert true && ymm3_1011 = 0@16;
assert true && ymm3_1101 = 0@16;
assert true && ymm3_1111 = 0@16;
assert true && ymm2_0001 = 0@16;
assert true && ymm2_0011 = 0@16;
assert true && ymm2_0101 = 0@16;
assert true && ymm2_0111 = 0@16;
assert true && ymm2_1001 = 0@16;
assert true && ymm2_1011 = 0@16;
assert true && ymm2_1101 = 0@16;
assert true && ymm2_1111 = 0@16;
mov tmp_0000 ymm2_0000;
mov tmp_0001 ymm2_0010;
mov tmp_0010 ymm2_0100;
mov tmp_0011 ymm2_0110;
mov tmp_0100 ymm3_0000;
mov tmp_0101 ymm3_0010;
mov tmp_0110 ymm3_0100;
mov tmp_0111 ymm3_0110;
mov tmp_1000 ymm2_1000;
mov tmp_1001 ymm2_1010;
mov tmp_1010 ymm2_1100;
mov tmp_1011 ymm2_1110;
mov tmp_1100 ymm3_1000;
mov tmp_1101 ymm3_1010;
mov tmp_1110 ymm3_1100;
mov tmp_1111 ymm3_1110;
mov ymm2_0000 tmp_0000;
mov ymm2_0001 tmp_0001;
mov ymm2_0010 tmp_0010;
mov ymm2_0011 tmp_0011;
mov ymm2_0100 tmp_0100;
mov ymm2_0101 tmp_0101;
mov ymm2_0110 tmp_0110;
mov ymm2_0111 tmp_0111;
mov ymm2_1000 tmp_1000;
mov ymm2_1001 tmp_1001;
mov ymm2_1010 tmp_1010;
mov ymm2_1011 tmp_1011;
mov ymm2_1100 tmp_1100;
mov ymm2_1101 tmp_1101;
mov ymm2_1110 tmp_1110;
mov ymm2_1111 tmp_1111;
(* vpblendw $0xaa,%ymm6,%ymm4,%ymm3                #! PC = 0x5555555551ff *)
mov ymm3_0000 ymm4_0000;
mov ymm3_0001 ymm6_0001;
mov ymm3_0010 ymm4_0010;
mov ymm3_0011 ymm6_0011;
mov ymm3_0100 ymm4_0100;
mov ymm3_0101 ymm6_0101;
mov ymm3_0110 ymm4_0110;
mov ymm3_0111 ymm6_0111;
mov ymm3_1000 ymm4_1000;
mov ymm3_1001 ymm6_1001;
mov ymm3_1010 ymm4_1010;
mov ymm3_1011 ymm6_1011;
mov ymm3_1100 ymm4_1100;
mov ymm3_1101 ymm6_1101;
mov ymm3_1110 ymm4_1110;
mov ymm3_1111 ymm6_1111;
(* vpblendw $0xaa,%ymm6,%ymm5,%ymm6                #! PC = 0x555555555205 *)
mov ymm6_0000 ymm5_0000;
mov ymm6_0001 ymm6_0001;
mov ymm6_0010 ymm5_0010;
mov ymm6_0011 ymm6_0011;
mov ymm6_0100 ymm5_0100;
mov ymm6_0101 ymm6_0101;
mov ymm6_0110 ymm5_0110;
mov ymm6_0111 ymm6_0111;
mov ymm6_1000 ymm5_1000;
mov ymm6_1001 ymm6_1001;
mov ymm6_1010 ymm5_1010;
mov ymm6_1011 ymm6_1011;
mov ymm6_1100 ymm5_1100;
mov ymm6_1101 ymm6_1101;
mov ymm6_1110 ymm5_1110;
mov ymm6_1111 ymm6_1111;
(* vpsrld $0x10,%ymm4,%ymm4                        #! PC = 0x55555555520b *)
mov ymm4_0000 ymm4_0001;
mov ymm4_0001 0@sint16;
mov ymm4_0010 ymm4_0011;
mov ymm4_0011 0@sint16;
mov ymm4_0100 ymm4_0101;
mov ymm4_0101 0@sint16;
mov ymm4_0110 ymm4_0111;
mov ymm4_0111 0@sint16;
mov ymm4_1000 ymm4_1001;
mov ymm4_1001 0@sint16;
mov ymm4_1010 ymm4_1011;
mov ymm4_1011 0@int16;
mov ymm4_1100 ymm4_1101;
mov ymm4_1101 0@sint16;
mov ymm4_1110 ymm4_1111;
mov ymm4_1111 0@sint16;
(* vpsrld $0x10,%ymm5,%ymm5                        #! PC = 0x555555555210 *)
mov ymm5_0000 ymm5_0001;
mov ymm5_0001 0@sint16;
mov ymm5_0010 ymm5_0011;
mov ymm5_0011 0@sint16;
mov ymm5_0100 ymm5_0101;
mov ymm5_0101 0@sint16;
mov ymm5_0110 ymm5_0111;
mov ymm5_0111 0@sint16;
mov ymm5_1000 ymm5_1001;
mov ymm5_1001 0@sint16;
mov ymm5_1010 ymm5_1011;
mov ymm5_1011 0@int16;
mov ymm5_1100 ymm5_1101;
mov ymm5_1101 0@sint16;
mov ymm5_1110 ymm5_1111;
mov ymm5_1111 0@sint16;
(* vpackusdw %ymm6,%ymm3,%ymm3                     #! PC = 0x555555555215 *)
assert true && ymm6_0001 = 0@16;
assert true && ymm6_0011 = 0@16;
assert true && ymm6_0101 = 0@16;
assert true && ymm6_0111 = 0@16;
assert true && ymm6_1001 = 0@16;
assert true && ymm6_1011 = 0@16;
assert true && ymm6_1101 = 0@16;
assert true && ymm6_1111 = 0@16;
assert true && ymm3_0001 = 0@16;
assert true && ymm3_0011 = 0@16;
assert true && ymm3_0101 = 0@16;
assert true && ymm3_0111 = 0@16;
assert true && ymm3_1001 = 0@16;
assert true && ymm3_1011 = 0@16;
assert true && ymm3_1101 = 0@16;
assert true && ymm3_1111 = 0@16;
mov tmp_0000 ymm3_0000;
mov tmp_0001 ymm3_0010;
mov tmp_0010 ymm3_0100;
mov tmp_0011 ymm3_0110;
mov tmp_0100 ymm6_0000;
mov tmp_0101 ymm6_0010;
mov tmp_0110 ymm6_0100;
mov tmp_0111 ymm6_0110;
mov tmp_1000 ymm3_1000;
mov tmp_1001 ymm3_1010;
mov tmp_1010 ymm3_1100;
mov tmp_1011 ymm3_1110;
mov tmp_1100 ymm6_1000;
mov tmp_1101 ymm6_1010;
mov tmp_1110 ymm6_1100;
mov tmp_1111 ymm6_1110;
mov ymm3_0000 tmp_0000;
mov ymm3_0001 tmp_0001;
mov ymm3_0010 tmp_0010;
mov ymm3_0011 tmp_0011;
mov ymm3_0100 tmp_0100;
mov ymm3_0101 tmp_0101;
mov ymm3_0110 tmp_0110;
mov ymm3_0111 tmp_0111;
mov ymm3_1000 tmp_1000;
mov ymm3_1001 tmp_1001;
mov ymm3_1010 tmp_1010;
mov ymm3_1011 tmp_1011;
mov ymm3_1100 tmp_1100;
mov ymm3_1101 tmp_1101;
mov ymm3_1110 tmp_1110;
mov ymm3_1111 tmp_1111;
(* vpackusdw %ymm5,%ymm4,%ymm4                     #! PC = 0x55555555521a *)
assert true && ymm5_0001 = 0@16;
assert true && ymm5_0011 = 0@16;
assert true && ymm5_0101 = 0@16;
assert true && ymm5_0111 = 0@16;
assert true && ymm5_1001 = 0@16;
assert true && ymm5_1011 = 0@16;
assert true && ymm5_1101 = 0@16;
assert true && ymm5_1111 = 0@16;
assert true && ymm4_0001 = 0@16;
assert true && ymm4_0011 = 0@16;
assert true && ymm4_0101 = 0@16;
assert true && ymm4_0111 = 0@16;
assert true && ymm4_1001 = 0@16;
assert true && ymm4_1011 = 0@16;
assert true && ymm4_1101 = 0@16;
assert true && ymm4_1111 = 0@16;
mov tmp_0000 ymm4_0000;
mov tmp_0001 ymm4_0010;
mov tmp_0010 ymm4_0100;
mov tmp_0011 ymm4_0110;
mov tmp_0100 ymm5_0000;
mov tmp_0101 ymm5_0010;
mov tmp_0110 ymm5_0100;
mov tmp_0111 ymm5_0110;
mov tmp_1000 ymm4_1000;
mov tmp_1001 ymm4_1010;
mov tmp_1010 ymm4_1100;
mov tmp_1011 ymm4_1110;
mov tmp_1100 ymm5_1000;
mov tmp_1101 ymm5_1010;
mov tmp_1110 ymm5_1100;
mov tmp_1111 ymm5_1110;
mov ymm4_0000 tmp_0000;
mov ymm4_0001 tmp_0001;
mov ymm4_0010 tmp_0010;
mov ymm4_0011 tmp_0011;
mov ymm4_0100 tmp_0100;
mov ymm4_0101 tmp_0101;
mov ymm4_0110 tmp_0110;
mov ymm4_0111 tmp_0111;
mov ymm4_1000 tmp_1000;
mov ymm4_1001 tmp_1001;
mov ymm4_1010 tmp_1010;
mov ymm4_1011 tmp_1011;
mov ymm4_1100 tmp_1100;
mov ymm4_1101 tmp_1101;
mov ymm4_1110 tmp_1110;
mov ymm4_1111 tmp_1111;
(* vpmullw %ymm1,%ymm7,%ymm5                       #! PC = 0x55555555521f *)
smull ymm5_0000h ymm5_0000l ymm1_0000 ymm7_0000;
cast ymm5_0000@sint16 ymm5_0000l;
smull ymm5_0001h ymm5_0001l ymm1_0001 ymm7_0001;
cast ymm5_0001@sint16 ymm5_0001l;
smull ymm5_0010h ymm5_0010l ymm1_0010 ymm7_0010;
cast ymm5_0010@sint16 ymm5_0010l;
smull ymm5_0011h ymm5_0011l ymm1_0011 ymm7_0011;
cast ymm5_0011@sint16 ymm5_0011l;
smull ymm5_0100h ymm5_0100l ymm1_0100 ymm7_0100;
cast ymm5_0100@sint16 ymm5_0100l;
smull ymm5_0101h ymm5_0101l ymm1_0101 ymm7_0101;
cast ymm5_0101@sint16 ymm5_0101l;
smull ymm5_0110h ymm5_0110l ymm1_0110 ymm7_0110;
cast ymm5_0110@sint16 ymm5_0110l;
smull ymm5_0111h ymm5_0111l ymm1_0111 ymm7_0111;
cast ymm5_0111@sint16 ymm5_0111l;
smull ymm5_1000h ymm5_1000l ymm1_1000 ymm7_1000;
cast ymm5_1000@sint16 ymm5_1000l;
smull ymm5_1001h ymm5_1001l ymm1_1001 ymm7_1001;
cast ymm5_1001@sint16 ymm5_1001l;
smull ymm5_1010h ymm5_1010l ymm1_1010 ymm7_1010;
cast ymm5_1010@sint16 ymm5_1010l;
smull ymm5_1011h ymm5_1011l ymm1_1011 ymm7_1011;
cast ymm5_1011@sint16 ymm5_1011l;
smull ymm5_1100h ymm5_1100l ymm1_1100 ymm7_1100;
cast ymm5_1100@sint16 ymm5_1100l;
smull ymm5_1101h ymm5_1101l ymm1_1101 ymm7_1101;
cast ymm5_1101@sint16 ymm5_1101l;
smull ymm5_1110h ymm5_1110l ymm1_1110 ymm7_1110;
cast ymm5_1110@sint16 ymm5_1110l;
smull ymm5_1111h ymm5_1111l ymm1_1111 ymm7_1111;
cast ymm5_1111@sint16 ymm5_1111l;
(* vpmullw %ymm1,%ymm3,%ymm1                       #! PC = 0x555555555223 *)
smull ymm1_0000h ymm1_0000l ymm1_0000 ymm3_0000;
cast ymm1_0000@sint16 ymm1_0000l;
smull ymm1_0001h ymm1_0001l ymm1_0001 ymm3_0001;
cast ymm1_0001@sint16 ymm1_0001l;
smull ymm1_0010h ymm1_0010l ymm1_0010 ymm3_0010;
cast ymm1_0010@sint16 ymm1_0010l;
smull ymm1_0011h ymm1_0011l ymm1_0011 ymm3_0011;
cast ymm1_0011@sint16 ymm1_0011l;
smull ymm1_0100h ymm1_0100l ymm1_0100 ymm3_0100;
cast ymm1_0100@sint16 ymm1_0100l;
smull ymm1_0101h ymm1_0101l ymm1_0101 ymm3_0101;
cast ymm1_0101@sint16 ymm1_0101l;
smull ymm1_0110h ymm1_0110l ymm1_0110 ymm3_0110;
cast ymm1_0110@sint16 ymm1_0110l;
smull ymm1_0111h ymm1_0111l ymm1_0111 ymm3_0111;
cast ymm1_0111@sint16 ymm1_0111l;
smull ymm1_1000h ymm1_1000l ymm1_1000 ymm3_1000;
cast ymm1_1000@sint16 ymm1_1000l;
smull ymm1_1001h ymm1_1001l ymm1_1001 ymm3_1001;
cast ymm1_1001@sint16 ymm1_1001l;
smull ymm1_1010h ymm1_1010l ymm1_1010 ymm3_1010;
cast ymm1_1010@sint16 ymm1_1010l;
smull ymm1_1011h ymm1_1011l ymm1_1011 ymm3_1011;
cast ymm1_1011@sint16 ymm1_1011l;
smull ymm1_1100h ymm1_1100l ymm1_1100 ymm3_1100;
cast ymm1_1100@sint16 ymm1_1100l;
smull ymm1_1101h ymm1_1101l ymm1_1101 ymm3_1101;
cast ymm1_1101@sint16 ymm1_1101l;
smull ymm1_1110h ymm1_1110l ymm1_1110 ymm3_1110;
cast ymm1_1110@sint16 ymm1_1110l;
smull ymm1_1111h ymm1_1111l ymm1_1111 ymm3_1111;
cast ymm1_1111@sint16 ymm1_1111l;
(* vpmulhw %ymm0,%ymm5,%ymm3                       #! PC = 0x555555555227 *)
smull ymm3_0000 ymm3_0000L ymm0_0000 ymm5_0000;
smull ymm3_0001 ymm3_0001L ymm0_0001 ymm5_0001;
smull ymm3_0010 ymm3_0010L ymm0_0010 ymm5_0010;
smull ymm3_0011 ymm3_0011L ymm0_0011 ymm5_0011;
smull ymm3_0100 ymm3_0100L ymm0_0100 ymm5_0100;
smull ymm3_0101 ymm3_0101L ymm0_0101 ymm5_0101;
smull ymm3_0110 ymm3_0110L ymm0_0110 ymm5_0110;
smull ymm3_0111 ymm3_0111L ymm0_0111 ymm5_0111;
smull ymm3_1000 ymm3_1000L ymm0_1000 ymm5_1000;
smull ymm3_1001 ymm3_1001L ymm0_1001 ymm5_1001;
smull ymm3_1010 ymm3_1010L ymm0_1010 ymm5_1010;
smull ymm3_1011 ymm3_1011L ymm0_1011 ymm5_1011;
smull ymm3_1100 ymm3_1100L ymm0_1100 ymm5_1100;
smull ymm3_1101 ymm3_1101L ymm0_1101 ymm5_1101;
smull ymm3_1110 ymm3_1110L ymm0_1110 ymm5_1110;
smull ymm3_1111 ymm3_1111L ymm0_1111 ymm5_1111;
(* vpmulhw %ymm0,%ymm1,%ymm0                       #! PC = 0x55555555522b *)
smull ymm0_0000 ymm0_0000L ymm0_0000 ymm1_0000;
smull ymm0_0001 ymm0_0001L ymm0_0001 ymm1_0001;
smull ymm0_0010 ymm0_0010L ymm0_0010 ymm1_0010;
smull ymm0_0011 ymm0_0011L ymm0_0011 ymm1_0011;
smull ymm0_0100 ymm0_0100L ymm0_0100 ymm1_0100;
smull ymm0_0101 ymm0_0101L ymm0_0101 ymm1_0101;
smull ymm0_0110 ymm0_0110L ymm0_0110 ymm1_0110;
smull ymm0_0111 ymm0_0111L ymm0_0111 ymm1_0111;
smull ymm0_1000 ymm0_1000L ymm0_1000 ymm1_1000;
smull ymm0_1001 ymm0_1001L ymm0_1001 ymm1_1001;
smull ymm0_1010 ymm0_1010L ymm0_1010 ymm1_1010;
smull ymm0_1011 ymm0_1011L ymm0_1011 ymm1_1011;
smull ymm0_1100 ymm0_1100L ymm0_1100 ymm1_1100;
smull ymm0_1101 ymm0_1101L ymm0_1101 ymm1_1101;
smull ymm0_1110 ymm0_1110L ymm0_1110 ymm1_1110;
smull ymm0_1111 ymm0_1111L ymm0_1111 ymm1_1111;
(* vpsubw %ymm3,%ymm2,%ymm1                        #! PC = 0x55555555522f *)
subb dc ymm1_0000 ymm2_0000 ymm3_0000;
subb dc ymm1_0001 ymm2_0001 ymm3_0001;
subb dc ymm1_0010 ymm2_0010 ymm3_0010;
subb dc ymm1_0011 ymm2_0011 ymm3_0011;
subb dc ymm1_0100 ymm2_0100 ymm3_0100;
subb dc ymm1_0101 ymm2_0101 ymm3_0101;
subb dc ymm1_0110 ymm2_0110 ymm3_0110;
subb dc ymm1_0111 ymm2_0111 ymm3_0111;
subb dc ymm1_1000 ymm2_1000 ymm3_1000;
subb dc ymm1_1001 ymm2_1001 ymm3_1001;
subb dc ymm1_1010 ymm2_1010 ymm3_1010;
subb dc ymm1_1011 ymm2_1011 ymm3_1011;
subb dc ymm1_1100 ymm2_1100 ymm3_1100;
subb dc ymm1_1101 ymm2_1101 ymm3_1101;
subb dc ymm1_1110 ymm2_1110 ymm3_1110;
subb dc ymm1_1111 ymm2_1111 ymm3_1111;
(* vpsubw %ymm0,%ymm4,%ymm0                        #! PC = 0x555555555233 *)
subb dc ymm0_0000 ymm4_0000 ymm0_0000;
subb dc ymm0_0001 ymm4_0001 ymm0_0001;
subb dc ymm0_0010 ymm4_0010 ymm0_0010;
subb dc ymm0_0011 ymm4_0011 ymm0_0011;
subb dc ymm0_0100 ymm4_0100 ymm0_0100;
subb dc ymm0_0101 ymm4_0101 ymm0_0101;
subb dc ymm0_0110 ymm4_0110 ymm0_0110;
subb dc ymm0_0111 ymm4_0111 ymm0_0111;
subb dc ymm0_1000 ymm4_1000 ymm0_1000;
subb dc ymm0_1001 ymm4_1001 ymm0_1001;
subb dc ymm0_1010 ymm4_1010 ymm0_1010;
subb dc ymm0_1011 ymm4_1011 ymm0_1011;
subb dc ymm0_1100 ymm4_1100 ymm0_1100;
subb dc ymm0_1101 ymm4_1101 ymm0_1101;
subb dc ymm0_1110 ymm4_1110 ymm0_1110;
subb dc ymm0_1111 ymm4_1111 ymm0_1111;
(* vmovdqu %ymm1,(%rdi)                            #! EA = L0x7fffffffd870; PC = 0x555555555237 *)
mov L0x7fffffffd870 ymm1_0000;
mov L0x7fffffffd872 ymm1_0001;
mov L0x7fffffffd874 ymm1_0010;
mov L0x7fffffffd876 ymm1_0011;
mov L0x7fffffffd878 ymm1_0100;
mov L0x7fffffffd87a ymm1_0101;
mov L0x7fffffffd87c ymm1_0110;
mov L0x7fffffffd87e ymm1_0111;
mov L0x7fffffffd880 ymm1_1000;
mov L0x7fffffffd882 ymm1_1001;
mov L0x7fffffffd884 ymm1_1010;
mov L0x7fffffffd886 ymm1_1011;
mov L0x7fffffffd888 ymm1_1100;
mov L0x7fffffffd88a ymm1_1101;
mov L0x7fffffffd88c ymm1_1110;
mov L0x7fffffffd88e ymm1_1111;
(* vmovdqu %ymm0,0x20(%rdi)                        #! EA = L0x7fffffffd890; PC = 0x55555555523b *)
mov L0x7fffffffd890 ymm0_0000;
mov L0x7fffffffd892 ymm0_0001;
mov L0x7fffffffd894 ymm0_0010;
mov L0x7fffffffd896 ymm0_0011;
mov L0x7fffffffd898 ymm0_0100;
mov L0x7fffffffd89a ymm0_0101;
mov L0x7fffffffd89c ymm0_0110;
mov L0x7fffffffd89e ymm0_0111;
mov L0x7fffffffd8a0 ymm0_1000;
mov L0x7fffffffd8a2 ymm0_1001;
mov L0x7fffffffd8a4 ymm0_1010;
mov L0x7fffffffd8a6 ymm0_1011;
mov L0x7fffffffd8a8 ymm0_1100;
mov L0x7fffffffd8aa ymm0_1101;
mov L0x7fffffffd8ac ymm0_1110;
mov L0x7fffffffd8ae ymm0_1111;
(* #! <- SP = 0x7fffffffd868 *)
#! 0x7fffffffd868 = 0x7fffffffd868;
(* #retq                                           #! PC = 0x555555555240 *)
#retq                                           #! 0x555555555240 = 0x555555555240;

(** ******************************************** **)

mov r0_0  L0x7fffffffd870;
mov r0_1  L0x7fffffffd872;
mov r0_2  L0x7fffffffd874;
mov r0_3  L0x7fffffffd876;
mov r0_4  L0x7fffffffd878;
mov r0_5  L0x7fffffffd87a;
mov r0_6  L0x7fffffffd87c;
mov r0_7  L0x7fffffffd87e;
mov r0_8  L0x7fffffffd880;
mov r0_9  L0x7fffffffd882;
mov r0_10 L0x7fffffffd884;
mov r0_11 L0x7fffffffd886;
mov r0_12 L0x7fffffffd888;
mov r0_13 L0x7fffffffd88a;
mov r0_14 L0x7fffffffd88c;
mov r0_15 L0x7fffffffd88e;

mov r1_0  L0x7fffffffd890;
mov r1_1  L0x7fffffffd892;
mov r1_2  L0x7fffffffd894;
mov r1_3  L0x7fffffffd896;
mov r1_4  L0x7fffffffd898;
mov r1_5  L0x7fffffffd89a;
mov r1_6  L0x7fffffffd89c;
mov r1_7  L0x7fffffffd89e;
mov r1_8  L0x7fffffffd8a0;
mov r1_9  L0x7fffffffd8a2;
mov r1_10 L0x7fffffffd8a4;
mov r1_11 L0x7fffffffd8a6;
mov r1_12 L0x7fffffffd8a8;
mov r1_13 L0x7fffffffd8aa;
mov r1_14 L0x7fffffffd8ac;
mov r1_15 L0x7fffffffd8ae;

{
(**
  -- this does not work in the alg. section; it works for smt though.
  and [
    eqmod (r0_0  * 169) (limbs 16 [a0_0,  a0_1])  3329,
    eqmod (r0_1  * 169) (limbs 16 [a0_2,  a0_3])  3329,
    eqmod (r0_2  * 169) (limbs 16 [a0_4,  a0_5])  3329,
    eqmod (r0_3  * 169) (limbs 16 [a0_6,  a0_7])  3329,
    eqmod (r0_4  * 169) (limbs 16 [a0_8,  a0_9])  3329,
    eqmod (r0_5  * 169) (limbs 16 [a0_10, a0_11]) 3329,
    eqmod (r0_6  * 169) (limbs 16 [a0_12, a0_13]) 3329,
    eqmod (r0_7  * 169) (limbs 16 [a0_14, a0_15]) 3329,
    eqmod (r0_8  * 169) (limbs 16 [a1_0,  a1_1])  3329,
    eqmod (r0_9  * 169) (limbs 16 [a1_2,  a1_3])  3329,
    eqmod (r0_10 * 169) (limbs 16 [a1_4,  a1_5])  3329,
    eqmod (r0_11 * 169) (limbs 16 [a1_6,  a1_7])  3329,
    eqmod (r0_12 * 169) (limbs 16 [a1_8,  a1_9])  3329,
    eqmod (r0_13 * 169) (limbs 16 [a1_10, a1_11]) 3329,
    eqmod (r0_14 * 169) (limbs 16 [a1_12, a1_13]) 3329,
    eqmod (r0_15 * 169) (limbs 16 [a1_14, a1_15]) 3329,
    eqmod (r1_0  * 169) (limbs 16 [b0_0,  b0_1])  3329,
    eqmod (r1_1  * 169) (limbs 16 [b0_2,  b0_3])  3329,
    eqmod (r1_2  * 169) (limbs 16 [b0_4,  b0_5])  3329,
    eqmod (r1_3  * 169) (limbs 16 [b0_6,  b0_7])  3329,
    eqmod (r1_4  * 169) (limbs 16 [b0_8,  b0_9])  3329,
    eqmod (r1_5  * 169) (limbs 16 [b0_10, b0_11]) 3329,
    eqmod (r1_6  * 169) (limbs 16 [b0_12, b0_13]) 3329,
    eqmod (r1_7  * 169) (limbs 16 [b0_14, b0_15]) 3329,
    eqmod (r1_8  * 169) (limbs 16 [b1_0,  b1_1])  3329,
    eqmod (r1_9  * 169) (limbs 16 [b1_2,  b1_3])  3329,
    eqmod (r1_10 * 169) (limbs 16 [b1_4,  b1_5])  3329,
    eqmod (r1_11 * 169) (limbs 16 [b1_6,  b1_7])  3329,
    eqmod (r1_12 * 169) (limbs 16 [b1_8,  b1_9])  3329,
    eqmod (r1_13 * 169) (limbs 16 [b1_10, b1_11]) 3329,
    eqmod (r1_14 * 169) (limbs 16 [b1_12, b1_13]) 3329,
    eqmod (r1_15 * 169) (limbs 16 [b1_14, b1_15]) 3329
  ]
**)
  true
  &&
  and [

    (-3329)@16 <s r0_0,  r0_0  <s (3329)@16,
    (-3329)@16 <s r0_1,  r0_1  <s (3329)@16,
    (-3329)@16 <s r0_2,  r0_2  <s (3329)@16,
    (-3329)@16 <s r0_3,  r0_3  <s (3329)@16,
    (-3329)@16 <s r0_4,  r0_4  <s (3329)@16,
    (-3329)@16 <s r0_5,  r0_5  <s (3329)@16,
    (-3329)@16 <s r0_6,  r0_6  <s (3329)@16,
    (-3329)@16 <s r0_7,  r0_7  <s (3329)@16,
    (-3329)@16 <s r0_8,  r0_8  <s (3329)@16,
    (-3329)@16 <s r0_9,  r0_9  <s (3329)@16,
    (-3329)@16 <s r0_10, r0_10 <s (3329)@16,
    (-3329)@16 <s r0_11, r0_11 <s (3329)@16,
    (-3329)@16 <s r0_12, r0_12 <s (3329)@16,
    (-3329)@16 <s r0_13, r0_13 <s (3329)@16,
    (-3329)@16 <s r0_14, r0_14 <s (3329)@16,
    (-3329)@16 <s r0_15, r0_15 <s (3329)@16,

    (-3329)@16 <s r1_0,  r1_0  <s (3329)@16,
    (-3329)@16 <s r1_1,  r1_1  <s (3329)@16,
    (-3329)@16 <s r1_2,  r1_2  <s (3329)@16,
    (-3329)@16 <s r1_3,  r1_3  <s (3329)@16,
    (-3329)@16 <s r1_4,  r1_4  <s (3329)@16,
    (-3329)@16 <s r1_5,  r1_5  <s (3329)@16,
    (-3329)@16 <s r1_6,  r1_6  <s (3329)@16,
    (-3329)@16 <s r1_7,  r1_7  <s (3329)@16,
    (-3329)@16 <s r1_8,  r1_8  <s (3329)@16,
    (-3329)@16 <s r1_9,  r1_9  <s (3329)@16,
    (-3329)@16 <s r1_10, r1_10 <s (3329)@16,
    (-3329)@16 <s r1_11, r1_11 <s (3329)@16,
    (-3329)@16 <s r1_12, r1_12 <s (3329)@16,
    (-3329)@16 <s r1_13, r1_13 <s (3329)@16,
    (-3329)@16 <s r1_14, r1_14 <s (3329)@16,
    (-3329)@16 <s r1_15, r1_15 <s (3329)@16,

    eqmod ( limbs 16 [r0_0 , 0@16] * 169@32) (limbs 16 [a0_0,  a0_1])  3329@32,
    eqmod ( limbs 16 [r0_1 , 0@16] * 169@32) (limbs 16 [a0_2,  a0_3])  3329@32,
    eqmod ( limbs 16 [r0_2 , 0@16] * 169@32) (limbs 16 [a0_4,  a0_5])  3329@32,
    eqmod ( limbs 16 [r0_3 , 0@16] * 169@32) (limbs 16 [a0_6,  a0_7])  3329@32,
    eqmod ( limbs 16 [r0_4 , 0@16] * 169@32) (limbs 16 [a0_8,  a0_9])  3329@32,
    eqmod ( limbs 16 [r0_5 , 0@16] * 169@32) (limbs 16 [a0_10, a0_11]) 3329@32,
    eqmod ( limbs 16 [r0_6 , 0@16] * 169@32) (limbs 16 [a0_12, a0_13]) 3329@32,
    eqmod ( limbs 16 [r0_7 , 0@16] * 169@32) (limbs 16 [a0_14, a0_15]) 3329@32,
    eqmod ( limbs 16 [r0_8 , 0@16] * 169@32) (limbs 16 [a1_0,  a1_1])  3329@32,
    eqmod ( limbs 16 [r0_9 , 0@16] * 169@32) (limbs 16 [a1_2,  a1_3])  3329@32,
    eqmod ( limbs 16 [r0_10, 0@16] * 169@32) (limbs 16 [a1_4,  a1_5])  3329@32,
    eqmod ( limbs 16 [r0_11, 0@16] * 169@32) (limbs 16 [a1_6,  a1_7])  3329@32,
    eqmod ( limbs 16 [r0_12, 0@16] * 169@32) (limbs 16 [a1_8,  a1_9])  3329@32,
    eqmod ( limbs 16 [r0_13, 0@16] * 169@32) (limbs 16 [a1_10, a1_11]) 3329@32,
    eqmod ( limbs 16 [r0_14, 0@16] * 169@32) (limbs 16 [a1_12, a1_13]) 3329@32,
    eqmod ( limbs 16 [r0_15, 0@16] * 169@32) (limbs 16 [a1_14, a1_15]) 3329@32,
    eqmod ( limbs 16 [r1_0 , 0@16] * 169@32) (limbs 16 [b0_0,  b0_1])  3329@32,
    eqmod ( limbs 16 [r1_1 , 0@16] * 169@32) (limbs 16 [b0_2,  b0_3])  3329@32,
    eqmod ( limbs 16 [r1_2 , 0@16] * 169@32) (limbs 16 [b0_4,  b0_5])  3329@32,
    eqmod ( limbs 16 [r1_3 , 0@16] * 169@32) (limbs 16 [b0_6,  b0_7])  3329@32,
    eqmod ( limbs 16 [r1_4 , 0@16] * 169@32) (limbs 16 [b0_8,  b0_9])  3329@32,
    eqmod ( limbs 16 [r1_5 , 0@16] * 169@32) (limbs 16 [b0_10, b0_11]) 3329@32,
    eqmod ( limbs 16 [r1_6 , 0@16] * 169@32) (limbs 16 [b0_12, b0_13]) 3329@32,
    eqmod ( limbs 16 [r1_7 , 0@16] * 169@32) (limbs 16 [b0_14, b0_15]) 3329@32,
    eqmod ( limbs 16 [r1_8 , 0@16] * 169@32) (limbs 16 [b1_0,  b1_1])  3329@32,
    eqmod ( limbs 16 [r1_9 , 0@16] * 169@32) (limbs 16 [b1_2,  b1_3])  3329@32,
    eqmod ( limbs 16 [r1_10, 0@16] * 169@32) (limbs 16 [b1_4,  b1_5])  3329@32,
    eqmod ( limbs 16 [r1_11, 0@16] * 169@32) (limbs 16 [b1_6,  b1_7])  3329@32,
    eqmod ( limbs 16 [r1_12, 0@16] * 169@32) (limbs 16 [b1_8,  b1_9])  3329@32,
    eqmod ( limbs 16 [r1_13, 0@16] * 169@32) (limbs 16 [b1_10, b1_11]) 3329@32,
    eqmod ( limbs 16 [r1_14, 0@16] * 169@32) (limbs 16 [b1_12, b1_13]) 3329@32,
    eqmod ( limbs 16 [r1_15, 0@16] * 169@32) (limbs 16 [b1_14, b1_15]) 3329@32
  ]
}

