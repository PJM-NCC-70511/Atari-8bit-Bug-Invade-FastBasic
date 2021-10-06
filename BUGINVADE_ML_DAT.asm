_PMBANK                                 =$1800                                        
_VARBANK                                =$0600                                                                                                                                       
_SCREEN_ADDR                            =$0800                                         
_GAME_SCREEN_ADDR                       =$0840                                        

_RTCLOCK                                =$12
_PMBANK_HI                              = >_PMBANK   

_M0		        	          	            =$C0
_M1		        	          	            =$C1
_M2		        	          	            =$C2
_M3		        	          	            =$C3
_M4		        	          	            =$C4
_M5		        	          	            =$C5
_M6		        	          	            =$C6
_M7		        	          	            =$C7
_M8		        	          	            =$C8
_M9		        	          	            =$C9
_NDX0									                  =$CA
_NDX1									                  =$CB
_NDX2									                  =$CC
_NDX3									                  =$CD
_HOLDX									                =$CE
_HOLDY									                =$CF
              
                                      ;PLAY_SOUNDS                                      =SOUND_COMMANDER + $0000	    
                                      ;START_SOUND                                      =SOUND_COMMANDER + $009F      
                                      ;GET_NEXT_MUSIC_NOTE                              =SOUND_COMMANDER + $00F6      
                                      ;STOP_SOUND                                       =SOUND_COMMANDER + $0189      
                                      ;SILENCE                                          =SOUND_COMMANDER + $019E      

_SPRITENUM	                                     =_PMBANK+$0180
_SETSP0COLOR                                     =_PMBANK+$0190
_SETSP1COLOR                                     =_PMBANK+$01A0
_SETSPWIDTH                                      =_PMBANK+$01B0
_SPRITENHOZ                                      =_PMBANK+$01C0
_SPRITENVRT                                      =_PMBANK+$01E0
_SPHOZNEXT                                       =_PMBANK+$01F0

_SPRHZ0	                            	           =_PMBANK+$0200 
_SPRHZ1	                            	           =_PMBANK+$0210 
_SPRHZ2	                            	           =_PMBANK+$0220 
_SPRHZ3	                            	           =_PMBANK+$0230 
_SPZONT                                          =_PMBANK+$0240
_SPZONB                                          =_PMBANK+$0250
_SPSRC0                                          =_PMBANK+$0260 
_SPSRC1                                          =_PMBANK+$0278
_SPSRC2                                          =_PMBANK+$0290
_SPSRC3                                          =_PMBANK+$02A8
_SPSRC4                                          =_PMBANK+$02C0
_SPRITEUSE                                       =_PMBANK+$02D8
                                            
_MIBANK                                          =_PMBANK+$0300
_PMBNK0                                          =_PMBANK+$0400
_PMBNK1                             	           =_PMBANK+$0500
_PMBNK2                                          =_PMBANK+$0600
_PMBNK3                             	           =_PMBANK+$0700
            
