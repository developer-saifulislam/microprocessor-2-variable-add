include emu8086.inc

org 100h
     

PRINT "Enter the first value: "

MOV AH, 1
INT 21h 
MOV BL, AL
SUB BL, 48
PRINTN ""



PRINT "Enter the second value: "   
INT 21h
MOV CL, AL
SUB CL, 48
PRINTN ""

ADD BL, CL 

PRINT "The summation is: " 
ADD BL, 48
MOV AH, 2
MOV DL, BL
INT 21h  


ret
end


