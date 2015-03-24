LfsrPalindrome:
addiu $t0 $a0 0
loop:
lfsr $t0 $t0
bitpal $t1 $t0
bne $t1 $zero pass
beq $t0 $a0 fail
j loop

pass:
addu $v0 $zero $t0
j done

fail:
addu $v0 $zero $a0

done:
jr $ra