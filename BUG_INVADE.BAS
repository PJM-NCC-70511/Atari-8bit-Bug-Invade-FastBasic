' TOP LOGIC LOOP'
        DL_ADDR_SET = 0
        PMBASE = 0
        SP = 0
        STK = 0
        SND=1702
        QT=1741
        C%=0
        D%=0
        E%=0
        F%=0
        CD%=0
        ED%=0
        PC=0
        SU=0
        SCR_ADDR=0
        LV=0
        EXEC LOAD_AND_SET_UP
        H1=0
        H2=0
        H3=0
        
DO
    
        
        EXEC DISPLAY_TITLE
        
        DIM BUG_TYPE(7) BYTE
        DIM BUG_XPOS(7) WORD
        DIM BUG_YPOS(7) WORD
        DIM BUG_XDIR(7) WORD
        DIM BUG_YDIR(7) WORD
        DIM BUG_DATA1(7) BYTE
        DIM BUG_DATA2(7) BYTE
        DIM BUG_STATUS(7) BYTE
        BUG_INDEX = 0
        
        EXEC DRAW_FIELD

        POKE 82,0
        CLS #6
                
        POKE 712,0
        MOVE SP,PMBASE + 1048,8
        MOVE SP+200,PMBASE + 1304,8
        POKE 53248,118
        POKE 53249,128
        POKE 704,15
        POKE 705,15
        


        G1=0
        A=19
        B=22
        C1 = 0
        E1 = 0
        POKE 704,30
        Z=USR(1561) 'Z=USR(1560)  Plus 1 to bypass first pull from stack
        DEG 
        LV=1        
        POKE PMBASE+512,3
        MOVE PMBASE+512,PMBASE+513,7
        POKE PMBASE+520,0
        MOVE PMBASE+520,PMBASE+521,8
        O=1
        EM=1000
        SC=0
        Lives=7
        EXEC PRINT_SCORE
        CT=1
        MOVE SP,PMBASE+8,8
    
        REPEAT
             
                Z=USR(STK)
                POKE 53248,PEEK(600)
                MOVE PMBASE,PMBASE+1016+PEEK(601),24
                O=NOT O
                IF C1 = 0 
                    EXEC BUG_1_0
                ELIF C1 = 1
                    EXEC BUG_1_1
                ELIF C1 = 2
                    EXEC BUG_1_2
                ELIF C1 = 3
                    EXEC BUG_1_3
                ELIF C1 = 4
                    EXEC BUG_1_4
                ENDIF
                ' ON C1 GOSUB 300,310,320,330,340                
                ' ON E1 GOSUB 400,410,420,430,350        
                IF E1 = 0 
                    EXEC BUG_2_0
                ELIF E1 = 1
                    EXEC BUG_2_1
                ELIF E1 = 2
                    EXEC BUG_2_2
                ELIF E1 = 3
                    EXEC BUG_2_3
                ELIF E1 = 4
                    EXEC BUG_2_4
                ENDIF 
        
                IF G1 = 0
                    IF STRIG(0) = 0                                               
                        G1=1
                        G=((PEEK(600)-46) / 4)
                        H=((PEEK(601)-13) / 8)
                        Z=USR(PC,1,PMBASE+768)
                        'Z=USR(SND,1,SU+1536,56,1)
                        Z=USR(SND,1,56,SU+1536,1)
                        POKE 53252,49+G*4
                    ENDIF
                ELSE
                    'MOVE SU,PMBASE+789+8*H,16
                    H=H-1
                    IF H<0
                        G1=0
                        Z=USR(PC,1,PMBASE+768)
                    ELSE     
                        POKE 53252,49+G*4
                        MOVE PMBASE+512,PMBASE+789+8*H,16
                        IF PEEK(SCR_ADDR+G+40*H)>0 THEN EXEC BULLET_PLAYFIELD
                        IF PEEK(53256)&6>0 THEN EXEC BULLET_HIT_BUG
                    ENDIF
                ENDIF
        UNTIL Lives<0