_character_px                                    =_VARBANK + $020
_character_py                                    =_VARBANK + $021
_character_status                                =_VARBANK + $022
_prior_py                                        =_VARBANK + $024
_stick_read                                      =_VARBANK + $026 
_character_frame                                 =_VARBANK + $027
_prior_rt_clock                                  =_VARBANK + $02C
_menu_selection                                  =_VARBANK + $02D
_find_option                                     =_VARBANK + $02E
_bombs_on_option                                 =_VARBANK + $02F
_walls_on_option                                 =_VARBANK + $030
_shooters_option                                 =_VARBANK + $032
_mind_color                                      =_VARBANK + $034
_show_countdown                                  =_VARBANK + $036
_minds_found                                     =_VARBANK + $038
_minds_under                                     =_VARBANK + $03A
_titlephase                                      =_VARBANK + $03C
_score                                           =_VARBANK + $03E
_lives                                           =_VARBANK + $040
_level                                           =_VARBANK + $041
_topMem                                          =_VARBANK + $042;
_chbase1                                         =_VARBANK + $044;
_row_addr                                        =_VARBANK + $046; 
_exit_cx  	                                	   =_VARBANK + $048;
_exit_cy  	                                		 =_VARBANK + $049; 
_exit_p0  	                                		 =_VARBANK + $04A;
_exit_p1  	                                		 =_VARBANK + $04B; 
_SOUND_COMMANDER_VARIABLE_AREA                   =_VARBANK + $060;



      .export _PMBANK
      .export _VARBANK                                        
      .export _SCREEN_ADDR                                         
      .export _GAME_SCREEN_ADDR
      .export _PMBANK_HI

      .export _M0									  
      .export _M1									  
      .export _M2								  
      .export _M3									  
      .export _M4									  
      .export _M5								  
      .export _M6									  
      .export _M7									  
      .export _M8									  
      .export _M9									  
      
      .export _NDX0									  
      .export _NDX1									  
      .export _NDX2									  
      .export _NDX3									  
      .export _HOLDX									  
      .export _HOLDY									                  
      ;.export _PLAY_SOUNDS           
      ;.export _START_SOUND           
      ;.export _GET_NEXT_MUSIC_NOTE   
      ;.export _STOP_SOUND            
      ;.export _SILENCE               
      .export _SPRITENUM	            
      .export _SETSP0COLOR           
      .export _SETSP1COLOR           
      .export _SETSPWIDTH            
      .export _SPRITENHOZ            
      .export _SPRITENVRT            
      .export _SPHOZNEXT             
      .export _SPRHZ0	              
      .export _SPRHZ1	              
      .export _SPRHZ2	              
      .export _SPRHZ3	              
      .export _SPZONT                
      .export _SPZONB                
      .export _SPSRC0                
      .export _SPSRC1                
      .export _SPSRC2                
      .export _SPSRC3                
      .export _SPSRC4                
      .export _SPRITEUSE                                    
      .export _MIBANK                
      .export _PMBNK0                          
      .export _PMBNK1                    
      .export _PMBNK2                    
      .export _PMBNK3                

      .export _character_px     
      .export _character_py     
      .export _character_status 
      .export _prior_py         
      .export _stick_read       
      .export _character_frame
      .export _prior_rt_clock   
      .export _menu_selection   
      .export _find_option      
      .export _bombs_on_option  
      .export _walls_on_option  
      .export _shooters_option  
      .export _mind_color       
      .export _show_countdown   
      .export _minds_found      
      .export _minds_under      
      .export _titlephase       
      .export _score            
      .export _lives                  
      .export _level                  
      .export _topMem                 
      .export _chbase1                
      .export _row_addr               
      .export _exit_cx  	             
      .export _exit_cy  	             
      .export _exit_p0  	             
      .export _exit_p1


      .import         initlib, donelib, callmain
      .import         zerobss, pushax
      .import         copysegs
      .import         _main, __filetab, getfd
      .import         __BSS_LOAD__
      .import         __RESERVED_MEMORY__
      .import         __STACK_START__, __STACK_SIZE__

    	.import         __LOWCODE_LOAD__, __LOWCODE_RUN__, __LOWCODE_SIZE__
    	.import         __INIT_LOAD__, __INIT_RUN__, __INIT_SIZE__
    	.import         __CODE_LOAD__, __CODE_RUN__, __CODE_SIZE__
    	.import         __RODATA_LOAD__, __RODATA_RUN__, __RODATA_SIZE__
    	.import         __DATA_LOAD__, __DATA_RUN__, __DATA_SIZE__

      .import         VECTORS        	                   
      .segment "DATA0"
       
      .include "Atari 8-bit Equates.asm"
      .include "zeropage.inc"      
      .include "mindfield_data.asm"
      .include "Mind_Field_Interupts.asm"
      .include "atari_sound_commander.asm"
            



; ------------------------------------------------------------------------
; Actual code

	.segment        "LOWCODE"

	rts     ; fix for SpartaDOS / OS/A+
		; they first call the entry point from AUTOSTRT and
		; then the load addess (this rts here).
		; We point AUTOSTRT directly after the rts.

; Real entry point:


