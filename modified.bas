3 X=0:I=(INT(RND(1) * 9) + 1) * 4 :A=0 : HOME
10 K=PEEK(-16384)-176: POKE -16368,0
20 GOTO 270
30 X=X+3: IF X>38 THEN 100
40 I = I+INT(RND(1) * 2) * 8 - 4
42 IF I < 4 THEN I = 4
43 IF I > 36 THEN I = 36
45 GR : VLIN I-I, I+1 AT X: PLOT X+1,I
50 IF K<1 OR K>9 THEN 10
60 A=A+1: IF A>30 THEN 100
70 COLOR=3+A - (INT(A / 2) * 2): HLIN 0, 39 AT K*4
80 IF K*4=I THEN PRINT"BLEEPER DESTROYED.": PRINT:S=S+1: PRINT "SCORE SO FAR:",S: PRINT
85 X=0
90 GOTO 10
100 TEXT :  PRINT"FINAL SCORE:",S: PRINT
110 PRINT"AMMUNITTION EXPENDED:",A: PRINT
120 A=0: INPUT"TYPE 0 TO PLAY AGAIN";S: IF S=0 THEN 3
130 END

270 FOR D = 1 TO 2000: NEXT D
271 GOTO 30