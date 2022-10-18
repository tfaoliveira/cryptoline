(*
Parsing CryptoLine file:		[OK]		0.002034 seconds
Checking well-formedness:		[OK]		0.000920 seconds
Transforming to SSA form:		[OK]		0.000149 seconds
Normalizing specification:		[OK]		0.000200 seconds
Rewriting assignments:			[OK]		0.000217 seconds
Verifying program safety:		
	 Cut 0
	     Round 1 (2 safety conditions, timeout = 300 seconds)
		 Safety condition #0	[OK]
		 Safety condition #1	[OK]
	 Overall			[OK]		1.643628 seconds
Verifying range assertions:		[OK]		9.076184 seconds
Verifying range specification:		[OK]		0.001366 seconds
Rewriting value-preserved casting:	[OK]		0.000040 seconds
Verifying algebraic assertions:		[OK]		0.104451 seconds
Verifying algebraic specification:	[OK]		0.062597 seconds
Verification result:			[OK]		10.892181 seconds
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
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffd8d0; PC = 0x5555555551c0 *)
mov L0x7fffffffd8d0 rdi;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd960; Value = 0x00000000000000c2; PC = 0x5555555551c4 *)
mov rax L0x7fffffffd960;
(* mov    (%rdx),%rcx                              #! EA = L0x7fffffffd980; Value = 0x00007ffff7fa72e8; PC = 0x5555555551c7 *)
mov rcx L0x7fffffffd980;
(* mov    0x8(%rsi),%rdi                           #! EA = L0x7fffffffd968; Value = 0x00007fffffffd997; PC = 0x5555555551ca *)
mov rdi L0x7fffffffd968;
(* mov    0x8(%rdx),%r8                            #! EA = L0x7fffffffd988; Value = 0x0000555555555450; PC = 0x5555555551ce *)
mov r8 L0x7fffffffd988;
(* mov    0x10(%rsi),%r9                           #! EA = L0x7fffffffd970; Value = 0x00007fffffffd996; PC = 0x5555555551d2 *)
mov r9 L0x7fffffffd970;
(* mov    0x10(%rdx),%r10                          #! EA = L0x7fffffffd990; Value = 0x0000000000000000; PC = 0x5555555551d6 *)
mov r10 L0x7fffffffd990;
(* mov    0x18(%rsi),%rsi                          #! EA = L0x7fffffffd978; Value = 0x000055555555549d; PC = 0x5555555551da *)
mov rsi L0x7fffffffd978;
(* mov    0x18(%rdx),%rdx                          #! EA = L0x7fffffffd998; Value = 0x0000555555555060; PC = 0x5555555551de *)
mov rdx L0x7fffffffd998;
(* mov    %rax,0x8(%rsp)                           #! EA = L0x7fffffffd8d8; PC = 0x5555555551e2 *)
mov L0x7fffffffd8d8 rax;
(* mov    %rdi,0x10(%rsp)                          #! EA = L0x7fffffffd8e0; PC = 0x5555555551e7 *)
mov L0x7fffffffd8e0 rdi;
(* mov    %r9,0x18(%rsp)                           #! EA = L0x7fffffffd8e8; PC = 0x5555555551ec *)
mov L0x7fffffffd8e8 r9;
(* mov    %rsi,0x20(%rsp)                          #! EA = L0x7fffffffd8f0; PC = 0x5555555551f1 *)
mov L0x7fffffffd8f0 rsi;
(* mov    %rcx,0x28(%rsp)                          #! EA = L0x7fffffffd8f8; PC = 0x5555555551f6 *)
mov L0x7fffffffd8f8 rcx;
(* mov    %r8,0x30(%rsp)                           #! EA = L0x7fffffffd900; PC = 0x5555555551fb *)
mov L0x7fffffffd900 r8;
(* mov    %r10,0x38(%rsp)                          #! EA = L0x7fffffffd908; PC = 0x555555555200 *)
mov L0x7fffffffd908 r10;
(* mov    %rdx,0x40(%rsp)                          #! EA = L0x7fffffffd910; PC = 0x555555555205 *)
mov L0x7fffffffd910 rdx;

(** Jasmin :  for i = 2 to 8 { z[i] = #MOV(0); } **)

(* mov    $0x0,%rdi                                #! PC = 0x55555555520a *)
mov rdi 0x0@uint64;
(* mov    $0x0,%rbp                                #! PC = 0x555555555211 *)
mov rbp 0x0@uint64;
(* mov    $0x0,%rsi                                #! PC = 0x555555555218 *)
mov rsi 0x0@uint64;
(* mov    $0x0,%rbx                                #! PC = 0x55555555521f *)
mov rbx 0x0@uint64;
(* mov    $0x0,%r12                                #! PC = 0x555555555226 *)
mov r12 0x0@uint64;
(* mov    $0x0,%r11                                #! PC = 0x55555555522d *)
mov r11 0x0@uint64;


(* mov    0x8(%rsp),%r9                            #! EA = L0x7fffffffd8d8; Value = 0x00000000000000c2; PC = 0x555555555234 *)
mov r9 L0x7fffffffd8d8;                            (** x[0] = xa[0]; **)
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd8f8; Value = 0x00007ffff7fa72e8; PC = 0x555555555239 *)
mov rax L0x7fffffffd8f8;                           (** y[j] = ya[j]; **)
(* mul    %r9                                      #! PC = 0x55555555523e *)
mull rdx rax rax r9;                               (** h, l = y[j] * x[0]; **)
(* mov    %rax,%r8                                 #! PC = 0x555555555241 *)
mov r8 rax;                                        (** z[0] = l; **)
(* mov    %rdx,%rcx                                #! PC = 0x555555555244 *)
mov rcx rdx;                                       (** z[0] = l; **)

assert eq (limbs 64 [r8, rcx, rdi, rbp, rsi, rbx, r12, r11])
          (limbs 64 [f0] * limbs 64 [g0])
       &&
       true;

(* mov    0x30(%rsp),%rax                          #! EA = L0x7fffffffd900; Value = 0x0000555555555450; PC = 0x555555555247 *)
mov rax L0x7fffffffd900;                           (** y[j=1] = ya[j=1]; **)
(* mul    %r9                                      #! PC = 0x55555555524c *)
mull rdx rax rax r9;
(* add    %rax,%rcx                                #! PC = 0x55555555524f *)
adds carry rcx rcx rax;
(* adc    %rdx,%rdi                                #! PC = 0x555555555252 *)
adcs carry rdi rdi rdx carry;

assert true && carry=0@1;
assume carry=0 && true;

assert eq (limbs 64 [r8, rcx, rdi, rbp, rsi, rbx, r12, r11])
          (limbs 64 [f0] * limbs 64 [g0, g1])
       &&
       true;

(* mov    0x38(%rsp),%rax                          #! EA = L0x7fffffffd908; Value = 0x0000000000000000; PC = 0x555555555255 *)
mov rax L0x7fffffffd908;
(* mul    %r9                                      #! PC = 0x55555555525a *)
mull rdx rax rax r9;
(* add    %rax,%rdi                                #! PC = 0x55555555525d *)
adds carry rdi rdi rax;
(* adc    %rdx,%rbp                                #! PC = 0x555555555260 *)
adcs carry rbp rbp rdx carry;


assert true && carry=0@1;
assume carry=0 && true;

assert eq (limbs 64 [r8, rcx, rdi, rbp, rsi, rbx, r12, r11])
          (limbs 64 [f0] * limbs 64 [g0, g1, g2])
       &&
       true;


(* mov    0x40(%rsp),%rax                          #! EA = L0x7fffffffd910; Value = 0x0000555555555060; PC = 0x555555555263 *)
mov rax L0x7fffffffd910;
(* mul    %r9                                      #! PC = 0x555555555268 *)
mull rdx rax rax r9;
(* add    %rax,%rbp                                #! PC = 0x55555555526b *)
adds carry rbp rbp rax;
(* adc    %rdx,%rsi                                #! PC = 0x55555555526e *)
adcs carry rsi rsi rdx carry;


assert true && carry=0@1;
assume carry=0 && true;

assert eq (limbs 64 [r8, rcx, rdi, rbp, rsi, rbx, r12, r11])
          (limbs 64 [f0] * limbs 64 [g0, g1, g2, g3])
       &&
       true;


(* mov    0x10(%rsp),%r9                           #! EA = L0x7fffffffd8e0; Value = 0x00007fffffffd997; PC = 0x555555555271 *)
mov r9 L0x7fffffffd8e0;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd8f8; Value = 0x00007ffff7fa72e8; PC = 0x555555555276 *)
mov rax L0x7fffffffd8f8;
(* mul    %r9                                      #! PC = 0x55555555527b *)
mull rdx rax rax r9;
(* add    %rax,%rcx                                #! PC = 0x55555555527e *)
adds carry rcx rcx rax;
(* mov    $0x0,%r10                                #! PC = 0x555555555281 *)
mov r10 0x0@uint64;
(* adc    %rdx,%r10                                #! PC = 0x555555555288 *)
adcs carry r10 r10 rdx carry;


assert true && carry=0@1;
assume carry=0 && true;


(* mov    0x30(%rsp),%rax                          #! EA = L0x7fffffffd900; Value = 0x0000555555555450; PC = 0x55555555528b *)
mov rax L0x7fffffffd900;
(* mul    %r9                                      #! PC = 0x555555555290 *)
mull rdx rax rax r9;
(* add    %rax,%rdi                                #! PC = 0x555555555293 *)
adds carry rdi rdi rax;
(* adc    $0x0,%rdx                                #! PC = 0x555555555296 *)
adcs carry rdx rdx 0x0@uint64 carry;


assert true && carry=0@1;
assume carry=0 && true;


(* add    %r10,%rdi                                #! PC = 0x55555555529a *)
adds carry rdi rdi r10;
(* mov    $0x0,%r10                                #! PC = 0x55555555529d *)
mov r10 0x0@uint64;
(* adc    %rdx,%r10                                #! PC = 0x5555555552a4 *)
adcs carry r10 r10 rdx carry;


assert true && carry=0@1;
assume carry=0 && true;


(* mov    0x38(%rsp),%rax                          #! EA = L0x7fffffffd908; Value = 0x0000000000000000; PC = 0x5555555552a7 *)
mov rax L0x7fffffffd908;
(* mul    %r9                                      #! PC = 0x5555555552ac *)
mull rdx rax rax r9;
(* add    %rax,%rbp                                #! PC = 0x5555555552af *)
adds carry rbp rbp rax;
(* adc    $0x0,%rdx                                #! PC = 0x5555555552b2 *)
adcs carry rdx rdx 0x0@uint64 carry;


assert true && carry=0@1;
assume carry=0 && true;


(* add    %r10,%rbp                                #! PC = 0x5555555552b6 *)
adds carry rbp rbp r10;
(* mov    $0x0,%r10                                #! PC = 0x5555555552b9 *)
mov r10 0x0@uint64;
(* adc    %rdx,%r10                                #! PC = 0x5555555552c0 *)
adcs carry r10 r10 rdx carry;


assert true && carry=0@1;
assume carry=0 && true;


(* mov    0x40(%rsp),%rax                          #! EA = L0x7fffffffd910; Value = 0x0000555555555060; PC = 0x5555555552c3 *)
mov rax L0x7fffffffd910;
(* mul    %r9                                      #! PC = 0x5555555552c8 *)
mull rdx rax rax r9;
(* add    %rax,%rsi                                #! PC = 0x5555555552cb *)
adds carry rsi rsi rax;
(* adc    $0x0,%rdx                                #! PC = 0x5555555552ce *)
adcs carry rdx rdx 0x0@uint64 carry;


assert true && carry=0@1;
assume carry=0 && true;


(* add    %r10,%rsi                                #! PC = 0x5555555552d2 *)
adds carry rsi rsi r10;
(* adc    %rdx,%rbx                                #! PC = 0x5555555552d5 *)
adcs carry rbx rbx rdx carry;


assert true && carry=0@1;
assume carry=0 && true;


(* mov    0x18(%rsp),%r9                           #! EA = L0x7fffffffd8e8; Value = 0x00007fffffffd996; PC = 0x5555555552d8 *)
mov r9 L0x7fffffffd8e8;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd8f8; Value = 0x00007ffff7fa72e8; PC = 0x5555555552dd *)
mov rax L0x7fffffffd8f8;
(* mul    %r9                                      #! PC = 0x5555555552e2 *)
mull rdx rax rax r9;
(* add    %rax,%rdi                                #! PC = 0x5555555552e5 *)
adds carry rdi rdi rax;
(* mov    $0x0,%r10                                #! PC = 0x5555555552e8 *)
mov r10 0x0@uint64;
(* adc    %rdx,%r10                                #! PC = 0x5555555552ef *)
adcs carry r10 r10 rdx carry;


assert true && carry=0@1;
assume carry=0 && true;


(* mov    0x30(%rsp),%rax                          #! EA = L0x7fffffffd900; Value = 0x0000555555555450; PC = 0x5555555552f2 *)
mov rax L0x7fffffffd900;
(* mul    %r9                                      #! PC = 0x5555555552f7 *)
mull rdx rax rax r9;
(* add    %rax,%rbp                                #! PC = 0x5555555552fa *)
adds carry rbp rbp rax;
(* adc    $0x0,%rdx                                #! PC = 0x5555555552fd *)
adcs carry rdx rdx 0x0@uint64 carry;


assert true && carry=0@1;
assume carry=0 && true;


(* add    %r10,%rbp                                #! PC = 0x555555555301 *)
adds carry rbp rbp r10;
(* mov    $0x0,%r10                                #! PC = 0x555555555304 *)
mov r10 0x0@uint64;
(* adc    %rdx,%r10                                #! PC = 0x55555555530b *)
adcs carry r10 r10 rdx carry;


assert true && carry=0@1;
assume carry=0 && true;



(* mov    0x38(%rsp),%rax                          #! EA = L0x7fffffffd908; Value = 0x0000000000000000; PC = 0x55555555530e *)
mov rax L0x7fffffffd908;
(* mul    %r9                                      #! PC = 0x555555555313 *)
mull rdx rax rax r9;
(* add    %rax,%rsi                                #! PC = 0x555555555316 *)
adds carry rsi rsi rax;
(* adc    $0x0,%rdx                                #! PC = 0x555555555319 *)
adcs carry rdx rdx 0x0@uint64 carry;


assert true && carry=0@1;
assume carry=0 && true;


(* add    %r10,%rsi                                #! PC = 0x55555555531d *)
adds carry rsi rsi r10;
(* mov    $0x0,%r10                                #! PC = 0x555555555320 *)
mov r10 0x0@uint64;
(* adc    %rdx,%r10                                #! PC = 0x555555555327 *)
adcs carry r10 r10 rdx carry;


assert true && carry=0@1;
assume carry=0 && true;


(* mov    0x40(%rsp),%rax                          #! EA = L0x7fffffffd910; Value = 0x0000555555555060; PC = 0x55555555532a *)
mov rax L0x7fffffffd910;
(* mul    %r9                                      #! PC = 0x55555555532f *)
mull rdx rax rax r9;
(* add    %rax,%rbx                                #! PC = 0x555555555332 *)
adds carry rbx rbx rax;
(* adc    $0x0,%rdx                                #! PC = 0x555555555335 *)
adcs carry rdx rdx 0x0@uint64 carry;


assert true && carry=0@1;
assume carry=0 && true;


(* add    %r10,%rbx                                #! PC = 0x555555555339 *)
adds carry rbx rbx r10;
(* adc    %rdx,%r12                                #! PC = 0x55555555533c *)
adcs carry r12 r12 rdx carry;


assert true && carry=0@1;
assume carry=0 && true;


(* mov    0x20(%rsp),%r9                           #! EA = L0x7fffffffd8f0; Value = 0x000055555555549d; PC = 0x55555555533f *)
mov r9 L0x7fffffffd8f0;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd8f8; Value = 0x00007ffff7fa72e8; PC = 0x555555555344 *)
mov rax L0x7fffffffd8f8;
(* mul    %r9                                      #! PC = 0x555555555349 *)
mull rdx rax rax r9;
(* add    %rax,%rbp                                #! PC = 0x55555555534c *)
adds carry rbp rbp rax;
(* mov    $0x0,%r10                                #! PC = 0x55555555534f *)
mov r10 0x0@uint64;
(* adc    %rdx,%r10                                #! PC = 0x555555555356 *)
adcs carry r10 r10 rdx carry;


assert true && carry=0@1;
assume carry=0 && true;


(* mov    0x30(%rsp),%rax                          #! EA = L0x7fffffffd900; Value = 0x0000555555555450; PC = 0x555555555359 *)
mov rax L0x7fffffffd900;
(* mul    %r9                                      #! PC = 0x55555555535e *)
mull rdx rax rax r9;
(* add    %rax,%rsi                                #! PC = 0x555555555361 *)
adds carry rsi rsi rax;
(* adc    $0x0,%rdx                                #! PC = 0x555555555364 *)
adcs carry rdx rdx 0x0@uint64 carry;


assert true && carry=0@1;
assume carry=0 && true;


(* add    %r10,%rsi                                #! PC = 0x555555555368 *)
adds carry rsi rsi r10;
(* mov    $0x0,%r10                                #! PC = 0x55555555536b *)
mov r10 0x0@uint64;
(* adc    %rdx,%r10                                #! PC = 0x555555555372 *)
adcs carry r10 r10 rdx carry;


assert true && carry=0@1;
assume carry=0 && true;


(* mov    0x38(%rsp),%rax                          #! EA = L0x7fffffffd908; Value = 0x0000000000000000; PC = 0x555555555375 *)
mov rax L0x7fffffffd908;
(* mul    %r9                                      #! PC = 0x55555555537a *)
mull rdx rax rax r9;
(* add    %rax,%rbx                                #! PC = 0x55555555537d *)
adds carry rbx rbx rax;
(* adc    $0x0,%rdx                                #! PC = 0x555555555380 *)
adcs carry rdx rdx 0x0@uint64 carry;


assert true && carry=0@1;
assume carry=0 && true;


(* add    %r10,%rbx                                #! PC = 0x555555555384 *)
adds carry rbx rbx r10;
(* mov    $0x0,%r10                                #! PC = 0x555555555387 *)
mov r10 0x0@uint64;
(* adc    %rdx,%r10                                #! PC = 0x55555555538e *)
adcs carry r10 r10 rdx carry;


assert true && carry=0@1;
assume carry=0 && true;


(* mov    0x40(%rsp),%rax                          #! EA = L0x7fffffffd910; Value = 0x0000555555555060; PC = 0x555555555391 *)
mov rax L0x7fffffffd910;
(* mul    %r9                                      #! PC = 0x555555555396 *)
mull rdx rax rax r9;
(* add    %rax,%r12                                #! PC = 0x555555555399 *)
adds carry r12 r12 rax;
(* adc    $0x0,%rdx                                #! PC = 0x55555555539c *)
adcs carry rdx rdx 0x0@uint64 carry;


assert true && carry=0@1;
assume carry=0 && true;


(* add    %r10,%r12                                #! PC = 0x5555555553a0 *)
adds carry r12 r12 r10;
(* adc    %rdx,%r11                                #! PC = 0x5555555553a3 *)
adcs carry r11 r11 rdx carry;


assert true && carry=0@1;
assume carry=0 && true;


assert eqmod (limbs 64 [r8, rcx, rdi, rbp, rsi, rbx, r12, r11])
             (limbs 64 [f0, f1, f2, f3] * limbs 64 [g0, g1, g2, g3])
             ((2**255)-19)
       &&
       true;

(* mov    $0x26,%r9                                #! PC = 0x5555555553a6 *)
mov r9 0x26@uint64;
(* mov    %rsi,%rax                                #! PC = 0x5555555553ad *)
mov rax rsi;
(* mul    %r9                                      #! PC = 0x5555555553b0 *)
mull rdx rax rax r9;
(* mov    %rax,%rsi                                #! PC = 0x5555555553b3 *)
mov rsi rax;
(* mov    %rdx,%r10                                #! PC = 0x5555555553b6 *)
mov r10 rdx;
(* mov    %rbx,%rax                                #! PC = 0x5555555553b9 *)
mov rax rbx;
(* mul    %r9                                      #! PC = 0x5555555553bc *)
mull rdx rax rax r9;
(* add    %rax,%r10                                #! PC = 0x5555555553bf *)
adds carry r10 r10 rax;
(* mov    $0x0,%rbx                                #! PC = 0x5555555553c2 *)
mov rbx 0x0@uint64;
(* mov    %r12,%rax                                #! PC = 0x5555555553c9 *)
mov rax r12;
(* adc    %rdx,%rbx                                #! PC = 0x5555555553cc *)
adcs carry rbx rbx rdx carry;


assert true && carry=0@1;
assume carry=0 && true;


(* mul    %r9                                      #! PC = 0x5555555553cf *)
mull rdx rax rax r9;
(* add    %rax,%rbx                                #! PC = 0x5555555553d2 *)
adds carry rbx rbx rax;
(* mov    $0x0,%r12                                #! PC = 0x5555555553d5 *)
mov r12 0x0@uint64;
(* mov    %r11,%rax                                #! PC = 0x5555555553dc *)
mov rax r11;
(* adc    %rdx,%r12                                #! PC = 0x5555555553df *)
adcs carry r12 r12 rdx carry;


assert true && carry=0@1;
assume carry=0 && true;


(* mul    %r9                                      #! PC = 0x5555555553e2 *)
mull rdx rax rax r9;
(* add    %rax,%r12                                #! PC = 0x5555555553e5 *)
adds carry r12 r12 rax;
(* mov    $0x0,%rax                                #! PC = 0x5555555553e8 *)
mov rax 0x0@uint64;
(* adc    %rdx,%rax                                #! PC = 0x5555555553ef *)
adcs carry rax rax rdx carry;


assert true && carry=0@1;
assume carry=0 && true;


(* add    %r8,%rsi                                 #! PC = 0x5555555553f2 *)
adds carry rsi rsi r8;
(* adc    %rcx,%r10                                #! PC = 0x5555555553f5 *)
adcs carry r10 r10 rcx carry;
(* adc    %rdi,%rbx                                #! PC = 0x5555555553f8 *)
adcs carry rbx rbx rdi carry;
(* adc    %rbp,%r12                                #! PC = 0x5555555553fb *)
adcs carry r12 r12 rbp carry;
(* adc    $0x0,%rax                                #! PC = 0x5555555553fe *)
adcs carry rax rax 0x0@uint64 carry;


assert true && carry=0@1;
assume carry=0 && true;


(* imul   $0x26,%rax,%rax                          #! PC = 0x555555555402 *)
mul rax 0x26@uint64 rax;
(* mov    $0x0,%rcx                                #! PC = 0x555555555406 *)
mov rcx 0x0@uint64;
(* add    %rax,%rsi                                #! PC = 0x55555555540d *)
adds carry rsi rsi rax;
(* adc    %rcx,%r10                                #! PC = 0x555555555410 *)
adcs carry r10 r10 rcx carry;
(* adc    %rcx,%rbx                                #! PC = 0x555555555413 *)
adcs carry rbx rbx rcx carry;
(* adc    %rcx,%r12                                #! PC = 0x555555555416 *)
adcs carry r12 r12 rcx carry;
(* adc    %rcx,%rcx                                #! PC = 0x555555555419 *)
adcs carry rcx rcx rcx carry;


assert true && carry=0@1;
assume carry=0 && true;


(* imul   $0x26,%rcx,%rax                          #! PC = 0x55555555541c *)
mul rax 0x26@uint64 rcx;
(* add    %rax,%rsi                                #! PC = 0x555555555420 *)
adds carry rsi rsi rax;


assert true && carry=0@1;
assume carry=0 && true;


(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd8d0; Value = 0x00007fffffffd940; PC = 0x555555555423 *)
mov rax L0x7fffffffd8d0;


(* mov    %rsi,(%rax)                              #! EA = L0x7fffffffd940; PC = 0x555555555427 *)
mov L0x7fffffffd940 rsi;
(* mov    %r10,0x8(%rax)                           #! EA = L0x7fffffffd948; PC = 0x55555555542a *)
mov L0x7fffffffd948 r10;
(* mov    %rbx,0x10(%rax)                          #! EA = L0x7fffffffd950; PC = 0x55555555542e *)
mov L0x7fffffffd950 rbx;
(* mov    %r12,0x18(%rax)                          #! EA = L0x7fffffffd958; PC = 0x555555555432 *)
mov L0x7fffffffd958 r12;
(* #! <- SP = 0x7fffffffd938 *)
#! 0x7fffffffd938 = 0x7fffffffd938;
(* #retq                                           #! PC = 0x55555555544a *)
#retq                                           #! 0x55555555544a = 0x55555555544a;


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