; Copy the data segement


	lda     #<__CODE_LOAD__         ; Source pointer
	sta     ptr1
	lda     #>__CODE_LOAD__
	sta     ptr1+1

	lda     #<__CODE_RUN__          ; Target pointer
	sta     ptr2
	lda     #>__CODE_RUN__
	sta     ptr2+1

	ldx     #<~__CODE_SIZE__
	lda     #>~__CODE_SIZE__        ; Use -(__DATASIZE__+1)

	jsr copyseg

	lda     #<__RODATA_LOAD__         ; Source pointer
	sta     ptr1
	lda     #>__RODATA_LOAD__
	sta     ptr1+1

	lda     #<__RODATA_RUN__          ; Target pointer
	sta     ptr2
	lda     #>__RODATA_RUN__
	sta     ptr2+1

	ldx     #<~__RODATA_SIZE__
	lda     #>~__RODATA_SIZE__        ; Use -(__DATASIZE__+1)

	jsr copyseg

	lda     #<__DATA_LOAD__         ; Source pointer
	sta     ptr1
	lda     #>__DATA_LOAD__
	sta     ptr1+1

	lda     #<__DATA_RUN__          ; Target pointer
	sta     ptr2
	lda     #>__DATA_RUN__
	sta     ptr2+1

	ldx     #<~__DATA_SIZE__
	lda     #>~__DATA_SIZE__        ; Use -(__DATASIZE__+1)

	jsr copyseg
	


; Clear the BSS data

        jsr     zerobss

        lda     #<(__STACK_START__ + __STACK_SIZE__ - 1)
        sta     sp
        lda     #>(__STACK_START__ + __STACK_SIZE__ - 1)
        sta     sp+1

; Call module constructors

        jsr     initlib
.ifdef  DYNAMIC_DD
	      jsr     __getdefdev
.endif

      	jsr     callmain

; Call module destructors. This is also the _exit entry.

_exit:  jsr     donelib         ; Run module destructors

; Restore system stuff

;        ldx     spsave
;        txs                     ; Restore stack pointer

; restore left margin

;        lda     old_lmargin
;        sta     LMARGN

; restore kb mode

;        lda     old_shflok
;        sta     SHFLOK

; restore APPMHI

;        lda     appmsav
;        sta     APPMHI
;        lda     appmsav+1
;        sta     APPMHI+1

; Copy back the zero page stuff

;        ldx     #zpspace-1
;L2:     lda     zpsave,x
;        sta     sp,x
;        dex
;        bpl     L2

; turn on cursor

;        inx
;        stx     CRSINH

; Back to DOS

;        rts
END:     jmp END            ; loop forever


copyseg:
	sta     tmp1
	ldy     #$00

; Copy loop

@L1:    inx
	beq     @L3

@L2:    lda     (ptr1),y
	sta     (ptr2),y
	iny
	bne     @L1
	inc     ptr1+1
	inc     ptr2+1                  ; Bump pointers
	bne     @L1                     ; Branch always (hopefully)

; Bump the high counter byte

@L3:    inc     tmp1
	bne     @L2

; Done

	rts

; *** end of main startup code

          .segment "DATA0"


_GAME_VBI:
      .export _GAME_VBI 
		lda #<_GAME00_DLI
		sta VDSLST+0
		lda #>_GAME00_DLI
		sta VDSLST+1
		lda #$22
		sta COLBAK
		lda _mind_color
		sta COLPF3		
  ;//  inc_RTCLOCK
  ;//bne no_inc_other_clock
  ;//inc RTCLOCK+1
  ;//no_inc_other_clock:
      
	  	LDA _prior_py
	  	STA _NDX2
	  	LDA #>_PMBNK0
	  	STA _NDX3
	  	
	  	LDA #0
	  	LDY #13
Clear_Character_Prior_Loop:
      STA (_NDX2),Y
      DEY
      BPL Clear_Character_Prior_Loop   	
      	
      LDA _character_py
      STA _NDX2
      LDA #>_PMBNK0
      STA _NDX3
        
      LDY _character_frame  
        
             
      LDA _SPRITEADDR_PLY0LO,Y
      STA _NDX0
        
      LDA _SPRITEADDR_PLY0HI,Y
      STA _NDX1
        	
      LDY #13
Copy_Character_Image_Loop:
		LDA (_NDX0),Y
		STA (_NDX2),Y
		DEY
		BPL Copy_Character_Image_Loop
		
		LDA _character_px
		STA HPOSP0   	
    
    LDA _character_py 
		STA _prior_py 


		jmp XITVBV	


