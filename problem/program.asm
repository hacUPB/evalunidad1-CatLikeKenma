//SOFIA GONZALEZ HERNANDEZ
//450810
//sofigonh@gmail.com

(INICIO)
@KBD
 D=M
 @84  //T//
 D=D-A
 @VERTICAL//Realizar el rectangulo
 D;JEQ
 
@KBD
 D=M
 @67   //C//
 D=D-A 
 @BORRAR
 D;JEQ

 @KBD
 D=M
 @84  //T//
 D=D-A 
 @HORIZONTAL
 D;JEQ
 
@INICIO
 0;JMP

(VERTICAL)
@16400//16384 + (128*32)
 D=A
@coord//Variable de inicio de dibujo
 M=D 
@256//Numero de registros
 D=A
@count//contador filas 
 M=D
@32
 D=A 
@jump
 M=D

@color
M= 1
 
 @RECT
 0;JMP

(HORIZONTAL)
@20480//16384 + (128*32)
 D=A
@coord//Variable de inicio de dibujo
 M=D
@32//Numero de registros
 D=A
@count//contador filas 
 M=D
@1
 D=A 
@jump
 M=D


(BORRAR)
@16384
 D=A
@coord//Variable de inicio de dibujo
 M=D 
@8300//Registros para pintar
 D=A
@count//Contador de filas
 M=D
@1
 D=A 
@jump
 M=D

@color
M = 0

@RECT
 0;JMP
 


@color
M= -1
 
@RECT
0;JMP


(RECT)
@coord//16384 + (128*32)
 D=M
@pscreen
 M=D //Memoria de inicio de pantalla
 
(PAINT)
@count//D=count
 D=M 
 
 @END
 D;JEQ//if count = 0 goto END
 
@color
D=M 
@pscreen
A=M 
M=D //Pintar de negro el primer registro
 
@count//count = count-1
M=M-1
 
@jump
 D=M
 
@pscreen
 M=M+D //M+D
 
@PAINT
 0;JMP
 
(END)
 @INICIO
 0;JMP