LOOP 
'------------------------------
PROC BUG_1_0  
    MOVE SU,PMBASE+1292+INT(8*D%),8
     C%=C%+CD%/2
     IF C%<0 
        C%=0.5
        CD%=1
        D%=D%+0.5+LV/5
     ENDIF 
     IF C%>39 
        C%=39
        CD%=-1
        D%=D%+0.5+LV/5
     ENDIF
     IF D%>=28 THEN EXEC BUG_GOT_PASSED
    POKE 53249,46+INT(C%*4):MOVE SP+8+4*O,PMBASE+1292+INT(8*D%),4
    
    'POSITION 15,0
    'PRINT C%
    
    
ENDPROC
'------------------------------
PROC BUG_1_1 
    MOVE SU,PMBASE+1292+INT(8*D%),8
    C%=C%+CD%*O*INT(2+LV/5)*(RAND(8)*6)
    IF C%<0 
        C%=0.5
        CD%=1
        D%=D%+1
     ENDIF 
     IF C%>39 
        C%=39
        CD%=-1
        D%=D%+1
     ENDIF
 
    IF D%>=28 THEN EXEC BUG_GOT_PASSED
    POKE 53250,46+INT(C%*4):MOVE SP+16+4*(CD%=1),PMBASE+1548+INT(8*D%),4
ENDPROC
'------------------------------
PROC BUG_1_2
    MOVE SU,PMBASE+1292+INT(8*D%),8:C%=C%+CD%/4
        IF C%<0 OR C%>39 
            C%=C%-CD%/4:CD%=-CD%:D%=D%+0.5+LV/10
        ENDIF
    IF D%>=28 THEN EXEC BUG_GOT_PASSED
    P=PEEK(SCR_ADDR+INT(C%+0.25)+40*INT(D%+0.5))
    IF P>0 
        C%=C%-CD%/8:CD%=-CD%:D%=D%+0.5+LV/20
    ENDIF
    POKE 53250,46+INT(C%*4):MOVE SP+24+8*(CD%=-1)+4*O,PMBASE+1292+INT(8*D%),4
ENDPROC
'------------------------------
PROC BUG_1_3
    MOVE SU,PMBASE+1292+INT(8*D%),8
    C%=C%+CD%/4
    D%=D%+0.125
    IF C%<0 OR C%>39
        C%=C%-CD%/4:CD%=-CD%:D%=D%+LV/10
    ENDIF
    IF D%>=28 THEN EXEC BUG_GOT_PASSED
    P=PEEK(SCR_ADDR+INT(C%+0.25)+40*INT(D%+0.5))
    IF P>0 
        D%=D%-0.25+LV/25:IF D%>=28 THEN EXEC BUG_GOT_PASSED
    ENDIF
    POKE 53250,46+INT(C%*4):MOVE SP+40+16*(CD%=1)+8*O,PMBASE+1292+INT(8*D%),8
ENDPROC 
'------------------------------
PROC BUG_1_4
    C%=C%+CD%/3-(LV/5)
    IF C%<0 OR C%>39 
        C1=0:POKE 53249,0:EXEC DEFINE_1ST_BUG
    ENDIF
    POKE 53250,46+INT(C%*4):MOVE SP+264+16*(CD%=-1)+8*O,PMBASE+1292+INT(8*D%),8
ENDPROC 
'------------------------------
PROC BUG_2_0
    MOVE SU,PMBASE+1548+INT(8*F%),8
    E%=E%+ED%/2
    IF E%<0 
        E%=0.5
        ED%=1
        F%=F%+0.5+LV/5
     ENDIF 
     IF E%>39 
        E%=39
        ED%=-1
        F%=F%+0.5+LV/5
     ENDIF
     IF F%>=28 THEN EXEC BUG_GOT_PASSED    
    POKE 53250,46+INT(E%*4):MOVE SP+8+4*O,PMBASE+1548+INT(8*F%),4
