(*
Parsing CryptoLine file:		[OK]		0.004709 seconds
Checking well-formedness:		[OK]		0.001301 seconds
Transforming to SSA form:		[OK]		0.000750 seconds
Normalizing specification:		[OK]		0.000573 seconds
Rewriting assignments:			[OK]		0.000697 seconds
Verifying program safety:		
	 Cut 0
	     Round 1 (0 safety conditions, timeout = 300 seconds)
	 Overall			[OK]		0.003997 seconds
Verifying range assertions:		[OK]		0.573700 seconds
Verifying range specification:		[OK]		0.001235 seconds
Rewriting value-preserved casting:	[OK]		0.000018 seconds
Verifying algebraic assertions:		[OK]		0.001148 seconds
Verifying algebraic specification:	[OK]		0.057112 seconds
Verification result:			[OK]		0.646902 seconds
*)

proc main (uint64 h0, uint64 h1, uint64 h2,
           uint64 r0, uint64 r1, uint64 r2) =
{
  4 * r2 = 5 * r1
  &&
  and [ r0 < (0x0ffffffc0fffffff)@64,
        r1 < (0x0ffffffc0ffffffc)@64,
        4@64 * r2 = 5@64 * r1,
        r2 <= ((2**58 - 2**32 + 2**26 - 1) * 5)@64,
        h2 <= 6@64]
}

mov L0x7fffffffd990 h0;
mov L0x7fffffffd998 h1;
mov L0x7fffffffd9a0 h2;

mov L0x7fffffffd9b0 r0;
mov L0x7fffffffd9b8 r1;
mov L0x7fffffffd9c0 r2;

nondet rdi@uint64;