_TITLE_VBI:
      .export _TITLE_VBI 
		lda #<_TITLE00_DLI
		sta VDSLST+0
		lda #>_TITLE00_DLI
		sta VDSLST+1
		lda #$22
		sta COLBAK
		lda #$36
		sta COLPF3				
		inc _RTCLOCK+2
		jmp XITVBV


_PAUSE_VBI:
      .export _PAUSE_VBI

		jmp XITVBV

_TITLE00_DLI:
      .export _TITLE00_DLI 
	pha	
	lda #$D8
	sta WSYNC
	sta COLPF0
	lda #$06
	sta COLPF1
	lda #$AA
	sta COLPF1
	lda #>_CHARSET_TITLE
	sta CHBASE
	lda #<_TITLE01_DLI
	sta VDSLST+0
	lda #>_TITLE01_DLI
	sta VDSLST+1
	pla
	rti

_TITLE01_DLI:
      .export _TITLE01_DLI 
	pha	
	lda #142
	sta WSYNC
	sta COLPF0
	lda #216
	sta COLPF1
	lda #56
	sta COLPF2
	lda #>_CHARSET_GAME
 	sta CHBASE
	lda #<_TITLE00_DLI
	sta VDSLST+0
	lda #>_TITLE00_DLI
	sta VDSLST+1
	pla
	rti

_TITLE02_DLI:
      .export _TITLE02_DLI 
	PHA
  PLA
  RTI


_TITLE03_DLI:
      .export _TITLE03_DLI 
	PHA
  PLA
  RTI


_GAME00_DLI:
      .export _GAME00_DLI 
	PHA
  PLA
  RTI

_GAME01_DLI:
      .export _GAME01_DLI 
	PHA
  PLA
  RTI

_GAME02_DLI:
      .export _GAME02_DLI 
	PHA
  PLA
  RTI

_GAME03_DLI:
      .export _GAME03_DLI 
	PHA
  PLA
  RTI

_GAME04_DLI:
      .export _GAME04_DLI 
	PHA
  PLA
  RTI



_RANDOM_PLACE_MINDS:
    .export _RANDOM_PLACE_MINDS
			LDA #193
      LDY RANDOM      
      STA _GAME_SCREEN_ADDR+0,Y
      LDY RANDOM
      STA _GAME_SCREEN_ADDR+256,Y 
      LDY RANDOM
      STA _GAME_SCREEN_ADDR+512,Y 
      LDY RANDOM
      STA _GAME_SCREEN_ADDR+768,Y        
      RTS


_SCAN_FOR_MINDS:
            .export _SCAN_FOR_MINDS            
;     
; Scan For Minds
;
                            
              LDA _character_px
              SEC
              SBC #55
              CMP #248
              BCC SM_L0 
              LDA #0
SM_L0:
              CMP #148
              BCC SM_L1
              LDA #148
SM_L1:                                                         
              LSR
              LSR 
              STA _M2
              
              LDA _character_py
              SEC
              SBC #32
              BCS SM_L2
              LDA #0
SM_L2:              
              LSR
              LSR 
              LSR
              STA _M1

              LDA #0
              STA _M6
              STA _minds_found 
              LDY _M1
              CPY #26
              BCS Scan_For_restore_Beyond_Screen
              DEY
              DEY                

              STY _M5
              BPL No_0_First_restore_Row
              LDY #0
No_0_First_restore_Row:
              LDA _M2
              CLC
              ADC _SCRREN_ROW_LOW,Y
              STA _NDX0
              LDA _SCRREN_ROW_HIGH,Y
              ADC #0
              STA _NDX1
Scan_restore_Row_Start:
              LDA _M5
              BEQ Skip_restore_Scan_Row
              CMP #26
              BCS Skip_restore_Scan_Row                           
              LDY #5
Scan_For_restore_Loop:                          
              LDA (_NDX0),Y
              CMP _M3 
              BNE No_restore_Found
              LDA _M4
              STA (_NDX0),Y
              INC _minds_found
No_restore_Found:
              DEY
              BPL Scan_For_restore_Loop

              LDA _NDX0
              CLC
              ADC #40 ; or 48 if widescren
              STA _NDX0
              BCC SM_L5
              INC _NDX1
