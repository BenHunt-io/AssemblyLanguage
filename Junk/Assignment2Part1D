###############################################################################
# William Hunt, CS 2318-253, Assignment 2 Part 1 Program D
###############################################################################
# Takes in user input for use in Exam Scores and then makes an average score 
# calc. based on given calculation
############################ data segment #####################################


            .data                 
intEOne:      .word 205
intETwo:      .word 854
exam1:      .asciiz "Enter your test score for Exam One: "                       
exam2:      .asciiz "Please enter your test score for Exam Two: "      
final:      .asciiz "Please enter your test score for the Final: "
score:      .ascii "Your average score is calculated to be: "                   
            .text
            .globl main
main:       
           
            #Exam 1
            
            la $a0, exam1 #Load into address
            li $v0, 4    
            syscall     
            li $v0, 5    
            syscall
            move $t1, $v0
             
            #Exam 2 
            la $a0, exam2
            li $v0, 4   
            syscall
            li $v0, 5
            syscall
            move $t2, $v0

            #Final Exam Read      
            la $a0, final
            li $v0, 4   
            syscall
            li $v0, 5
            syscall
            move $t3, $v0
            
            #Calc Exam 1
            la $t0, intEOne
            lw $t0, 0($t0)
            mult $t1, $t0
            mflo $t1
            srl $t1, $t1, 10    
            #Calc Exam 2
            sll $t2, $t2, 8
            la $t0, intETwo
            lw $t0, 0($t0)
            div $t2, $t0
            mflo $t2            
            #Calc Final
            srl $t3, $t3, 1
            #Calc Avg
            la $a0, score
            li $v0, 4
            syscall
            add $t1, $t1, $t2           
            add $a0, $t1, $t3
            li $v0, 1
            syscall

#Exit Here
li $v0, 10
syscall