ENDPROC 
'------------------------------
PROC BUG_2_1
    MOVE SU,PMBASE+1548+INT(8*F%),8
    E%=E%+ED%*O*INT(2+LV/5)*(RAND(8)*6-LV/4)
        IF E%<0 
        E%=0.5
        ED%=1
        F%=F%+0.5+LV/5
     ENDIF 
     IF E%>39 
        E%=39
        ED%=-1
        F%=F%+0.5+LV/5
     ENDIF
    IF F%>=28 THEN EXEC BUG_GOT_PASSED
    POKE 53250,46+INT(E%*4):MOVE SP+16+4*(ED%=1),PMBASE+1548+INT(8*F%),4
ENDPROC 
'------------------------------
PROC BUG_2_2
    MOVE SU,PMBASE+1548+INT(8*F%),8
    E%=E%+ED%/4
    IF E%<0 OR E%>39 
        E%=E%-ED%/4:ED%=-ED%:F%=F%+0.5+LV/10:IF F%>=28 THEN EXEC BUG_GOT_PASSED
    ENDIF
    P=PEEK(SCR_ADDR+INT(E%+0.25)+40*INT(F%+0.5))
    IF P>0 
        E%=E%-ED%/8:ED%=-ED%:F%=F%+(0.5+LV/20):IF F%>=28 THEN EXEC BUG_GOT_PASSED
    ENDIF
    POKE 53250,46+INT(E%*4):MOVE SP+24+8*(ED%=-1)+4*O,PMBASE+1548+INT(8*F%),4
ENDPROC
'------------------------------
PROC BUG_2_3
    MOVE SU,PMBASE+1548+INT(8*F%),8:E%=E%+ED%*(0.2+LV/8):F%=F%+(0.1+LV/16)
    IF E%<0 OR E%>39  
        E%=E%-ED%*(0.2+LV/8):ED%=-ED%
    ENDIF
    IF F%>=28 THEN EXEC BUG_GOT_PASSED
    POKE 53250,46+INT(E%*4):MOVE SP+232+16*(ED%=1)+8*O,PMBASE+1548+INT(8*F%),8
ENDPROC
'------------------------------
PROC BUG_2_4 
    IF ED%<D% THEN ED%=ED%+O
    IF ED%>D% THEN ED%=ED%-O
    IF ED%=D% AND O*RAND(2)=1
        IF D%<4 THEN D%=4+RAND(4)
        IF D%>4 THEN D%=1+RAND(4)
        IF D%=4 THEN D%=1+RAND(7)
    ENDIF 
    IF E%<3 THEN D%=3
    IF E%>36 THEN D%=7
    IF F%<-2 THEN D%=4
    E%=E%+SIN(ED%*45)*(0.45+LV/12.5):MOVE SU,PMBASE+1292+INT(8*F%),8:F%=F%-COS(ED%*45)*(0.45+LV/12.5)
    POKE 53249,46+INT(E%)*4:MOVE SP+104+INT(ED%)*16+INT(O*8),PMBASE+1292+INT(8*F%),8
    IF F%>=25 AND E%>1 AND E%<38 THEN D%=30:EXEC BUG_GOT_PASSED
