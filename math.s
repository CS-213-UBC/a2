.pos 0x100
ld $b, r0           #r0 = address of b
ld 0x0(r0), r1      #r1 = value of b
ld 0x0(r0), r2      #r2 = r1 value of b
ld $1, r4           #r4 = 1
ld $4, r5           #r5 = 4
add r4, r1          #r1 = r1 + 1 
add r5, r1          #r1 = r1 + 4
shr $1, r1          #r1 = r1 << 1
and r2, r1          #r1 = r1 & r2
shl $2, r1          #r1 = r1 << 2
ld $a, r3           #r3 = address of a
st r1, 0x0(r3)      #a = b

halt

.pos 0x1000
a:               .long 0x00000000         # a should be 20
.pos 0x2000
b:               .long 0x00000005         # b