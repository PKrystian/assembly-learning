.global _start
.data
	# ------
	# arrays
	# ------

.text
_start:
    mov $2, %EAX
    mov $5, %EBX
    mov $6, %ECX
#---------------------------
    add %EAX, %EBX
    sub %EAX, %ECX
    nop

#+-----+-------+---------+
#| reg | input |  output |
#+-----+-------+---------+
#| EAX |   2   |    2    |
#| EBX |   5   |    7    |
#| ECX |   6   |    4    |
