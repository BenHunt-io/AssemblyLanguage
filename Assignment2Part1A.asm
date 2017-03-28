##########################################################################
# <Ben Hunt>, CS 2318-253, Assignment 2 Part 1 Program A
##########################################################################
# Simple program to ask for user input for Ints, Strings, and Chars
# Outputs the entered values to the console.
############################ data segment ################################

.data

promptInt:  .asciiz "Enter an Integer: "
promptString: .asciiz "Enter a String: "
promptChar: .asciiz "Enter a Char: "
outputMsg: .asciiz "User entered: " 
newLine: .asciiz "\n"
string: .space 41

############################ code segment ################################



.text

main:  .globl main

	la $a0, promptInt   #adress of prompt is $a0
	li $v0, 4        #Put value 4 into $v0; code 4 is print string
	syscall 	 #used to read or print values or strings from input/output
		  	 #window, and indicate program end
	
	li $v0, 5        #Read in integer; code 5 is read integer
	syscall		 #used to read or print values or strings from input/output
			 #window, and indicate program end
	
	move $t0, $v0		# $t0 = $v0
	la $a0, outputMsg	# load address of output into $a0
	li $v0, 4		#Print string
	syscall
	
	move $a0, $t0  	# $a0 = $t0 Note: [$v0, 1 requires argument $a0 where $a0 =.
	li $v0, 1   	#Print integer with code 1
	syscall
	
	
	la $a0, newLine  
	li $v0, 4		#print string code is 4
	syscall
	
	la $a0, promptString  	#prompt user to enter string, code is 4
	li $v0, 4
	syscall

	la $a0, string  #put address of string into $a0
	li $a1, 41   	#Specify buffer size into $a1
	li $v0, 8	#Read string is code 8
	syscall
	
	move $t1, $a0   	# $t1 = $a0
	la $a0, outputMsg 	# $a0 = address of outputMsg
	li $v0, 4  		# Print String code 4
	syscall
	
	move $a0, $t1 	 # $a0 = $t1
	li $v0, 4  	 # Print string
	syscall
	
	la $a0, promptChar  # $a0 = address of promptChar string
	li $v0, 4  	    #Print string w/ code 4
	syscall 
	
	li $v0, 12  	# Read in character w/ code 12
	syscall
	move $t2, $v0   # $t2 = $v0 (save that read in char to $t2)
	
	la $a0, newLine # $a0 = adress of newLine
	li $v0, 4 	#Prints out newLine
	syscall 
	
	la $a0, outputMsg 	# $a0 = address of outputMsg
	li $v0, 4  		# print out outputMsg
	syscall
	
	move $a0, $t2   #put that saved char value into $a0; $a0 = $t2
	li $v0, 11	#print the char with code 11
	syscall
	
	
	li $v0, 10
	syscall
	
	
	
	
