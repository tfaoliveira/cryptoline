proc main (uint64 f0, uint64 f1, uint64 f2, uint64 f3) =
{
  true
  &&
  true
}

mov L0x7fffffffd960 f0;
mov L0x7fffffffd968 f1;
mov L0x7fffffffd970 f2;
mov L0x7fffffffd978 f3;

nondet rdi@uint64;


(* #! -> SP = 0x7fffffffd938 *)
#! 0x7fffffffd938 = 0x7fffffffd938;
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffd930; PC = 0x5555555557ec *)
mov L0x7fffffffd930 rdi;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd960; Value = 0x00000000000000c2; PC = 0x5555555557f0 *)
mov rax L0x7fffffffd960;
(* mov    0x8(%rsi),%rcx                           #! EA = L0x7fffffffd968; Value = 0x00007fffffffd997; PC = 0x5555555557f3 *)
mov rcx L0x7fffffffd968;
(* mov    0x10(%rsi),%rdx                          #! EA = L0x7fffffffd970; Value = 0x00007fffffffd996; PC = 0x5555555557f7 *)
mov rdx L0x7fffffffd970;
(* mov    0x18(%rsi),%rsi                          #! EA = L0x7fffffffd978; Value = 0x00005555555558ad; PC = 0x5555555557fb *)
mov rsi L0x7fffffffd978;
(* lea    (%rsi,%rsi,1),%rdi                       #! PC = 0x5555555557ff *)
usplit dontcare rdi rsi 63;
shl rdi rdi 1;
(* sar    $0x3f,%rsi                               #! PC = 0x555555555803 *)
and msb@uint64 rsi 0x8000000000000000@uint64;
subc flag dontcare msb 1@uint64;
cmov rsi flag 0xffffffffffffffff@uint64 0@uint64;
(* shr    %rdi                                     #! PC = 0x555555555807 *)
usplit rdi dontcare rdi 1;
(* and    $0x13,%rsi                               #! PC = 0x55555555580a *)
and rsi@uint64 rsi 0x13@uint64;
(* add    $0x13,%rsi                               #! PC = 0x55555555580e *)
adds carry rsi rsi 0x13@uint64;
(* add    %rsi,%rax                                #! PC = 0x555555555812 *)
adds carry rax rax rsi;
(* adc    $0x0,%rcx                                #! PC = 0x555555555815 *)
adcs carry rcx rcx 0x0@uint64 carry;
(* adc    $0x0,%rdx                                #! PC = 0x555555555819 *)
adcs carry rdx rdx 0x0@uint64 carry;
(* adc    $0x0,%rdi                                #! PC = 0x55555555581d *)
adcs carry rdi rdi 0x0@uint64 carry;


assert true && carry=0@1;
assume carry=0 && true;


(* lea    (%rdi,%rdi,1),%rsi                       #! PC = 0x555555555821 *)
usplit dontcare rsi rdi 63;
shl rsi rsi 1;
(* sar    $0x3f,%rdi                               #! PC = 0x555555555825 *)
and msb@uint64 rdi 0x8000000000000000@uint64;
subc flag dontcare msb 1@uint64;
cmov rdi flag 0xffffffffffffffff@uint64 0@uint64;
(* shr    %rsi                                     #! PC = 0x555555555829 *)
usplit rsi dontcare rsi 1;
(* not    %rdi                                     #! PC = 0x55555555582c *)
not rdi@uint64 rdi;
(* and    $0x13,%rdi                               #! PC = 0x55555555582f *)
and rdi@uint64 rdi 0x13@uint64;
(* sub    %rdi,%rax                                #! PC = 0x555555555833 *)
subb carry rax rax rdi;
(* sbb    $0x0,%rcx                                #! PC = 0x555555555836 *)
sbbs carry rcx rcx 0x0@uint64 carry;
(* sbb    $0x0,%rdx                                #! PC = 0x55555555583a *)
sbbs carry rdx rdx 0x0@uint64 carry;
(* sbb    $0x0,%rsi                                #! PC = 0x55555555583e *)
sbbs carry rsi rsi 0x0@uint64 carry;


assert true && carry=0@1;
assume carry=0 && true;


(* mov    (%rsp),%rdi                              #! EA = L0x7fffffffd930; Value = 0x00007fffffffd940; PC = 0x555555555842 *)
mov rdi L0x7fffffffd930;
(* mov    %rax,(%rdi)                              #! EA = L0x7fffffffd940; PC = 0x555555555846 *)
mov L0x7fffffffd940 rax;
(* mov    %rcx,0x8(%rdi)                           #! EA = L0x7fffffffd948; PC = 0x555555555849 *)
mov L0x7fffffffd948 rcx;
(* mov    %rdx,0x10(%rdi)                          #! EA = L0x7fffffffd950; PC = 0x55555555584d *)
mov L0x7fffffffd950 rdx;
(* mov    %rsi,0x18(%rdi)                          #! EA = L0x7fffffffd958; PC = 0x555555555851 *)
mov L0x7fffffffd958 rsi;
(* #! <- SP = 0x7fffffffd938 *)
#! 0x7fffffffd938 = 0x7fffffffd938;
(* #retq                                           #! PC = 0x555555555858 *)
#retq                                           #! 0x555555555858 = 0x555555555858;


mov r0 L0x7fffffffd940;
mov r1 L0x7fffffffd948;
mov r2 L0x7fffffffd950;
mov r3 L0x7fffffffd958;

{
  true
  &&
  and [ eqmod (limbs 64 [r0, r1, r2, r3])
              (limbs 64 [f0, f1, f2, f3])
              ((2**255)-19)@256
      , (limbs 64 [r0, r1, r2, r3]) < ((2**255)-19)@256
  ]

}

