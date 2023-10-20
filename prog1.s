.global _start
.text
_start:
    mov $2, %EAX
    mov $5, %EBX
    mov $6, %ECX

    add %EAX, %EBX
    sub %EAX, %ECX
    nop