ENDPROC 
'------------------------------
PROC BULLET_PLAYFIELD
    MOVE PMBASE+512,PMBASE+789+8*H,16
    G1=PEEK(SCR_ADDR+G+40*H)
    G2=PEEK(SCR_ADDR+G+40*(H-1))
    G3=PEEK(SCR_ADDR+G+40*(H-2)) 'Z=USR(QT,1)'
    G4=PEEK(SCR_ADDR+G+1+40*H)
    G5=PEEK(SCR_ADDR+G+1+40*(H-1))
    G6=PEEK(SCR_ADDR+G-1+40*H)
    G7=PEEK(SCR_ADDR+G-1+40*(H-1))
    Z=USR(PC,1,PMBASE+768):Z=USR(SND,1,24,SU+1592,1)
    IF G1=67 AND (G2=65 OR G2=194) AND G3<>65 AND G3<>194
        POKE SCR_ADDR+G+40*H,0
        POKE SCR_ADDR+G+40*(H-1),0
    ENDIF
    IF G1=67 AND (G2=65 OR G2=194) AND (G3=65 OR G3=194)
        POKE SCR_ADDR+G+40*H,0
        POKE SCR_ADDR+G+40*(H-1),67
    ENDIF
    IF G1=68 AND (G4=69 OR G4=70) 
        POKE SCR_ADDR+G+40*H,0
        POKE SCR_ADDR+G+1+40*H,68
    ENDIF
    IF G1=71 AND (G6=69 OR G6=70) 
        POKE SCR_ADDR+G+40*H,0
        POKE SCR_ADDR+G-1+40*H,71
    ENDIF
    IF G1=68 AND G4=71 
        POKE SCR_ADDR+G+40*H,0
        POKE SCR_ADDR+G+1+40*H,0
    ENDIF
    IF G1=71 AND G6=68 
        POKE SCR_ADDR+G+40*H,0
        POKE SCR_ADDR+G-1+40*H,0
    ENDIF
    IF G1=67 AND ((G4>68 AND G4<72) OR (G6>67 AND G6<71)) 
        POKE SCR_ADDR+G+40*H,69+RAND(2)
    ENDIF        
    IF (G2=65 OR G2=194) AND ((G5>68 AND G5<72) OR (G7>67 AND G7<71)) 
        POKE SCR_ADDR+G+40*(H-1),69+RAND(2)
    ENDIF         
    IF G1=67 AND G4>68 AND G4<72 AND G6=0 
        POKE SCR_ADDR+G+40*H,68
    ENDIF
    IF G1=67 AND G4=0 AND G6>67 AND G6<71 
        POKE SCR_ADDR+G+40*H,71
    ENDIF
    IF (G2=65 OR G2=194) AND G5>68 AND G5<72 AND G7=0 THEN POKE SCR_ADDR+G+40*(H-1),68
    IF (G2=65 OR G2=194) AND G7>67 AND G7<71 AND G5=0 THEN POKE SCR_ADDR+G+40*(H-1),71
    IF (G1=69 OR G1=70) AND (G4=69 OR G4=70) AND (G6=69 OR G6=70)
      POKE SCR_ADDR+G+40*H,0
      POKE SCR_ADDR+G-1+40*H,71
      POKE SCR_ADDR+G+1+40*H,68
    ENDIF 
    IF (G1=69 OR G1=70) AND (G4=69 OR G4=70) AND G6=68  
        POKE SCR_ADDR+G+40*H,0
        POKE SCR_ADDR+G-1+40*H,0
        POKE SCR_ADDR+G+1+40*H,68
    ENDIF
    IF (G1=69 OR G1=70) AND G4=71 AND (G6=69 OR G6=70)  
        POKE SCR_ADDR+G+40*H,0
        POKE SCR_ADDR+G-1+40*H,71
        POKE SCR_ADDR+G+1+40*H,0
    ENDIF        
    IF (G1=69 OR G1=70) AND G4=71 AND G6=68  
        POKE SCR_ADDR+G+40*H,0
        POKE SCR_ADDR+G+1+40*H,0
        POKE SCR_ADDR+G-1+40*H,0
    ENDIF
    IF G4&127>63 AND G4&127<68 AND G1>67 THEN POKE SCR_ADDR+G+40*H,0
    IF G6&127>63 AND G6&127<68 AND G1>67 THEN POKE SCR_ADDR+G+40*H,0
    IF G4&127>63 AND G4&127<68 AND G1>67 AND (G6=68 OR G6=71) 
        POKE SCR_ADDR+G+40*H,0
        POKE SCR_ADDR+G-1+40*H,0
    ENDIF
    IF G6&127>63 AND G6&127<68 AND G1>67 AND (G4=68 OR G4=71) 
        POKE SCR_ADDR+G+40*H,0
        POKE SCR_ADDR+G+1+40*H,0
    ENDIF
    IF G4&127>63 AND G4&127<68 AND G1>67 AND (G6=69 OR G6=70) 
        POKE SCR_ADDR+G+40*H,0
        POKE SCR_ADDR+G-1+40*H,71
    ENDIF
    IF G6&127>63 AND G6&127<68 AND G1>67 AND (G4=69 OR G4=70) 
        POKE SCR_ADDR+G+40*H,0
        POKE SCR_ADDR+G+1+40*H,68
    ENDIF
    IF (G2=65 OR G2=194) AND G1>67 
        POKE SCR_ADDR+G+40*H,67
    ENDIF
    POKE 53278,0
    G1=0
    MOVE SU,PMBASE+789+8*H,8
    MOVE SU,PMBASE+797+8*H,8
