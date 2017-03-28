###############################################################################
# William Hunt, CS 2318-253, Assignment 2 Part 1 Program C
###############################################################################
# This Mips Program used array, swaps, and other methods to achieve flipping 
# 2318 into 8132 and outputting both
############################ data segment #####################################



#### Array and Display ####
            .data
intArray:   .word 2,3,1,8
displayInt: .asciiz "The order of values in the array is: "
            .text
            .globl main
main:


            la   $t0, intArray
            #[Print default arr. order]
            li $v0, 4
            la $a0, displayInt
            syscall
            li $v0, 1
            lw $a0, 0($t0)
            syscall
            li $v0, 1
            lw $a0, 4($t0)
            syscall
            li $v0, 1
            lw $a0, 8($t0)
            syscall
            li $v0, 1
            lw $a0, 12($t0)
            syscall
            #[Reordering the arrary]
            lw $t1, 12($t0)
            lw $t2,  0($t0)
            sw $t2, 12($t0)
            sw $t1, 0($t0)
            lw $t1, 4($t0)
            lw $t2, 8($t0)
            sw $t2, 4($t0)
            sw $t1, 8($t0)
         
            li $v0, 11
            li $a0, '\n'
            syscall           
            #[Printing the new array order]                 
            li $v0, 4
            la $a0, displayInt
            syscall
            li $v0, 1
            lb $a0, 0($t0)
            syscall
            li $v0, 1
            lb $a0, 4($t0)
            syscall
            li $v0, 1
            lb $a0, 8($t0)
            syscall
            li $v0, 1
            lb $a0, 12($t0)
            syscall
            

#Exit Here
li $v0, 10
syscall
