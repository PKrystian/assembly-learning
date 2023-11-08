.global _start
.data
table:
    .int 10, 20, 30, 40, 50

.text
_start:
__begin:
    # Set pointer to the beginning of the array
    leal table, %EBX

    # Print elements of the array
    mov $0, %ECX           # Index of the element (initial)
loop:
    movl (%EBX,%ECX,4), %EAX   # Load element from the array (4 means int size)
    mov $1, %EDX               # Number of bytes to display (int size)
    mov $4, %EAX               # Code of the operation (write)
    mov $1, %EBX               # Descriptor of the standard output (1)
    int $0x80

    # Increment index
    add $1, %ECX

    # Check the loop condition
    cmp $5, %ECX
    jl loop

__end: nop
