(*
$ cv -v -isafety mul4_rsr.cl
Parsing CryptoLine file:		[OK]		0.001424 seconds
Checking well-formedness:		[OK]		0.000460 seconds
Transforming to SSA form:		[OK]		0.000170 seconds
Normalizing specification:		[OK]		0.000216 seconds
Rewriting assignments:			[OK]		0.000151 seconds
Verifying program safety:		
	 Cut 0
	     Round 1 (1 safety conditions, timeout = 300 seconds)
		 Safety condition #0	[OK]
	 Overall			[OK]		1.138208 seconds
Verifying range assertions:		[OK]		4.897444 seconds
Verifying range specification:		[OK]		0.001213 seconds
Rewriting value-preserved casting:	[OK]		0.000021 seconds
Verifying algebraic assertions:		[OK]		0.001225 seconds
Verifying algebraic specification:	[OK]		0.060819 seconds
Verification result:			[OK]		6.101746 seconds
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
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffd8e0; PC = 0x5555555551ca *)
mov L0x7fffffffd8e0 rdi;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffd960; Value = 0x00000000000000c2; PC = 0x5555555551ce *)
mov r8 L0x7fffffffd960;
(* mov    (%rdx),%rax                              #! EA = L0x7fffffffd980; Value = 0x00007ffff7fa72e8; PC = 0x5555555551d1 *)
mov rax L0x7fffffffd980;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffd968; Value = 0x00007fffffffd997; PC = 0x5555555551d4 *)
mov r9 L0x7fffffffd968;
(* mov    0x8(%rdx),%rcx                           #! EA = L0x7fffffffd988; Value = 0x00005555555553c0; PC = 0x5555555551d8 *)
mov rcx L0x7fffffffd988;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffd970; Value = 0x00007fffffffd996; PC = 0x5555555551dc *)
mov r10 L0x7fffffffd970;
(* mov    0x10(%rdx),%rdi                          #! EA = L0x7fffffffd990; Value = 0x0000000000000000; PC = 0x5555555551e0 *)
mov rdi L0x7fffffffd990;
(* mov    0x18(%rsi),%rsi                          #! EA = L0x7fffffffd978; Value = 0x000055555555540d; PC = 0x5555555551e4 *)
mov rsi L0x7fffffffd978;
(* mov    0x18(%rdx),%rbx                          #! EA = L0x7fffffffd998; Value = 0x0000555555555060; PC = 0x5555555551e8 *)
mov rbx L0x7fffffffd998;
(* mov    %r8,0x8(%rsp)                            #! EA = L0x7fffffffd8e8; PC = 0x5555555551ec *)
mov L0x7fffffffd8e8 r8;
(* mov    %r9,0x10(%rsp)                           #! EA = L0x7fffffffd8f0; PC = 0x5555555551f1 *)
mov L0x7fffffffd8f0 r9;
(* mov    %r10,0x18(%rsp)                          #! EA = L0x7fffffffd8f8; PC = 0x5555555551f6 *)
mov L0x7fffffffd8f8 r10;
(* mov    %rsi,0x20(%rsp)                          #! EA = L0x7fffffffd900; PC = 0x5555555551fb *)
mov L0x7fffffffd900 rsi;
(* xor    %rsi,%rsi                                #! PC = 0x555555555200 *)
mov rsi 0@uint64;
clear carry;
clear overflow;



(* mov    0x8(%rsp),%rdx                           #! EA = L0x7fffffffd8e8; Value = 0x00000000000000c2; PC = 0x555555555203 *)
mov rdx L0x7fffffffd8e8;
(* mulx   %rax,%r9,%r8                             #! PC = 0x555555555208 *)
mull r8 r9 rdx rax;
(* mulx   %rcx,%r11,%r10                           #! PC = 0x55555555520d *)
mull r10 r11 rdx rcx;
(* adcx   %r11,%r8                                 #! PC = 0x555555555212 *)
adcs carry r8 r8 r11 carry;
(* mulx   %rdi,%rbp,%r11                           #! PC = 0x555555555218 *)
mull r11 rbp rdx rdi;
(* adcx   %rbp,%r10                                #! PC = 0x55555555521d *)
adcs carry r10 r10 rbp carry;
(* mulx   %rbx,%rdx,%rbp                           #! PC = 0x555555555223 *)
mull rbp rdx rdx rbx;
(* adcx   %rdx,%r11                                #! PC = 0x555555555228 *)
adcs carry r11 r11 rdx carry;
(* adcx   %rsi,%rbp                                #! PC = 0x55555555522e *)
adcs carry rbp rbp rsi carry;

assert true && and [carry = 0@1, overflow = 0@1];
assume and [carry = 0, overflow = 0] && true;

(* mov    0x10(%rsp),%rdx                          #! EA = L0x7fffffffd8f0; Value = 0x00007fffffffd997; PC = 0x555555555234 *)
mov rdx L0x7fffffffd8f0;
(* mulx   %rax,%r13,%r12                           #! PC = 0x555555555239 *)
mull r12 r13 rdx rax;
(* adox   %r13,%r8                                 #! PC = 0x55555555523e *)
adcs overflow r8 r8 r13 overflow;
(* adcx   %r12,%r10                                #! PC = 0x555555555244 *)
adcs carry r10 r10 r12 carry;
(* mulx   %rcx,%r13,%r12                           #! PC = 0x55555555524a *)
mull r12 r13 rdx rcx;
(* adox   %r13,%r10                                #! PC = 0x55555555524f *)
adcs overflow r10 r10 r13 overflow;
(* adcx   %r12,%r11                                #! PC = 0x555555555255 *)
adcs carry r11 r11 r12 carry;
(* mulx   %rdi,%r13,%r12                           #! PC = 0x55555555525b *)
mull r12 r13 rdx rdi;
(* adox   %r13,%r11                                #! PC = 0x555555555260 *)
adcs overflow r11 r11 r13 overflow;
(* adcx   %r12,%rbp                                #! PC = 0x555555555266 *)
adcs carry rbp rbp r12 carry;
(* mulx   %rbx,%rdx,%r12                           #! PC = 0x55555555526c *)
mull r12 rdx rdx rbx;
(* adox   %rdx,%rbp                                #! PC = 0x555555555271 *)
adcs overflow rbp rbp rdx overflow;
(* adcx   %rsi,%r12                                #! PC = 0x555555555277 *)
adcs carry r12 r12 rsi carry;
(* adox   %rsi,%r12                                #! PC = 0x55555555527d *)
adcs overflow r12 r12 rsi overflow;

assert true && and [carry = 0@1, overflow = 0@1];
assume and [carry = 0, overflow = 0] && true;

(* mov    0x18(%rsp),%rdx                          #! EA = L0x7fffffffd8f8; Value = 0x00007fffffffd996; PC = 0x555555555283 *)
mov rdx L0x7fffffffd8f8;
(* mulx   %rax,%r14,%r13                           #! PC = 0x555555555288 *)
mull r13 r14 rdx rax;
(* adox   %r14,%r10                                #! PC = 0x55555555528d *)
adcs overflow r10 r10 r14 overflow;
(* adcx   %r13,%r11                                #! PC = 0x555555555293 *)
adcs carry r11 r11 r13 carry;
(* mulx   %rcx,%r14,%r13                           #! PC = 0x555555555299 *)
mull r13 r14 rdx rcx;
(* adox   %r14,%r11                                #! PC = 0x55555555529e *)
adcs overflow r11 r11 r14 overflow;
(* adcx   %r13,%rbp                                #! PC = 0x5555555552a4 *)
adcs carry rbp rbp r13 carry;
(* mulx   %rdi,%r14,%r13                           #! PC = 0x5555555552aa *)
mull r13 r14 rdx rdi;
(* adox   %r14,%rbp                                #! PC = 0x5555555552af *)
adcs overflow rbp rbp r14 overflow;
(* adcx   %r13,%r12                                #! PC = 0x5555555552b5 *)
adcs carry r12 r12 r13 carry;
(* mulx   %rbx,%rdx,%r13                           #! PC = 0x5555555552bb *)
mull r13 rdx rdx rbx;
(* adox   %rdx,%r12                                #! PC = 0x5555555552c0 *)
adcs overflow r12 r12 rdx overflow;
(* adcx   %rsi,%r13                                #! PC = 0x5555555552c6 *)
adcs carry r13 r13 rsi carry;
(* adox   %rsi,%r13                                #! PC = 0x5555555552cc *)
adcs overflow r13 r13 rsi overflow;

assert true && and [carry = 0@1, overflow = 0@1];
assume and [carry = 0, overflow = 0] && true;

(* mov    0x20(%rsp),%rdx                          #! EA = L0x7fffffffd900; Value = 0x000055555555540d; PC = 0x5555555552d2 *)
mov rdx L0x7fffffffd900;
(* mulx   %rax,%r14,%rax                           #! PC = 0x5555555552d7 *)
mull rax r14 rdx rax;
(* adox   %r14,%r11                                #! PC = 0x5555555552dc *)
adcs overflow r11 r11 r14 overflow;
(* adcx   %rax,%rbp                                #! PC = 0x5555555552e2 *)
adcs carry rbp rbp rax carry;
(* mulx   %rcx,%rcx,%rax                           #! PC = 0x5555555552e8 *)
mull rax rcx rdx rcx;
(* adox   %rcx,%rbp                                #! PC = 0x5555555552ed *)
adcs overflow rbp rbp rcx overflow;
(* adcx   %rax,%r12                                #! PC = 0x5555555552f3 *)
adcs carry r12 r12 rax carry;
(* mulx   %rdi,%rcx,%rax                           #! PC = 0x5555555552f9 *)
mull rax rcx rdx rdi;
(* adox   %rcx,%r12                                #! PC = 0x5555555552fe *)
adcs overflow r12 r12 rcx overflow;
(* adcx   %rax,%r13                                #! PC = 0x555555555304 *)
adcs carry r13 r13 rax carry;
(* mulx   %rbx,%rcx,%rax                           #! PC = 0x55555555530a *)
mull rax rcx rdx rbx;
(* adox   %rcx,%r13                                #! PC = 0x55555555530f *)
adcs overflow r13 r13 rcx overflow;
(* adcx   %rsi,%rax                                #! PC = 0x555555555315 *)
adcs carry rax rax rsi carry;
(* adox   %rsi,%rax                                #! PC = 0x55555555531b *)
adcs overflow rax rax rsi overflow;

assert true && and [carry = 0@1, overflow = 0@1];
assume and [carry = 0, overflow = 0] && true;

(* mov    $0x26,%rdx                               #! PC = 0x555555555321 *)
mov rdx 0x26@uint64;
(* mulx   %rbp,%rdi,%rcx                           #! PC = 0x555555555328 *)
mull rcx rdi rdx rbp;
(* adox   %rdi,%r9                                 #! PC = 0x55555555532d *)
adcs overflow r9 r9 rdi overflow;
(* adcx   %rcx,%r8                                 #! PC = 0x555555555333 *)
adcs carry r8 r8 rcx carry;
(* mulx   %r12,%rdi,%rcx                           #! PC = 0x555555555339 *)
mull rcx rdi rdx r12;
(* adox   %rdi,%r8                                 #! PC = 0x55555555533e *)
adcs overflow r8 r8 rdi overflow;
(* adcx   %rcx,%r10                                #! PC = 0x555555555344 *)
adcs carry r10 r10 rcx carry;
(* mulx   %r13,%rdi,%rcx                           #! PC = 0x55555555534a *)
mull rcx rdi rdx r13;
(* adox   %rdi,%r10                                #! PC = 0x55555555534f *)
adcs overflow r10 r10 rdi overflow;
(* adcx   %rcx,%r11                                #! PC = 0x555555555355 *)
adcs carry r11 r11 rcx carry;
(* mulx   %rax,%rcx,%rax                           #! PC = 0x55555555535b *)
mull rax rcx rdx rax;
(* adox   %rcx,%r11                                #! PC = 0x555555555360 *)
adcs overflow r11 r11 rcx overflow;
(* adcx   %rsi,%rax                                #! PC = 0x555555555366 *)
adcs carry rax rax rsi carry;
(* adox   %rsi,%rax                                #! PC = 0x55555555536c *)
adcs overflow rax rax rsi overflow;
(* imul   $0x26,%rax,%rax                          #! PC = 0x555555555372 *)
mul rax 0x26@uint64 rax;


assert true && and [carry = 0@1, overflow = 0@1];
assume and [carry = 0, overflow = 0] && true;

(* add    %rax,%r9                                 #! PC = 0x555555555376 *)
adds carry r9 r9 rax;
(* adc    %rsi,%r8                                 #! PC = 0x555555555379 *)
adcs carry r8 r8 rsi carry;
(* adc    %rsi,%r10                                #! PC = 0x55555555537c *)
adcs carry r10 r10 rsi carry;
(* adc    %rsi,%r11                                #! PC = 0x55555555537f *)
adcs carry r11 r11 rsi carry;


ghost lcarry@bit: lcarry = carry && lcarry = carry;

(* sbb    %rsi,%rsi                                #! PC = 0x555555555382 *)
sbbs carry rsi rsi rsi carry;
(* and    $0x26,%rsi                               #! PC = 0x555555555385 *)
and rsi@uint64 rsi 0x26@uint64;


assert true && or [ and [lcarry=0@1, rsi=0@64],
                    and [lcarry=1@1, rsi=0x26@64]];
assume eq rsi (lcarry * 0x26) && true; (** CHECKME **)


(* add    %rsi,%r9                                 #! PC = 0x555555555389 *)
adds carry r9 r9 rsi;


assert true && carry=0@1;
assume carry=0 && true;


(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd8e0; Value = 0x00007fffffffd940; PC = 0x55555555538c *)
mov rax L0x7fffffffd8e0;
(* mov    %r9,(%rax)                               #! EA = L0x7fffffffd940; PC = 0x555555555390 *)
mov L0x7fffffffd940 r9;
(* mov    %r8,0x8(%rax)                            #! EA = L0x7fffffffd948; PC = 0x555555555393 *)
mov L0x7fffffffd948 r8;
(* mov    %r10,0x10(%rax)                          #! EA = L0x7fffffffd950; PC = 0x555555555397 *)
mov L0x7fffffffd950 r10;
(* mov    %r11,0x18(%rax)                          #! EA = L0x7fffffffd958; PC = 0x55555555539b *)
mov L0x7fffffffd958 r11;
(* #! <- SP = 0x7fffffffd938 *)
#! 0x7fffffffd938 = 0x7fffffffd938;
(* #retq                                           #! PC = 0x5555555553bd *)
#retq                                           #! 0x5555555553bd = 0x5555555553bd;

mov r0 L0x7fffffffd940;
mov r1 L0x7fffffffd948;
mov r2 L0x7fffffffd950;
mov r3 L0x7fffffffd958;

{
  eqmod (limbs 64 [r0, r1, r2, r3])
      (limbs 64 [f0, f1, f2, f3] * limbs 64 [g0, g1, g2, g3])
      ((2**255)-19)
  &&
  true
}