ENDPROC
'------------------------------
PROC BULLET_HIT_BUG
    IF PEEK(53256)&2=2
      POKE 705,15:SOUND 3,0,0,0:Z=USR(SND,2,18,SU+1660,2)
      IF C1=1 THEN SC=SC+2
      IF C1=2 THEN SC=SC+10
      IF C1=3 THEN SC=SC+5
      IF C1=4 THEN SC=SC+25
      IF C1=5 THEN SC=SC+200
      IF E1=5 THEN SOUND 0,0,0,0:Z=USR(SND,0,SU+1616,48,2):SC=SC+100:E1=0:EXEC DEFINE_1ST_BUG:EXEC DEFINE_2ND_BUG
      EXEC DEFINE_1ST_BUG
    ENDIF 
    IF PEEK(53256)&4=4
      POKE 706,15:SOUND 3,0,0,0:Z=USR(SND,2,18,SU+1660,2)
      IF E1=1 THEN SC=SC+2
      IF E1=2 THEN SC=SC+10
      IF E1=3 THEN SC=SC+5
      IF E1=4 THEN SC=SC+50
      EXEC DEFINE_2ND_BUG
    ENDIF 
    POKE 53278,0:POKE PMBASE+768,0:MOVE PMBASE+768,PMBASE+769,255
    POKE 53252,0:G1=0
    CT=CT+1
    IF CT>=10 
        LV=LV+(LV<10)
        CT=1
        EXEC DRAW_FIELD
    ENDIF
    IF SC>EM  
        EM=EM+1000
        Lives=Lives+1
        Z=USR(SND,3,48,SU+1718,2)
    ENDIF
    EXEC PRINT_SCORE
    POKE 53278,0
    G1=0
    MOVE SU,PMBASE+789+8*H,8
    MOVE SU,PMBASE+797+8*H,8
ENDPROC
'------------------------------
PROC BUG_GOT_PASSED
    Z=USR(SND,1,40,SU+1678,0)
    Lives=Lives-1
    IF Lives<0 
        EXEC DISPLAY_GAME_OVER
    ELSE
        EXEC PRINT_SCORE
        IF D%>25 THEN EXEC DEFINE_1ST_BUG
        IF F%>25 THEN EXEC DEFINE_2ND_BUG
    ENDIF
ENDPROC
'------------------------------
PROC PRINT_SCORE
    POSITION 0,0
    PRINT "SCORE:";SC
    POSITION 20,0
    PRINT "PASS:";Lives
    POSITION 30,0
    PRINT "LEVEL:";LV
ENDPROC 
'------------------------------
PROC DRAW_FIELD
    POKE 711,12+16*(5+RAND(5))
    CLS #6
    FOR N=3 TO 22
        FOR M=0 TO 2
            X=RAND(40):Y=RAND(2+P)+1
                IF Y =0 
                    EXEC DRAW_PIECE_0
                ELIF Y = 1
                    EXEC DRAW_PIECE_1
                ELIF Y = 2
                    EXEC DRAW_PIECE_2
                ENDIF
                P=1
        NEXT M
    NEXT N
    EXEC DEFINE_1ST_BUG:EXEC DEFINE_2ND_BUG
ENDPROC 
'------------------------------
 
PROC DRAW_PIECE_0
    POKE SCR_ADDR+X+40*N,67:POKE SCR_ADDR+X+40*(N-1),65
ENDPROC 
'------------------------------
PROC DRAW_PIECE_1
    POKE SCR_ADDR+X+40*N,67:POKE SCR_ADDR+X+40*(N-1),194 