SM_L5:       

Skip_restore_Scan_Row:
              LDY _M6
              INY
              CPY #5
              STY _M6
              BCS Scan_For_restore_Beyond_Screen
              INC _M5 
              JMP Scan_restore_Row_Start                                             
Scan_For_restore_Beyond_Screen:
              RTS

_CHARSET_GAME:
  .incbin         "MINDFIELD.FNT"
_CHARSET_TITLE:
  .incbin         "MIND FIELD TITLE.FNT"
_TITLE_DATA:
  .incbin         "Mind Field Title Screen.txt"

      _CHARSET_GAME_HI = > _CHARSET_GAME
      _CHARSET_TITLE_HI = > _CHARSET_TITLE

      
      .export _CHARSET_GAME
      .export _CHARSET_TITLE
      .export _CHARSET_GAME_HI 
      .export _CHARSET_TITLE_HI
      .export _TITLE_DATA

;     _CHARSET_TITLE_HI         = .hibyte(_CHARSET_TITLE)
;     _CHARSET_GAME_HI          = .hibyte(_CHARSET_GAME)
;     .export _CHARSET_TITLE_HI
;     .export _CHARSET_GAME_HI
      
_display_list_title:
     .byte $70,$C0,$44
     .byte <_TITLE_DATA
     .byte >_TITLE_DATA
     .byte $04,$04,$04,$04,$04,$04,$84,$00,$44
     .byte <_GAME_SCREEN_ADDR
     .byte >_GAME_SCREEN_ADDR
     .byte $00,$04,$00,$04,$00,$04,$00,$04,$00,$04,$00,$04,$00,$04,$00,$04,$00,$04,$00,$04,$00,$04,$00,$04,$00,$04,$00,$04,$00,$04,$00,$04,$00,$04,$41
     .byte <_display_list_title 
     .byte >_display_list_title
    
_display_list_game:
     .byte $70,$70,$44
     .byte <_SCREEN_ADDR
     .byte >_SCREEN_ADDR
     .byte $10,$44
     .byte <_GAME_SCREEN_ADDR
     .byte >_GAME_SCREEN_ADDR
     .byte $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$41
     .byte <_display_list_game 
     .byte >_display_list_game
      
      .export _display_list_title
      .export _display_list_game


_SCRREN_ROW_LOW:
    .byte <(_GAME_SCREEN_ADDR +   0),<(_GAME_SCREEN_ADDR +   40), <(_GAME_SCREEN_ADDR +  80), <(_GAME_SCREEN_ADDR + 120), <(_GAME_SCREEN_ADDR + 160)
    .byte <(_GAME_SCREEN_ADDR + 200), <(_GAME_SCREEN_ADDR + 240), <(_GAME_SCREEN_ADDR + 280), <(_GAME_SCREEN_ADDR + 320), <(_GAME_SCREEN_ADDR + 360)  
  	.byte <(_GAME_SCREEN_ADDR + 400), <(_GAME_SCREEN_ADDR + 440), <(_GAME_SCREEN_ADDR + 480), <(_GAME_SCREEN_ADDR + 520), <(_GAME_SCREEN_ADDR + 560)
  	.byte <(_GAME_SCREEN_ADDR + 600), <(_GAME_SCREEN_ADDR + 640), <(_GAME_SCREEN_ADDR + 680), <(_GAME_SCREEN_ADDR + 720), <(_GAME_SCREEN_ADDR + 760)
    .byte <(_GAME_SCREEN_ADDR + 800), <(_GAME_SCREEN_ADDR + 840), <(_GAME_SCREEN_ADDR + 880), <(_GAME_SCREEN_ADDR + 920), <(_GAME_SCREEN_ADDR + 960)
    .byte <(_GAME_SCREEN_ADDR + 1000) 
    
