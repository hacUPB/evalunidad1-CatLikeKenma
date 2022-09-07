//SOFIA GONZALEZ HERNANDEZ
//450810
//sofia.gonzalezh@upb.edu.co


(INICIO)
@KBD
 D=M
 @84  //T//
 D=D-A
 @VERTICAL//Salto para hacer el rectangulo
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
@coord//Variable de inicio del dibujo
 M=D 
@256//Registros a pintar
 D=A
@count//Contador de filas
 M=D
@32
 D=A 
@jump
 M=D

@Color
M= 1
 
 @RECT
 0;JMP


(BORRAR)
@16384
 D=A
@coord//Variable de inicio del dibujo
 M=D 
@8300//Registros a pintar
 D=A
@count//Contador de filas
 M=D
@1
 D=A 
@jump
 M=D

@Color
M = 0

@RECT
 0;JMP
 
 
(HORIZONTAL)
@20480//16384 + (128*32)
 D=A
@coord//Variable de inicio del dibujo
 M=D 
@32//Registros a pintar
 D=A
@count//Contador de filas
 M=D
@1
 D=A 
@jump
 M=D


@Color
M= -1
 
@RECT
0;JMP


(RECT)
@coord//16384 + (128*32)
 D=M
@pscreen
 M=D //Memoria inicio de pantalla
 
(PAINT)
@count//D=count
 D=M 
 
 @END
 D;JEQ//if count = 0 goto END
 
@Color
D=M 
@pscreen
A=M 
M=D //Registro inicial color negro
 
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


