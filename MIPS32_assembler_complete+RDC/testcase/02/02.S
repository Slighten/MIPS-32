	.org 0
	sll  $0 , $0 , 0 
	lw   $0 , 1($29)	
	lw   $1 , 0($0)	
	srl  $0 , $1 , 16
	bne  $0 , $31, 768   
	srl  $1 , $1 , 16
	sll  $0 , $1 , 16
	sll  $1 , $1 , 16
	sra  $0 , $1 , 31
	sra  $1 , $1 , 31
	addi $1 , $1 , 1     	# 0x00000001
	lw   $1 , 1($29)	
	addi $0 , $1 , 1     	# 0x00000001
	addi $29, $29, -3    	# 0xFFFFFFFD
	addi $1 , $0 , 32767 	# 0x00007FFF
	addi $1 , $1 , 1     	# 0x00000001
	addi $1 , $0 , -32768	# 0xFFFF8000
	addi $1 , $1 , 1     	# 0x00000001
	addi $1 , $1 , -2    	# 0xFFFFFFFE
	addi $1 , $0 , 1024  	# 0x00000400
	addi $2 , $0 , -21555	# 0xFFFFABCD
	sb   $2 , -1($1)
	lw   $4 , 1020($0)	
	sh   $2 , -4($1)
	lw   $5 , 1020($0)	
	sb   $2 , -2($1)
	lw   $3 , 1020($0)	
	sh   $2 , -8($1)
	lw   $7 , 1016($0)	
	sw   $2 , -8($1)
	lw   $6 , 1016($0)	
	sb   $2 , -10($1)
	lw   $9 , -12($1)	
	sh   $2 , 1014($0)
	lw   $8 , -12($1)	
	lbu  $14, 1023($0)
	lb   $15, 1023($0)
	addi $10, $10, -32768	# 0xFFFF8000
	addi $11, $0 , -2    	# 0xFFFFFFFE
	and  $10, $11, $10
	sll  $11, $11, 1 
	bne  $0 , $10, -3    
	addi $10, $10, 7     	# 0x00000007
	lui  $11, -32768		# 0xFFFF8000
	nor  $12, $10, $11
	sra  $11, $11, 1 
	bne  $12, $0 , -3    
	ori  $13, $8 , -4334 	# 0xFFFFEF12
	lb   $0 , 13($0)
	lb   $1 , 29($0)
	lw   $1 , 0($29)	
	sub  $1 , $0 , $1 
	sub  $25, $8 , $1 
	addi $12, $1 , -1    	# 0xFFFFFFFF
	sub  $12, $12, $1 
	addi $1 , $1 , -1    	# 0xFFFFFFFF
	addi $1 , $1 , 1     	# 0x00000001
	lui  $0 , -32768		# 0xFFFF8000
	bne  $0 , $31, 512   
	lui  $1 , -32768		# 0xFFFF8000
	sub  $1 , $1 , $1 
	lw   $1 , 0($29)	
	sub  $0 , $1 , $1 
	bne  $0 , $31, 256   
	addi $29, $29, 3     	# 0x00000003
	lh   $0 , 1022($29)
	halt