_SCRREN_ROW_HIGH:
	  .byte >(_GAME_SCREEN_ADDR +   0), >(_GAME_SCREEN_ADDR +  40), >(_GAME_SCREEN_ADDR +  80), >(_GAME_SCREEN_ADDR + 120), >(_GAME_SCREEN_ADDR + 160)
  	.byte >(_GAME_SCREEN_ADDR + 200), >(_GAME_SCREEN_ADDR + 240), >(_GAME_SCREEN_ADDR + 280), >(_GAME_SCREEN_ADDR + 320), >(_GAME_SCREEN_ADDR + 360)
  	.byte >(_GAME_SCREEN_ADDR + 400), >(_GAME_SCREEN_ADDR + 440), >(_GAME_SCREEN_ADDR + 480), >(_GAME_SCREEN_ADDR + 520), >(_GAME_SCREEN_ADDR + 560)
  	.byte >(_GAME_SCREEN_ADDR + 600), >(_GAME_SCREEN_ADDR + 640), >(_GAME_SCREEN_ADDR + 680), >(_GAME_SCREEN_ADDR + 720), >(_GAME_SCREEN_ADDR + 760)
  	.byte >(_GAME_SCREEN_ADDR + 800), >(_GAME_SCREEN_ADDR + 840), >(_GAME_SCREEN_ADDR + 880), >(_GAME_SCREEN_ADDR + 920), >(_GAME_SCREEN_ADDR + 960)
  	.byte >(_GAME_SCREEN_ADDR + 1000)  

      .export _SCRREN_ROW_LOW
      .export _SCRREN_ROW_HIGH




P000:
     .byte %00010000; $10  16
     .byte %00111000; $38  56
     .byte %00111000; $38  56
     .byte %01111100; $7C  124
     .byte %01111100; $7C  124
     .byte %01111100; $7C  124
     .byte %01111100; $7C  124
     .byte %00111000; $38  56
     .byte %00111000; $38  56
     .byte %00111000; $38  56
     .byte %00101000; $28  40
     .byte %00101000; $28  40
     .byte %00101000; $28  40
     .byte %00101000; $28  40

P001:
     .byte %00010000; $10  16
     .byte %00111000; $38  56
     .byte %00111000; $38  56
     .byte %01111000; $78  120
     .byte %01111000; $78  120
     .byte %01111100; $7C  124
     .byte %01111110; $7E  126
     .byte %00111010; $3A  58
     .byte %00111010; $3A  58
     .byte %00111000; $38  56
     .byte %00101000; $28  40
     .byte %00101100; $2C  44
     .byte %00100100; $24  36
     .byte %00100000; $20  32

P002:
     .byte %00011100; $1C  28
     .byte %00011100; $1C  28
     .byte %00001100; $0C  12
     .byte %00011110; $1E  30
     .byte %00111110; $3E  62
     .byte %00111110; $3E  62
     .byte %00011110; $1E  30
     .byte %00011100; $1C  28
     .byte %00011000; $18  24
     .byte %00011000; $18  24
     .byte %00011000; $18  24
     .byte %00011100; $1C  28
     .byte %00011100; $1C  28
     .byte %00010100; $14  20

P003:
     .byte %00010000; $10  16
     .byte %00111000; $38  56
     .byte %00111000; $38  56
     .byte %00111100; $3C  60
     .byte %00111100; $3C  60
     .byte %01111100; $7C  124
     .byte %11111100; $FC  252
     .byte %10111000; $B8  184
     .byte %10111000; $B8  184
     .byte %00111000; $38  56
     .byte %00101000; $28  40
     .byte %00101100; $2C  44
     .byte %00100100; $24  36
     .byte %00100000; $20  32

P004:
     .byte %00011100; $1C  28
     .byte %00011100; $1C  28
     .byte %00011000; $18  24
     .byte %00111100; $3C  60
     .byte %00111110; $3E  62
     .byte %00111110; $3E  62
     .byte %00111100; $3C  60
     .byte %00011100; $1C  28
     .byte %00001100; $0C  12
     .byte %00001100; $0C  12
     .byte %00001100; $0C  12
     .byte %00011100; $1C  28
     .byte %00011100; $1C  28
     .byte %00010100; $14  20

P005:
     .byte %00010000; $10  16
     .byte %00111000; $38  56
     .byte %00111000; $38  56
     .byte %00111100; $3C  60
     .byte %00111100; $3C  60
     .byte %01111100; $7C  124
     .byte %11111100; $FC  252
     .byte %10111000; $B8  184
     .byte %10111000; $B8  184
     .byte %00111000; $38  56
     .byte %00101000; $28  40
     .byte %01101000; $68  104
     .byte %01001000; $48  72
     .byte %01001000; $48  72

