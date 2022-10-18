(*
Parsing CryptoLine file:		[OK]		0.002047 seconds
Checking well-formedness:		[OK]		0.000569 seconds
Transforming to SSA form:		[OK]		0.000271 seconds
Normalizing specification:		[OK]		0.000252 seconds
Rewriting assignments:			[OK]		0.000363 seconds
Verifying program safety:		
	 Cut 0
	     Round 1 (0 safety conditions, timeout = 300 seconds)
	 Overall			[OK]		0.001829 seconds
Verifying range specification:		[OK]		24.279435 seconds
Rewriting value-preserved casting:	[OK]		0.000015 seconds
Verifying algebraic specification:	[OK]		0.001140 seconds
Verification result:			[OK]		24.286734 seconds
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
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffd910; PC = 0x55555555572c *)
mov L0x7fffffffd910 rdi;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd960; Value = 0x00000000000000c2; PC = 0x555555555730 *)
mov rax L0x7fffffffd960;
(* mov    (%rdx),%rcx                              #! EA = L0x7fffffffd980; Value = 0x00007ffff7fa72e8; PC = 0x555555555733 *)
mov rcx L0x7fffffffd980;
(* mov    0x8(%rsi),%rdi                           #! EA = L0x7fffffffd968; Value = 0x00007fffffffd997; PC = 0x555555555736 *)
mov rdi L0x7fffffffd968;
(* mov    0x8(%rdx),%r8                            #! EA = L0x7fffffffd988; Value = 0x00005555555557b0; PC = 0x55555555573a *)
mov r8 L0x7fffffffd988;
(* mov    0x10(%rsi),%r9                           #! EA = L0x7fffffffd970; Value = 0x00007fffffffd996; PC = 0x55555555573e *)
mov r9 L0x7fffffffd970;
(* mov    0x10(%rdx),%r10                          #! EA = L0x7fffffffd990; Value = 0x0000000000000000; PC = 0x555555555742 *)
mov r10 L0x7fffffffd990;
(* mov    0x18(%rsi),%rsi                          #! EA = L0x7fffffffd978; Value = 0x00005555555557fd; PC = 0x555555555746 *)
mov rsi L0x7fffffffd978;
(* mov    0x18(%rdx),%rdx                          #! EA = L0x7fffffffd998; Value = 0x0000555555555060; PC = 0x55555555574a *)
mov rdx L0x7fffffffd998;
(* mov    %rcx,0x8(%rsp)                           #! EA = L0x7fffffffd918; PC = 0x55555555574e *)
mov L0x7fffffffd918 rcx;
(* mov    %r8,0x10(%rsp)                           #! EA = L0x7fffffffd920; PC = 0x555555555753 *)
mov L0x7fffffffd920 r8;
(* mov    %r10,0x18(%rsp)                          #! EA = L0x7fffffffd928; PC = 0x555555555758 *)
mov L0x7fffffffd928 r10;
(* mov    %rdx,0x20(%rsp)                          #! EA = L0x7fffffffd930; PC = 0x55555555575d *)
mov L0x7fffffffd930 rdx;
(* xor    %rcx,%rcx                                #! PC = 0x555555555762 *)
mov rcx 0@uint64;
clear carry;
clear overflow;
(* sub    0x8(%rsp),%rax                           #! EA = L0x7fffffffd918; Value = 0x00007ffff7fa72e8; PC = 0x555555555765 *)
subb carry rax rax L0x7fffffffd918;
(* sbb    0x10(%rsp),%rdi                          #! EA = L0x7fffffffd920; Value = 0x00005555555557b0; PC = 0x55555555576a *)
sbbs carry rdi rdi L0x7fffffffd920 carry;
(* sbb    0x18(%rsp),%r9                           #! EA = L0x7fffffffd928; Value = 0x0000000000000000; PC = 0x55555555576f *)
sbbs carry r9 r9 L0x7fffffffd928 carry;
(* sbb    0x20(%rsp),%rsi                          #! EA = L0x7fffffffd930; Value = 0x0000555555555060; PC = 0x555555555774 *)
sbbs carry rsi rsi L0x7fffffffd930 carry;
(* sbb    %rcx,%rcx                                #! PC = 0x555555555779 *)
sbbs carry rcx rcx rcx carry;
(* and    $0x26,%rcx                               #! PC = 0x55555555577c *)
and rcx@uint64 rcx 0x26@uint64;
(* sub    %rcx,%rax                                #! PC = 0x555555555780 *)
subb carry rax rax rcx;
(* sbb    $0x0,%rdi                                #! PC = 0x555555555783 *)
sbbs carry rdi rdi 0x0@uint64 carry;
(* sbb    $0x0,%r9                                 #! PC = 0x555555555787 *)
sbbs carry r9 r9 0x0@uint64 carry;
(* sbb    $0x0,%rsi                                #! PC = 0x55555555578b *)
sbbs carry rsi rsi 0x0@uint64 carry;
(* sbb    %rcx,%rcx                                #! PC = 0x55555555578f *)
sbbs carry rcx rcx rcx carry;
(* and    $0x26,%rcx                               #! PC = 0x555555555792 *)
and rcx@uint64 rcx 0x26@uint64;
(* sub    %rcx,%rax                                #! PC = 0x555555555796 *)
subb carry rax rax rcx;
(* mov    (%rsp),%rcx                              #! EA = L0x7fffffffd910; Value = 0x00007fffffffd940; PC = 0x555555555799 *)
mov rcx L0x7fffffffd910;
(* mov    %rax,(%rcx)                              #! EA = L0x7fffffffd940; PC = 0x55555555579d *)
mov L0x7fffffffd940 rax;
(* mov    %rdi,0x8(%rcx)                           #! EA = L0x7fffffffd948; PC = 0x5555555557a0 *)
mov L0x7fffffffd948 rdi;
(* mov    %r9,0x10(%rcx)                           #! EA = L0x7fffffffd950; PC = 0x5555555557a4 *)
mov L0x7fffffffd950 r9;
(* mov    %rsi,0x18(%rcx)                          #! EA = L0x7fffffffd958; PC = 0x5555555557a8 *)
mov L0x7fffffffd958 rsi;
(* #! <- SP = 0x7fffffffd938 *)
#! 0x7fffffffd938 = 0x7fffffffd938;
(* #retq                                           #! PC = 0x5555555557af *)
#retq                                           #! 0x5555555557af = 0x5555555557af;

mov r0 L0x7fffffffd940;
mov r1 L0x7fffffffd948;
mov r2 L0x7fffffffd950;
mov r3 L0x7fffffffd958;

{
  true
  &&
  eqsmod (limbs 64 [r0, r1, r2, r3, 0@64])
    (limbs 64 [f0, f1, f2, f3, 0@64] - limbs 64 [g0, g1, g2, g3, 0@64])
    ((2**255)-19)@320
}
