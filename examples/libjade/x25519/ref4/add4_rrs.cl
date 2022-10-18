(*
$ cv -v -isafety add4_rrs.cl
Parsing CryptoLine file:		[OK]		0.001167 seconds
Checking well-formedness:		[OK]		0.000262 seconds
Transforming to SSA form:		[OK]		0.000111 seconds
Normalizing specification:		[OK]		0.000121 seconds
Rewriting assignments:			[OK]		0.000180 seconds
Verifying program safety:		
	 Cut 0
	     Round 1 (0 safety conditions, timeout = 300 seconds)
	 Overall			[OK]		0.000778 seconds
Verifying range specification:		[OK]		1.730433 seconds
Rewriting value-preserved casting:	[OK]		0.000010 seconds
Verifying algebraic specification:	[OK]		0.001107 seconds
Verification result:			[OK]		1.734598 seconds
*)

proc main (uint64 f0, uint64 f1, uint64 f2, uint64 f3,
           uint64 g0, uint64 g1, uint64 g2, uint64 g3) =
{
  true
  &&
  true
}

mov L0x7fffffffd960 f0;
mov L0x7fffffffd968 f1;
mov L0x7fffffffd970 f2;
mov L0x7fffffffd978 f3;
mov L0x7fffffffd980 g0;
mov L0x7fffffffd988 g1;
mov L0x7fffffffd990 g2;
mov L0x7fffffffd998 g3;

nondet rdi@uint64;

(* #! -> SP = 0x7fffffffd938 *)
#! 0x7fffffffd938 = 0x7fffffffd938;
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffd910; PC = 0x5555555551cc *)
mov L0x7fffffffd910 rdi;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd960; Value = 0x00000000000000c2; PC = 0x5555555551d0 *)
mov rax L0x7fffffffd960;
(* mov    (%rdx),%rcx                              #! EA = L0x7fffffffd980; Value = 0x00007ffff7fa72e8; PC = 0x5555555551d3 *)
mov rcx L0x7fffffffd980;
(* mov    0x8(%rsi),%rdi                           #! EA = L0x7fffffffd968; Value = 0x00007fffffffd997; PC = 0x5555555551d6 *)
mov rdi L0x7fffffffd968;
(* mov    0x8(%rdx),%r8                            #! EA = L0x7fffffffd988; Value = 0x0000555555555700; PC = 0x5555555551da *)
mov r8 L0x7fffffffd988;
(* mov    0x10(%rsi),%r9                           #! EA = L0x7fffffffd970; Value = 0x00007fffffffd996; PC = 0x5555555551de *)
mov r9 L0x7fffffffd970;
(* mov    0x10(%rdx),%r10                          #! EA = L0x7fffffffd990; Value = 0x0000000000000000; PC = 0x5555555551e2 *)
mov r10 L0x7fffffffd990;
(* mov    0x18(%rsi),%rsi                          #! EA = L0x7fffffffd978; Value = 0x000055555555574d; PC = 0x5555555551e6 *)
mov rsi L0x7fffffffd978;
(* mov    0x18(%rdx),%rdx                          #! EA = L0x7fffffffd998; Value = 0x0000555555555060; PC = 0x5555555551ea *)
mov rdx L0x7fffffffd998;
(* mov    %rcx,0x8(%rsp)                           #! EA = L0x7fffffffd918; PC = 0x5555555551ee *)
mov L0x7fffffffd918 rcx;
(* mov    %r8,0x10(%rsp)                           #! EA = L0x7fffffffd920; PC = 0x5555555551f3 *)
mov L0x7fffffffd920 r8;
(* mov    %r10,0x18(%rsp)                          #! EA = L0x7fffffffd928; PC = 0x5555555551f8 *)
mov L0x7fffffffd928 r10;
(* mov    %rdx,0x20(%rsp)                          #! EA = L0x7fffffffd930; PC = 0x5555555551fd *)
mov L0x7fffffffd930 rdx;
(* xor    %rcx,%rcx                                #! PC = 0x555555555202 *)
mov rcx 0@uint64;
clear carry;
clear overflow;
(* add    0x8(%rsp),%rax                           #! EA = L0x7fffffffd918; Value = 0x00007ffff7fa72e8; PC = 0x555555555205 *)
adds carry rax rax L0x7fffffffd918;
(* adc    0x10(%rsp),%rdi                          #! EA = L0x7fffffffd920; Value = 0x0000555555555700; PC = 0x55555555520a *)
adcs carry rdi rdi L0x7fffffffd920 carry;
(* adc    0x18(%rsp),%r9                           #! EA = L0x7fffffffd928; Value = 0x0000000000000000; PC = 0x55555555520f *)
adcs carry r9 r9 L0x7fffffffd928 carry;
(* adc    0x20(%rsp),%rsi                          #! EA = L0x7fffffffd930; Value = 0x0000555555555060; PC = 0x555555555214 *)
adcs carry rsi rsi L0x7fffffffd930 carry;
(* sbb    %rcx,%rcx                                #! PC = 0x555555555219 *)
sbbs carry rcx rcx rcx carry;
(* and    $0x26,%rcx                               #! PC = 0x55555555521c *)
and rcx@uint64 rcx 0x26@uint64;
(* add    %rcx,%rax                                #! PC = 0x555555555220 *)
adds carry rax rax rcx;
(* adc    $0x0,%rdi                                #! PC = 0x555555555223 *)
adcs carry rdi rdi 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x555555555227 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%rsi                                #! PC = 0x55555555522b *)
adcs carry rsi rsi 0x0@uint64 carry;
(* sbb    %rcx,%rcx                                #! PC = 0x55555555522f *)
sbbs carry rcx rcx rcx carry;
(* and    $0x26,%rcx                               #! PC = 0x555555555232 *)
and rcx@uint64 rcx 0x26@uint64;
(* add    %rcx,%rax                                #! PC = 0x555555555236 *)
adds carry rax rax rcx;
(* mov    (%rsp),%rcx                              #! EA = L0x7fffffffd910; Value = 0x00007fffffffd940; PC = 0x555555555239 *)
mov rcx L0x7fffffffd910;
(* mov    %rax,(%rcx)                              #! EA = L0x7fffffffd940; PC = 0x55555555523d *)
mov L0x7fffffffd940 rax;
(* mov    %rdi,0x8(%rcx)                           #! EA = L0x7fffffffd948; PC = 0x555555555240 *)
mov L0x7fffffffd948 rdi;
(* mov    %r9,0x10(%rcx)                           #! EA = L0x7fffffffd950; PC = 0x555555555244 *)
mov L0x7fffffffd950 r9;
(* mov    %rsi,0x18(%rcx)                          #! EA = L0x7fffffffd958; PC = 0x555555555248 *)
mov L0x7fffffffd958 rsi;
(* #! <- SP = 0x7fffffffd938 *)
#! 0x7fffffffd938 = 0x7fffffffd938;
(* #retq                                           #! PC = 0x55555555524f *)
#retq

mov r0 L0x7fffffffd940;
mov r1 L0x7fffffffd948;
mov r2 L0x7fffffffd950;
mov r3 L0x7fffffffd958;

{
  true
  &&
  eqmod (limbs 64 [r0, r1, r2, r3, 0@64])
    (limbs 64 [f0, f1, f2, f3, 0@64] + limbs 64 [g0, g1, g2, g3, 0@64])
    ((2**255)-19)@320
}