P006:
     .byte %00011100; $1C  28
     .byte %00011100; $1C  28
     .byte %00001100; $0C  12
     .byte %00011100; $1C  28
     .byte %00011110; $1E  30
     .byte %00011101; $1D  29
     .byte %00111110; $3E  62
     .byte %00111100; $3C  60
     .byte %00011000; $18  24
     .byte %00011000; $18  24
     .byte %00100100; $24  36
     .byte %00100010; $22  34
     .byte %01000001; $41  65
     .byte %01000001; $41  65

P007:
     .byte %00010000; $10  16
     .byte %00111000; $38  56
     .byte %00111000; $38  56
     .byte %01111000; $78  120
     .byte %01111000; $78  120
     .byte %01111100; $7C  124
     .byte %01111110; $7E  126
     .byte %00111010; $3A  58
     .byte %00111010; $3A  58
     .byte %00111000; $38  56
     .byte %00101000; $28  40
     .byte %01101000; $68  104
     .byte %01001000; $48  72
     .byte %01001000; $48  72

P008:
     .byte %00011100; $1C  28
     .byte %00011100; $1C  28
     .byte %00011000; $18  24
     .byte %00011100; $1C  28
     .byte %00111100; $3C  60
     .byte %01011100; $5C  92
     .byte %00111110; $3E  62
     .byte %00011110; $1E  30
     .byte %00001100; $0C  12
     .byte %00001100; $0C  12
     .byte %00010010; $12  18
     .byte %00100010; $22  34
     .byte %01000001; $41  65
     .byte %01000001; $41  65

P009:
     .byte %11000011; $C3  195
     .byte %11000011; $C3  195
     .byte %01100110; $66  102
     .byte %00111100; $3C  60
     .byte %00011000; $18  24
     .byte %00111100; $3C  60
     .byte %01111110; $7E  126
     .byte %01111110; $7E  126
     .byte %01111110; $7E  126
     .byte %01111110; $7E  126
     .byte %01111110; $7E  126
     .byte %01111110; $7E  126
     .byte %00111100; $3C  60
     .byte %00011000; $18  24

P010:
     .byte %00000000; $00  0
     .byte %11000110; $C6  198
     .byte %11000110; $C6  198
     .byte %01101100; $6C  108
     .byte %00111000; $38  56
     .byte %00111000; $38  56
     .byte %01111100; $7C  124
     .byte %01111100; $7C  124
     .byte %01111100; $7C  124
     .byte %01111100; $7C  124
     .byte %01111100; $7C  124
     .byte %01111100; $7C  124
     .byte %00111000; $38  56
     .byte %00010000; $10  16

P011:
     .byte %00000000; $00  0
     .byte %01100110; $66  102
     .byte %01100110; $66  102
     .byte %00111100; $3C  60
     .byte %00011000; $18  24
     .byte %00011000; $18  24
     .byte %00111100; $3C  60
     .byte %00111100; $3C  60
     .byte %00111100; $3C  60
     .byte %00111100; $3C  60
     .byte %00111100; $3C  60
     .byte %00111100; $3C  60
     .byte %00011000; $18  24
     .byte %00000000; $00  0

P012:
     .byte %00000000; $00  0
     .byte %00000000; $00  0
     .byte %11000011; $C3  195
     .byte %01100110; $66  102
     .byte %00111100; $3C  60
     .byte %00011000; $18  24
     .byte %00111100; $3C  60
     .byte %01111110; $7E  126
     .byte %01111110; $7E  126
     .byte %01111110; $7E  126
     .byte %01111110; $7E  126
     .byte %00011000; $18  24
     .byte %00000000; $00  0
     .byte %00000000; $00  0

P013:
     .byte %00000000; $00  0
     .byte %00000000; $00  0
     .byte %11000110; $C6  198
     .byte %01101100; $6C  108
     .byte %00111000; $38  56
     .byte %00010000; $10  16
     .byte %00111000; $38  56
     .byte %01111100; $7C  124
     .byte %01111100; $7C  124
     .byte %01111100; $7C  124
     .byte %01111100; $7C  124
     .byte %00111000; $38  56
     .byte %00000000; $00  0
     .byte %00000000; $00  0

