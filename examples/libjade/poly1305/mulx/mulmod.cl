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

mov L0x7fffffffd960 h0;
mov L0x7fffffffd968 h1;
mov L0x7fffffffd970 h2;

mov L0x7fffffffd980 r0;
mov L0x7fffffffd988 r1;
mov L0x7fffffffd990 r2;

nondet rdi@uint64;

(** *********************************************************************** **)

(* #! -> SP = 0x7fffffffd958 *)
#! 0x7fffffffd958 = 0x7fffffffd958;
(* mov    (%rdi),%rdx                              #! EA = L0x7fffffffd960; Value = 0x00007fffffffd986; PC = 0x5555555551b1 *)
mov rdx L0x7fffffffd960;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd980; Value = 0x0000000000000000; PC = 0x5555555551b4 *)
mov rax L0x7fffffffd980;
(* mov    0x8(%rdi),%r8                            #! EA = L0x7fffffffd968; Value = 0x000055555555528d; PC = 0x5555555551b7 *)
mov r8 L0x7fffffffd968;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffd988; Value = 0x0000555555555060; PC = 0x5555555551bb *)
mov r9 L0x7fffffffd988;
(* mov    0x10(%rdi),%rcx                          #! EA = L0x7fffffffd970; Value = 0x00007ffff7fa72e8; PC = 0x5555555551bf *)
mov rcx L0x7fffffffd970;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffd990; Value = 0x00007fffffffda90; PC = 0x5555555551c3 *)
mov r10 L0x7fffffffd990;
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffd948; PC = 0x5555555551c7 *)
mov L0x7fffffffd948 rdi;
(* mov    %rcx,%rsi                                #! PC = 0x5555555551cb *)
mov rsi rcx;
(* imul   %r10,%rsi                                #! PC = 0x5555555551ce *)
umull dontcare rsi r10 rsi;
assert true && dontcare = 0@64;
assume dontcare = 0 && true;
(* mulx   %rax,%rdi,%r11                           #! PC = 0x5555555551d2 *)
mull r11 rdi rdx rax;
(* mulx   %r9,%r9,%rdx                             #! PC = 0x5555555551d7 *)
mull rdx r9 rdx r9;
(* imul   %rax,%rcx                                #! PC = 0x5555555551dc *)
umull dontcare rcx rax rcx;
assert true && dontcare = 0@64;
assume dontcare = 0 && true;
(* add    %rdx,%rcx                                #! PC = 0x5555555551e0 *)
adds carry rcx rcx rdx;
assert true && carry=0@1;
assume carry=0 && true;
(* add    %r11,%rsi                                #! PC = 0x5555555551e3 *)
adds carry rsi rsi r11;
assert true && carry=0@1;
assume carry=0 && true;
(* mov    %r8,%rdx                                 #! PC = 0x5555555551e6 *)
mov rdx r8;
(* mulx   %r10,%r10,%r8                            #! PC = 0x5555555551e9 *)
mull r8 r10 rdx r10;
(* mulx   %rax,%rdx,%rax                           #! PC = 0x5555555551ee *)
mull rax rdx rdx rax;

(* add    %rsi,%r8                                 #! PC = 0x5555555551f3 *)
adds carry r8 r8 rsi;
assert true && carry=0@1;
assume carry=0 && true;

(* add    %r10,%rdi                                #! PC = 0x5555555551f6 *)
adds carry rdi rdi r10;
(* adc    %r9,%r8                                  #! PC = 0x5555555551f9 *)
adcs carry r8 r8 r9 carry;

(* adc    %rax,%rcx                                #! PC = 0x5555555551fc *)
adcs carry rcx rcx rax carry;                      (** cf, h[2] += t[2] + cf; **)
assert true && carry=0@1;
assume carry=0 && true;

(** ***************************************** **)
(* mov    $0xfffffffffffffffc,%rax                 #! PC = 0x5555555551ff *)
(*mov rax 0xfffffffffffffffc@uint64;*)
(* mov    %rcx,%rsi                                #! PC = 0x555555555206 *)
(*mov rsi rcx;*)
(* and    %rcx,%rax                                #! PC = 0x555555555209 *)
(*and rax@uint64 rax rcx;*)
(* shr    $0x2,%rsi                                #! PC = 0x55555555520c *)
(*usplit rsi dontcare rsi 0x2;*)
(* and    $0x3,%rcx                                #! PC = 0x555555555210 *)
(*usplit doncare rcx rcx 2;*)

usplit rsi rcx rcx 2;
shl rax rsi 2;
(** ***************************************** **)

(* add    %rsi,%rax                                #! PC = 0x555555555214 *)
adds carry rax rax rsi;
assert true && carry=0@1;
assume carry=0 && true;

(* add    %rdi,%rax                                #! PC = 0x555555555217 *)
adds carry rax rax rdi;
(* adc    %rdx,%r8                                 #! PC = 0x55555555521a *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%rcx                                #! PC = 0x55555555521d *)
adcs carry rcx rcx 0x0@uint64 carry;
assert true && carry=0@1;
assume carry=0 && true;

(* mov    (%rsp),%rdx                              #! EA = L0x7fffffffd948; Value = 0x00007fffffffd960; PC = 0x555555555221 *)
mov rdx L0x7fffffffd948;
(* mov    %rax,(%rdx)                              #! EA = L0x7fffffffd960; PC = 0x555555555225 *)
mov L0x7fffffffd960 rax;
(* mov    %r8,0x8(%rdx)                            #! EA = L0x7fffffffd968; PC = 0x555555555228 *)
mov L0x7fffffffd968 r8;
(* mov    %rcx,0x10(%rdx)                          #! EA = L0x7fffffffd970; PC = 0x55555555522c *)
mov L0x7fffffffd970 rcx;
(* #! <- SP = 0x7fffffffd958 *)
#! 0x7fffffffd958 = 0x7fffffffd958;
(* #retq                                           #! PC = 0x555555555256 *)
#retq                                           #! 0x555555555256 = 0x555555555256;

(** *********************************************************************** **)

mov H0 L0x7fffffffd960;
mov H1 L0x7fffffffd968;
mov H2 L0x7fffffffd970;

{
  eqmod (limbs 64 [H0, H1, H2])
        (limbs 64 [h0, h1, h2] * limbs 64 [r0, r1])
        ((2**130)-5)
  &&
  true

}


