.global _start
.data
    # ------
    # arrays
    # ------

.text
_start:
    mov $0b10101010, %EAX   # Load binary number 10101010 into EAX
    mov $0b11001100, %EBX   # Load binary number 11001100 into EBX

    # Perform bitwise AND
    and %EBX, %EAX          # EAX = EAX & EBX => EAX = 10101010 & 11001100 = 10001000
    nop

    # Perform bitwise OR
    or %EBX, %EAX           # EAX = EAX | EBX => EAX = 10101010 | 11001100 = 11001100
    nop

    # Perform bitwise XOR
    xor %EBX, %EAX          # EAX = EAX ^ EBX => EAX = 10101010 ^ 11001100 = 01000100
    nop

    # Perform left shift
    sal $1, %EAX            # EAX = EAX << 1 => EAX = 11111111 11111111 11111111 11111110 (left shift by 1)
    nop

    # Perform right shift
    shr $1, %EAX            # EAX = EAX >> 1 => EAX = 01111111 11111111 11111111 11111111 (right shift by 1)
    nop

# Output:
# EAX after AND: 10001000 (0x88 in hexadecimal)
# EAX after OR:  11001100 (0xCC in hexadecimal)
# EAX after XOR: 01000100 (0x44 in hexadecimal)
# EAX after left shift: 01111111 11111111 11111111 11111110
# EAX after right shift: 00111111 11111111 11111111 11111111