ENDPROC
'------------------------------
PROC DRAW_PIECE_2
    X=INT(X*0.75):Y=RAND(8)+2
    IF PEEK(SCR_ADDR+X+40*N)<>67 THEN POKE SCR_ADDR+X+40*N,68
    IF PEEK(SCR_ADDR+X+Y+40*N)<>67 THEN POKE SCR_ADDR+X+Y+40*N,71
    FOR O=1 TO Y-1:IF PEEK(SCR_ADDR+X+O+40*N)<>67 THEN POKE SCR_ADDR+X+O+40*N,69+RAND(2)
    NEXT O:P=0:O=0
ENDPROC
'------------------------------
PROC DEFINE_1ST_BUG
     C1=RAND(6)+1:POKE PMBASE+1280,0:MOVE PMBASE+1280,PMBASE+1281,255
     IF E1=5 OR C1=6 THEN C1=6 
     IF C1=1 THEN C%=RAND(40):D%=2:CD%=-1+RAND(2)*2:POKE 705,48
     IF C1=2 THEN C%=RAND(40):D%=2:CD%=-1+RAND(2)*2:POKE 705,240
     IF C1=3 THEN C%=RAND(40):D%=2:CD%=-1+RAND(2)*2:POKE 705,70
     IF C1=4 THEN C%=RAND(20)*2:D%=2:CD%=-1+RAND(2)*2:POKE 705,104
     IF C1=5 THEN CD%=-1+RAND(2)*2:POKE 705,40:C%=19.5-19.5*CD%:D%=3+RAND(12)
ENDPROC 
'------------------------------
PROC DEFINE_2ND_BUG
  E1=RAND(4)+1:POKE PMBASE+1536,0:MOVE PMBASE+1536,PMBASE+1537,255:IF C1=6 THEN E1=5:C1=0
  IF E1=1 THEN E%=RAND(40):F%=2:ED%=-1+RAND(2)*2:POKE 706,48
  IF E1=2 THEN E%=RAND(40):F%=2:ED%=-1+RAND(2)*2:POKE 706,240
  IF E1=3 THEN E%=RAND(40):F%=2:ED%=-1+RAND(2)*2:POKE 706,70
  IF E1=4 THEN E%=1+RAND(18)*2:F%=0:ED%=-1+RAND(2)*2:POKE 706,18
  IF E1=5 THEN E%=10+RAND(20):F%=-1:ED%=4:D%=2+RAND(5):POKE 705,202
ENDPROC 
'------------------------------
PROC DISPLAY_GAME_OVER
    FOR N=0 TO 9:POSITION 12,12:? "                    ":PAUSE 10
        POSITION 12,12:? "G A M E      O V E R":PAUSE 10
    NEXT N
    IF SC>H1 
        H3=H2:H2=H1:H1=SC
    ELIF SC>H2 
        H3=H2:H2=SC
    ELIF SC>H3 
        H3=SC
    ENDIF          
ENDPROC 
'------------------------------
PROC DISPLAY_TITLE
    GM=28:PM=1:EXEC GRAPHICS:POKE 712,128:POKE 710,140:POKE 709,68:POKE 711,218
    POSITION 12,3:PRINT #6,"B U G   I N V A D E":POSITION 22,4:PRINT #6,"By Peter J. Meyer":POKE DPEEK(560)+8,5
    POSITION 3,8:PRINT #6,"Your score:";SC
    POSITION 0,10:PRINT #6,"High scores:"
    POSITION 12,10:PRINT #6,H1
    POSITION 9,11:PRINT #6,"2nd:";H2
    POSITION 10,12:PRINT #6,"3rd:";H3
    POSITION 0,20:PRINT #6," Press START or FIRE to play begin game":POKE DPEEK(560)+25,2
    
    REPEAT 
    UNTIL PEEK(53279)=6 OR STRIG(0)=0
    GM=128:PM=1:EXEC GRAPHICS
    
ENDPROC
'****************************************************************************
'***
'*** Load and Set Up processes. "BUGINVDE.DAT" to be replaced with internal Data
'***
'***
'****************************************************************************   