P014:
     .byte %00000000; $00  0
     .byte %00000000; $00  0
     .byte %00000000; $00  0
     .byte %01100110; $66  102
     .byte %00111100; $3C  60
     .byte %00011000; $18  24
     .byte %00011000; $18  24
     .byte %00111100; $3C  60
     .byte %00111100; $3C  60
     .byte %00111100; $3C  60
     .byte %00011000; $18  24
     .byte %00000000; $00  0
     .byte %00000000; $00  0
     .byte %00000000; $00  0

P015:
     .byte %00000000; $00  0
     .byte %00000000; $00  0
     .byte %00000000; $00  0
     .byte %00000000; $00  0
     .byte %01101100; $6C  108
     .byte %00111000; $38  56
     .byte %00010000; $10  16
     .byte %00111000; $38  56
     .byte %00111000; $38  56
     .byte %00111000; $38  56
     .byte %00010000; $10  16
     .byte %00000000; $00  0
     .byte %00000000; $00  0
     .byte %00000000; $00  0

P016:
     .byte %00000000; $00  0
     .byte %00000000; $00  0
     .byte %00000000; $00  0
     .byte %00000000; $00  0
     .byte %00011000; $18  24
     .byte %00100100; $24  36
     .byte %00100100; $24  36
     .byte %00100100; $24  36
     .byte %00100100; $24  36
     .byte %00011000; $18  24
     .byte %00000000; $00  0
     .byte %00000000; $00  0
     .byte %00000000; $00  0
     .byte %00000000; $00  0

P017:
     .byte %00000000; $00  0
     .byte %00000000; $00  0
     .byte %00011000; $18  24
     .byte %00100100; $24  36
     .byte %01000010; $42  66
     .byte %01000010; $42  66
     .byte %01000010; $42  66
     .byte %01000010; $42  66
     .byte %01000010; $42  66
     .byte %01000010; $42  66
     .byte %00100100; $24  36
     .byte %00011000; $18  24
     .byte %00000000; $00  0
     .byte %00000000; $00  0

P018:
     .byte %00000000; $00  0
     .byte %00011000; $18  24
     .byte %00100100; $24  36
     .byte %01000010; $42  66
     .byte %10000001; $81  129
     .byte %10000001; $81  129
     .byte %10000001; $81  129
     .byte %10000001; $81  129
     .byte %10000001; $81  129
     .byte %10000001; $81  129
     .byte %01000010; $42  66
     .byte %00100100; $24  36
     .byte %00011000; $18  24
     .byte %00000000; $00  0

P019:
     .byte %00111100; $3C  60
     .byte %01000010; $42  66
     .byte %01000010; $42  66
     .byte %10000001; $81  129
     .byte %10000001; $81  129
     .byte %10000001; $81  129
     .byte %10000001; $81  129
     .byte %10000001; $81  129
     .byte %10000001; $81  129
     .byte %10000001; $81  129
     .byte %10000001; $81  129
     .byte %01000010; $42  66
     .byte %01000010; $42  66
     .byte %00111100; $3C  60

     
_SPRITEADDR_PLY0LO:
      .byte <P000,<P001,<P002,<P003,<P004,<P005,<P006,<P007,<P008,<P009,<P010,<P011,<P012,<P013,<P014,<P015
      .byte <P016,<P017,<P018,<P019
_SPRITEADDR_PLY0HI: 
      .byte >P000,>P001,>P002,>P003,>P004,>P005,>P006,>P007,>P008,>P009,>P010,>P011,>P012,>P013,>P014,>P015
      .byte >P016,>P017,>P018,>P019
     
_SPRITEADDR_PLY0W:
      .word P000,P001,P002,P003,P004,P005,P006,P007,P008,P009,P010,P011,P012,P013,P014,P015
      .word P016,P017,P018,P019


      .export _SPRITEADDR_PLY0LO      ; Makes Sprite Address Table available to C compiled program
      .export _SPRITEADDR_PLY0HI      ; Makes Sprite Address Table available to C compiled program
      .export _SPRITEADDR_PLY0W       ; Makes Sprite Address Table available to C compiled program