(* #! -> SP = 0x7fffffffd988 *)
#! 0x7fffffffd988 = 0x7fffffffd988;
(* mov    (%rdi),%r8                               #! EA = L0x7fffffffd990; Value = 0x00007fffffffd9b6; PC = 0x5555555551bb *)
mov r8 L0x7fffffffd990;
(* mov    (%rsi),%rbp                              #! EA = L0x7fffffffd9b0; Value = 0x0000000000000000; PC = 0x5555555551be *)
mov rbp L0x7fffffffd9b0;
(* mov    0x8(%rdi),%r11                           #! EA = L0x7fffffffd998; Value = 0x00005555555552ad; PC = 0x5555555551c1 *)
mov r11 L0x7fffffffd998;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffd9b8; Value = 0x0000555555555060; PC = 0x5555555551c5 *)
mov r9 L0x7fffffffd9b8;
(* mov    0x10(%rdi),%rcx                          #! EA = L0x7fffffffd9a0; Value = 0x00007ffff7fa72e8; PC = 0x5555555551c9 *)
mov rcx L0x7fffffffd9a0;
(* mov    0x10(%rsi),%rbx                          #! EA = L0x7fffffffd9c0; Value = 0x00007fffffffdac0; PC = 0x5555555551cd *)
mov rbx L0x7fffffffd9c0;
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffd968; PC = 0x5555555551d1 *)
mov L0x7fffffffd968 rdi;


(* mov    %rbx,%rdi                                #! PC = 0x5555555551d5 *)
mov rdi rbx;                                       (** t2 = r[2]; **)
(* imul   %rcx,%rdi                                #! PC = 0x5555555551d8 *)
umull dontcare rdi rcx rdi;                        (** t2 *= h[2]; **)

assert true && (dontcare = 0@64);
assume (dontcare = 0) && true;

(* imul   %rbp,%rcx                                #! PC = 0x5555555551dc *)
umull dontcare rcx rbp rcx;                        (** h[2] *= r[0]; **)

assert true && (dontcare = 0@64);
assume (dontcare = 0) && true;


(* mov    %rbp,%rax                                #! PC = 0x5555555551e0 *)
mov rax rbp;                                       (** rax = r[0]; **)
(* mul    %r8                                      #! PC = 0x5555555551e3 *)
mull rdx rax rax r8;                               (** rdx, rax = rax * h[0]; **)
(* mov    %rax,%rsi                                #! PC = 0x5555555551e6 *)
mov rsi rax;                                       (** t0 = rax; **)
(* mov    %rdx,%r10                                #! PC = 0x5555555551e9 *)
mov r10 rdx;                                       (** t1 = rdx; **)
(* mov    %rbp,%rax                                #! PC = 0x5555555551ec *)
mov rax rbp;                                       (** rax = r[0]; **)
(* mul    %r11                                     #! PC = 0x5555555551ef *)
mull rdx rax rax r11;                              (** rdx, rax = rax * h[1]; **)
(* add    %rax,%r10                                #! PC = 0x5555555551f2 *)
adds carry r10 r10 rax;                            (** cf, t1 += rax; **)
(* adc    %rdx,%rcx                                #! PC = 0x5555555551f5 *)
adcs carry rcx rcx rdx carry;                      (** _ , h[2] += rdx + cf; **)


assert true && carry=0@1;
assume carry=0 && true;

(* mov    %rbx,%rax                                #! PC = 0x5555555551f8 *)
mov rax rbx;                                       (** rax = r[2]; **)
(* mul    %r11                                     #! PC = 0x5555555551fb *)
mull rdx rax rax r11;                              (** rdx, rax = rax * h[1]; **)
(* mov    %rdx,%r11                                #! PC = 0x5555555551fe *)
mov r11 rdx;                                       (** h[1] = rdx; **)
(* add    %rdi,%r11                                #! PC = 0x555555555201 *)
adds carry r11 r11 rdi;                            (** h[1] += t2; **)

assert true && carry=0@1;
assume carry=0 && true;

(* mov    %rax,%rdi                                #! PC = 0x555555555204 *)
mov rdi rax;                                       (** t2 = rax; **)
(* mov    %r9,%rax                                 #! PC = 0x555555555207 *)
mov rax r9;                                        (** rax = r[1]; **)
(* mul    %r8                                      #! PC = 0x55555555520a *)
mull rdx rax rax r8;                               (** rdx, rax = rax * h[0]; **) 
(* add    %rdi,%rsi                                #! PC = 0x55555555520d *)
adds carry rsi rsi rdi;                            (** cf, t0 += t2; **)
(* adc    %rax,%r10                                #! PC = 0x555555555210 *)
adcs carry r10 r10 rax carry;                      (** cf, t1 += rax + cf; **)
(* adc    %rdx,%rcx                                #! PC = 0x555555555213 *)
adcs carry rcx rcx rdx carry;                      (** _ , h[2] += rdx + cf; **)


assert true && carry=0@1;
assume carry=0 && true;


(* mov    $0xfffffffffffffffc,%rax *) (** h[0] = 0xfffffffffffffffc; **)
(*mov rax 0xfffffffffffffffc@uint64;*)
(* mov    %rcx,%rdx *)                (** t2 = h[2]; **)
(*mov rdx rcx;*)
(* shr    $0x2,%rdx *)                (** t2 >>= 2; **)
(*usplit rdx dontcare rdx 2;*)
(* and    %rcx,%rax *)                (** h[0] &= h[2]; **)
(*and rax@uint64 rax rcx;*)
(* add    %rdx,%rax *)                (** h[0] += t2; **)
(*adds carry rax rax rdx;*)
(*assert true && carry=0@1;*)
(*assume carry=0 && true;*)
(* and    $0x3,%rcx *)                (** h[2] &= 0x03; **)
(*and rcx@uint64 rcx 0x3@uint64;*)

(** study different approach to not change the code so much **)
(** -- h[0]  = (h[2] >> 2) * 5 **)
(** -- h[2] &= (h[2] & 0x3) **)
usplit rax rcx rcx 2;
mull dontcare rax rax 5@uint64;

assert true && dontcare = 0@64;
assume dontcare = 0 && true;

(* add    %rsi,%rax                                #! PC = 0x55555555522e *)
adds carry rax rax rsi;                         (** cf, h[0] += t0; **)
(* adc    %r10,%r11                                #! PC = 0x555555555231 *)
adcs carry r11 r11 r10 carry;                   (** cf, h[1] += t1 + cf; **)
(* adc    $0x0,%rcx                                #! PC = 0x555555555234 *)
adcs carry rcx rcx 0x0@uint64 carry;            (** _ , h[2] +=  0 + cf; **)

assert true && carry=0@1;
assume carry=0 && true;

(* mov    (%rsp),%rdx                              #! EA = L0x7fffffffd968; Value = 0x00007fffffffd990; PC = 0x555555555238 *)
mov rdx L0x7fffffffd968;
(* mov    %rax,(%rdx)                              #! EA = L0x7fffffffd990; PC = 0x55555555523c *)
mov L0x7fffffffd990 rax;
(* mov    %r11,0x8(%rdx)                           #! EA = L0x7fffffffd998; PC = 0x55555555523f *)
mov L0x7fffffffd998 r11;
(* mov    %rcx,0x10(%rdx)                          #! EA = L0x7fffffffd9a0; PC = 0x555555555243 *)
mov L0x7fffffffd9a0 rcx;
(* #! <- SP = 0x7fffffffd988 *)
#! 0x7fffffffd988 = 0x7fffffffd988;
(* #retq                                           #! PC = 0x555555555256 *)
#retq                                           #! 0x555555555256 = 0x555555555256;


mov H0 L0x7fffffffd990;
mov H1 L0x7fffffffd998;
mov H2 L0x7fffffffd9a0;

{
  eqmod (limbs 64 [H0, H1, H2])
        (limbs 64 [h0, h1, h2] * limbs 64 [r0, r1])
        ((2**130)-5)
  &&
  true

}