PROC LOAD_AND_SET_UP
  POKE 106,PEEK(106)-16:GRAPHICS 0
  OPEN #1,4,0,"D:BUGINVDE.DAT"
  SU=PEEK(106)*256:BGET #1,SU,4095:IF PEEK(SU+3842)&64=64 THEN BGET #1,1536,255
  SND=1703 '1702 Plus 1 to bypass PLA instruction
  QT=1742  '1741 Plus 1 to bypass PLA instruction
  Z=USR(1565) ' Plus 1 to bypass PLA instruction
  CLOSE #1:DPOKE SU+4074,DPEEK(SU+4074)+SU:DPOKE SU+4083,DPEEK(SU+4083)+SU
  SP=SU+1024
  PMV=SU+3639 'SU+3638 Plus 1 to bypass PLA instruction
  RMV=SU+3885 'SU+3884 Plus 1 to bypass PLA instruction
  PC=SU+3861  'SU+3860 Plus 1 to bypass PLA instruction
  GM=PEEK(SU+3840):PM=1:EXEC GRAPHICS
  STK=SU+3189 'SU+3188 Plus 1 to bypass PLA instruction
  POKE 600,122:POKE 601,197:POKE 602,4:POKE 603,8:POKE 604,46:POKE 605,202:POKE 606,197:POKE 607,229
ENDPROC 
'------------------------------
PROC GRAPHICS
  IF PM=1 
    PAGES=8
    DMA=60+PEEK(SU+3841)
  ENDIF
  POKE 106,INT((SU-PAGES*256)/256)
  IF PEEK(SU+3842)&128=128 AND PMBASE
    MOVE PMBASE,256*PEEK(106),256*PAGES
  ENDIF
  POKE 82,0:POKE 751,1:IF GM>127:GRAPHICS 0:ELSE :GRAPHICS GM:ENDIF 
  POKE 623,4:POKE 53277,3:PMBASE=PEEK(106)*256:IF PEEK(SU+3842)&128=0 THEN Z=USR(PC,PAGES,PMBASE)
  POKE 54279,PEEK(106):POKE 559,DMA:MOVE SU+3850,704,9:POKE 756,SU/256
  IF GM>127 THEN EXEC CUSTOM_DISPLAY_LIST
ENDPROC 
'------------------------------
PROC CUSTOM_DISPLAY_LIST
  DPOKE 88,(PEEK(106)*256)-(PEEK(SU+3848)*256)
  SCR_ADDR=DPEEK(88)
  DL=SU+3328
  N=DL
  L=SU+2048:M=0
  IF DL_ADDR_SET = 0 
      REPEAT 
        P=PEEK(N)
        IF (P&64)=64 AND (P&15)>1 
            EXEC POINT_TO_LINE
        ELIF P=65 
            DPOKE N+1,DL
        ENDIF
        IF P&128=128 THEN EXEC SET_DLI_POINTERS
        N=N+1
        UNTIL N>DL+310 OR P=65
        DL_ADDR_SET = 1
  ENDIF     
  POKE SU+3309,(SU+2048) MOD 256:POKE SU+3314,(SU+2048)/256:DPOKE 560,DL      
  IF PEEK(SU+3842)&16=16 
    DPOKE 546,SU+3308:PAUSE 1:POKE 54286,192
  ENDIF
ENDPROC 
'------------------------------
PROC POINT_TO_LINE
  IF M=0 THEN M=1
  LM_ADDR=DPEEK(N+1):LM_ADDR = SCR_ADDR + LM_ADDR   
  DPOKE N+1,INT(LM_ADDR)
  N=N+2
ENDPROC 
'------------------------------
PROC SET_DLI_POINTERS
  IF L=SU+2048
    POKE L+49,L/256:POKE L+47,L MOD 256
  ELSE 
    L=L-60:POKE L+49,(L+60) / 256:POKE L+47,(L+60) MOD 256:L=L+60:POKE L+49,(SU+2048) / 256
    POKE L+47,(SU+2048) MOD 256
  ENDIF 
  L=L+60
ENDPROC 
'------------------------------
PROC INITIALIZE
  SC=0:Lives=3:A=0:B=0:LV=0
  GM=128:PM=1:EXEC GRAPHICS
ENDPROC 
'------------------------------


