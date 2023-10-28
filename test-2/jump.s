.global _start
.data
	# ------
	# arrays
	# ------

.text
_start:
    mov $5, %EAX
    mov $5, %EBX

    cmp %EBX, %EAX    # Compare registers

    je equal          # Jump if Equal
    jne not_equal     # Jump if Not Equal
    jz zero           # Jump if Zero (ZF set)
    jnz not_zero      # Jump if Not Zero (ZF not set)
    jl less           # Jump if Less
    jle less_equal    # Jump if Less or Equal
    jg greater        # Jump if Greater
    jge greater_equal # Jump if Greater or Equal
    jc carry          # Jump if Carry Flag set (unsigned)
    jnc no_carry      # Jump if Carry Flag not set (unsigned)

equal:
    # If Equal
    mov $1, %ECX      # Set result to 1
    jmp done

not_equal:
    # If Not Equal
    mov $2, %ECX      # Set result to 2
    jmp done

zero:
    # If Zero (ZF set)
    mov $3, %ECX      # Set result to 3
    jmp done

not_zero:
    # If Not Zero (ZF not set)
    mov $4, %ECX      # Set result to 4
    jmp done

less:
    # If Less
    mov $5, %ECX      # Set result to 5
    jmp done

less_equal:
    # If Less or Equal
    mov $6, %ECX      # Set result to 6
    jmp done

greater:
    # If Greater
    mov $7, %ECX      # Set result to 7
    jmp done

greater_equal:
    # If Greater or Equal
    mov $8, %ECX      # Set result to 8
    jmp done

carry:
    # If Carry Flag set (unsigned)
    mov $9, %ECX      # Set result to 9
    jmp done

no_carry:
    # If Carry Flag not set (unsigned)
    mov $10, %ECX     # Set result to 10
    jmp done

done:
    # Exit the program
    mov $1, %EAX
