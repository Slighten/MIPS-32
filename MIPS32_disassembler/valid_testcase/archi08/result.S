	.ORG 0x00000000 # $sp = 0x00000400, wc_instr = 60, wc_data = 7
	addi $29, $29, -4    	# 0xFFFFFFFC
	sw   $31, 0($29)
	lw   $16, 0($0)	
	lw   $17, 4($0)	
	lhu  $18, 8($0)
	lh   $19, 10($0)
	lbu  $20, 12($0)
	lb   $21, 13($0)
	addi $22, $0 , 16    	# 0x00000010
	add  $9 , $18, $19
	lui  $1 , 0     		# 0x00000000
	ori  $1 , $1 , -2    	# 0xFFFFFFFE
	add  $8 , $0 , $1 
	bne  $9 , $8 , 3     
	addi $4 , $0 , 2     	# 0x00000002
	jal  0x00000029			# PC => 0x000000A4
	sw   $2 , 0($22)
	sub  $9 , $20, $21
	addi $8 , $0 , 256   	# 0x00000100
	bne  $9 , $8 , 6     
	addi $4 , $0 , 3     	# 0x00000003
	jal  0x00000029			# PC => 0x000000A4
	addi $8 , $0 , 1     	# 0x00000001
	sll  $8 , $8 , 2 
	add  $9 , $8 , $22
	sw   $2 , 0($9)
	sub  $4 , $16, $17
	addi $4 , $4 , 10    	# 0x0000000A
	jal  0x00000029			# PC => 0x000000A4
	addi $8 , $0 , 2     	# 0x00000002
	sll  $8 , $8 , 2 
	add  $9 , $8 , $22
	sw   $2 , 0($9)
	lw   $31, 0($29)	
	addi $29, $29, 4     	# 0x00000004
	lw   $3 , 1022($9)	
	halt
	halt
	halt
	halt
	halt
	slti $8 , $4 , 2     	# 0x00000002
	beq  $8 , $0 , 2     
	or   $2 , $4 , $0 
	jr   $31
	addi $29, $29, -8    	# 0xFFFFFFF8
	sw   $31, 4($29)
	sw   $4 , 0($29)
	addi $2 , $0 , 0     	# 0x00000000
	slt  $9 , $2 , $4 
	beq  $9 , $0 , 2     
	addi $2 , $2 , 1     	# 0x00000001
	j    0x00000031			# PC => 0x000000C4
	addi $4 , $4 , -1    	# 0xFFFFFFFF
	jal  0x00000029			# PC => 0x000000A4
	lw   $4 , 0($29)	
	lw   $31, 4($29)	
	addi $29, $29, 8     	# 0x00000008
	add  $2 , $2 , $4 
	jr   $31
