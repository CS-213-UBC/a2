.pos 0x100
                 ld   $0x0, r0            # r0 = 0
                 ld   $0x0, r1            # r0 = 0
                 ld   $0x0, r2            # r0 = 0
                 ld   $0x0, r3            # r0 = 0
                 ld   $0x0, r4            # r0 = 0
                 ld   $0x0, r5            # r0 = 0
                 ld   $array, r0          # r1 = address of array[0]
                 ld   $array, r1          # r1 = address of array[0]
                 inca r1                  # r1 = address of array[1]
                 ld   $t, r2              # r2 = address of t
                 ld   0x0(r0), r3         # r3 = array[0]
                 ld   0x0(r1), r4         # r4 = array[1]
                 st   r3, 0x0(r2)         # t = array[0]
                 ld   0x0(r2), r5         # r5 = t
                 st   r4, 0x0(r0)         # array[0] = array[1]
                 st   r5, 0x0(r1)         # array[1] = t
                 halt
.pos 0x1000
t:               .long 0x00000000         # t
.pos 0x2000
array:           .long 0x000fffff         # array[0]
                 .long 0x11111111         # array[1]
