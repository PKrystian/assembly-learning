.global _start
.data
    # ------
    # arrays
    # ------

.text
_start:
    mov $6, %EAX
    mov $5, %EBX

    mov %EAX, %ECX    # Move EAX to ECX (for later use)
    mul %EBX          # Multiply EAX by EBX
    mov %EAX, %EBX    # Move result to EBX
    mov %ECX, %EAX    # Move original EAX to EAX

    cmp %EBX, %EAX    # Compare registers

    je equal          # Jump if Equal *** 
    jl less           # Jump if Less ***
    jg greater        # Jump if Greater ***

equal:
    # If Equal
    mov $1, %ECX      # Set result to 1, if EBX == EAX
    jmp done

less:
    # If Less
    mov $2, %ECX      # Set result to 2, if EBX > EAX
    jmp done

greater:
    # If Greater
    mov $3, %ECX      # Set result to 3, if EBX < EAX
    jmp done

done:
    # Exit the program
    # mov $1, %EAX

#+-----+-------+---------+
#| reg | input |  output |
#+-----+-------+---------+
#| EAX |   6   |    6    |
#| EBX |   5   |   30    |
#| ECX |   0   |    2    |
#| EDX |   0   |    0    |
