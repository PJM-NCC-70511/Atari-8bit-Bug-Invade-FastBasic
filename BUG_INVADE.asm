; Imported symbols
	.global AUDCTL
	.global SKCTL
	.globalzp CLS
	.globalzp DEGFLAG
	.globalzp OPEN

; Exported symbols
	.export bytecode_start
	.exportzp NUM_VARS

	.include "atari.inc"

; TOKENS:
	.importzp	TOK_NUM
	.importzp	TOK_BYTE
	.importzp	TOK_CSTRING
	.importzp	TOK_VAR_ADDR
	.importzp	TOK_VAR_SADDR
	.importzp	TOK_VAR_LOAD
	.importzp	TOK_0
	.importzp	TOK_1
	.importzp	TOK_PUSH
	.importzp	TOK_PUSH_VAR_LOAD
	.importzp	TOK_PUSH_NUM
	.importzp	TOK_PUSH_BYTE
	.importzp	TOK_PUSH_0
	.importzp	TOK_PUSH_1
	.importzp	TOK_ADD
	.importzp	TOK_SUB
	.importzp	TOK_MUL
	.importzp	TOK_DIV
	.importzp	TOK_MOD
	.importzp	TOK_ADD_VAR
	.importzp	TOK_BIT_AND
	.importzp	TOK_PEEK
	.importzp	TOK_DPEEK
	.importzp	TOK_BYTE_PEEK
	.importzp	TOK_RAND
	.importzp	TOK_L_NOT
	.importzp	TOK_L_OR
	.importzp	TOK_L_AND
	.importzp	TOK_LT
	.importzp	TOK_GT
	.importzp	TOK_NEQ
	.importzp	TOK_EQ
	.importzp	TOK_COMP_0
	.importzp	TOK_POKE
	.importzp	TOK_DPOKE
	.importzp	TOK_MOVE
	.importzp	TOK_VAR_STORE
	.importzp	TOK_SADDR
	.importzp	TOK_DECVAR
	.importzp	TOK_BYTE_POKE
	.importzp	TOK_NUM_POKE
	.importzp	TOK_VAR_STORE_0
	.importzp	TOK_POSITION
	.importzp	TOK_GRAPHICS
	.importzp	TOK_PMGRAPHICS
	.importzp	TOK_PRINT_STR
	.importzp	TOK_XIO
	.importzp	TOK_CLOSE
	.importzp	TOK_PUT
	.importzp	TOK_BGET
	.importzp	TOK_IOCHN
	.importzp	TOK_JUMP
	.importzp	TOK_CJUMP
	.importzp	TOK_CNJUMP
	.importzp	TOK_CALL
	.importzp	TOK_RET
	.importzp	TOK_CRET
	.importzp	TOK_FOR
	.importzp	TOK_FOR_NEXT
	.importzp	TOK_FOR_EXIT
	.importzp	TOK_DIM
	.importzp	TOK_USHL
	.importzp	TOK_INT_STR
	.importzp	TOK_PAUSE
	.importzp	TOK_USR_ADDR
	.importzp	TOK_USR_PARAM
	.importzp	TOK_USR_CALL
	.importzp	TOK_INT_FP
	.importzp	TOK_FP_NEG
	.importzp	TOK_FLOAT
	.importzp	TOK_FP_DIV
	.importzp	TOK_FP_MUL
	.importzp	TOK_FP_SUB
	.importzp	TOK_FP_ADD
	.importzp	TOK_FP_STORE
	.importzp	TOK_FP_LOAD
	.importzp	TOK_FP_INT
	.importzp	TOK_FP_CMP
	.importzp	TOK_FP_SIN
	.importzp	TOK_FP_COS
;-----------------------------
; Variables
NUM_VARS = 73
	.import heap_start
	.export fb_var_A
	.export fb_var_B
	.export fb_var_BUG_DATA1
	.export fb_var_BUG_DATA2
	.export fb_var_BUG_INDEX
	.export fb_var_BUG_STATUS
	.export fb_var_BUG_TYPE
	.export fb_var_BUG_XDIR
	.export fb_var_BUG_XPOS
	.export fb_var_BUG_YDIR
	.export fb_var_BUG_YPOS
	.export fb_var_C
	.export fb_var_C1
	.export fb_var_CD
	.export fb_var_CT
	.export fb_var_D
	.export fb_var_DL
	.export fb_var_DL_ADDR_SET
	.export fb_var_DMA
	.export fb_var_E
	.export fb_var_E1
	.export fb_var_ED
	.export fb_var_EM
	.export fb_var_F
	.export fb_var_G
	.export fb_var_G1
	.export fb_var_G2
	.export fb_var_G3
	.export fb_var_G4
	.export fb_var_G5
	.export fb_var_G6
	.export fb_var_G7
	.export fb_var_GM
	.export fb_var_H
	.export fb_var_H1
	.export fb_var_H2
	.export fb_var_H3
	.export fb_var_L
	.export fb_var_LIVES
	.export fb_var_LM_ADDR
	.export fb_var_LV
	.export fb_var_M
	.export fb_var_N
	.export fb_var_O
	.export fb_var_P
	.export fb_var_PAGES
	.export fb_var_PC
	.export fb_var_PM
	.export fb_var_PMBASE
	.export fb_var_PMV
	.export fb_var_QT
	.export fb_var_RMV
	.export fb_var_SC
	.export fb_var_SCR_ADDR
	.export fb_var_SND
	.export fb_var_SP
	.export fb_var_STK
	.export fb_var_SU
	.export fb_var_X
	.export fb_var_Y
	.export fb_var_Z
fb_var_A	= heap_start + 82	; Word variable
fb_var_B	= heap_start + 84	; Word variable
fb_var_BUG_DATA1	= heap_start + 72	; Byte Array variable
fb_var_BUG_DATA2	= heap_start + 74	; Byte Array variable
fb_var_BUG_INDEX	= heap_start + 78	; Word variable
fb_var_BUG_STATUS	= heap_start + 76	; Byte Array variable
fb_var_BUG_TYPE	= heap_start + 62	; Byte Array variable
fb_var_BUG_XDIR	= heap_start + 68	; Word Array variable
fb_var_BUG_XPOS	= heap_start + 64	; Word Array variable
fb_var_BUG_YDIR	= heap_start + 70	; Word Array variable
fb_var_BUG_YPOS	= heap_start + 66	; Word Array variable
fb_var_C	= heap_start + 12	; Float variable
fb_var_C1	= heap_start + 86	; Word variable
fb_var_CD	= heap_start + 36	; Float variable
fb_var_CT	= heap_start + 100	; Word variable
fb_var_D	= heap_start + 18	; Float variable
fb_var_DL	= heap_start + 140	; Word variable
fb_var_DL_ADDR_SET	= heap_start + 0	; Word variable
fb_var_DMA	= heap_start + 138	; Word variable
fb_var_E	= heap_start + 24	; Float variable
fb_var_E1	= heap_start + 88	; Word variable
fb_var_ED	= heap_start + 42	; Float variable
fb_var_EM	= heap_start + 94	; Word variable
fb_var_F	= heap_start + 30	; Float variable
fb_var_G	= heap_start + 102	; Word variable
fb_var_G1	= heap_start + 80	; Word variable
fb_var_G2	= heap_start + 108	; Word variable
fb_var_G3	= heap_start + 110	; Word variable
fb_var_G4	= heap_start + 112	; Word variable
fb_var_G5	= heap_start + 114	; Word variable
fb_var_G6	= heap_start + 116	; Word variable
fb_var_G7	= heap_start + 118	; Word variable
fb_var_GM	= heap_start + 128	; Word variable
fb_var_H	= heap_start + 104	; Word variable
fb_var_H1	= heap_start + 56	; Word variable
fb_var_H2	= heap_start + 58	; Word variable
fb_var_H3	= heap_start + 60	; Word variable
fb_var_L	= heap_start + 142	; Word variable
fb_var_LIVES	= heap_start + 98	; Word variable
fb_var_LM_ADDR	= heap_start + 144	; Word variable
fb_var_LV	= heap_start + 54	; Word variable
fb_var_M	= heap_start + 122	; Word variable
fb_var_N	= heap_start + 120	; Word variable
fb_var_O	= heap_start + 92	; Word variable
fb_var_P	= heap_start + 106	; Word variable
fb_var_PAGES	= heap_start + 136	; Word variable
fb_var_PC	= heap_start + 48	; Word variable
fb_var_PM	= heap_start + 130	; Word variable
fb_var_PMBASE	= heap_start + 2	; Word variable
fb_var_PMV	= heap_start + 132	; Word variable
fb_var_QT	= heap_start + 10	; Word variable
fb_var_RMV	= heap_start + 134	; Word variable
fb_var_SC	= heap_start + 96	; Word variable
fb_var_SCR_ADDR	= heap_start + 52	; Word variable
fb_var_SND	= heap_start + 8	; Word variable
fb_var_SP	= heap_start + 4	; Word variable
fb_var_STK	= heap_start + 6	; Word variable
fb_var_SU	= heap_start + 50	; Word variable
fb_var_X	= heap_start + 124	; Word variable
fb_var_Y	= heap_start + 126	; Word variable
fb_var_Z	= heap_start + 90	; Word variable
;-----------------------------
; Bytecode
	.segment "BYTECODE"
bytecode_start:
@FastBasic_LINE_2:	; LINE 2
	.byte	TOK_VAR_STORE_0
	.byte	0
@FastBasic_LINE_3:	; LINE 3
	.byte	TOK_VAR_STORE_0
	.byte	1
@FastBasic_LINE_4:	; LINE 4
	.byte	TOK_VAR_STORE_0
	.byte	2
@FastBasic_LINE_5:	; LINE 5
	.byte	TOK_VAR_STORE_0
	.byte	3
@FastBasic_LINE_6:	; LINE 6
	.byte	TOK_NUM
	.word	1702
	.byte	TOK_VAR_STORE
	.byte	4
@FastBasic_LINE_7:	; LINE 7
	.byte	TOK_NUM
	.word	1741
	.byte	TOK_VAR_STORE
	.byte	5
@FastBasic_LINE_8:	; LINE 8
	.byte	TOK_VAR_SADDR
	.byte	6
	.byte	TOK_FLOAT
	.byte	$00, $00, $00, $00, $00, $00
	.byte	TOK_FP_STORE
@FastBasic_LINE_9:	; LINE 9
	.byte	TOK_VAR_SADDR
	.byte	9
	.byte	TOK_FLOAT
	.byte	$00, $00, $00, $00, $00, $00
	.byte	TOK_FP_STORE
@FastBasic_LINE_10:	; LINE 10
	.byte	TOK_VAR_SADDR
	.byte	12
	.byte	TOK_FLOAT
	.byte	$00, $00, $00, $00, $00, $00
	.byte	TOK_FP_STORE
@FastBasic_LINE_11:	; LINE 11
	.byte	TOK_VAR_SADDR
	.byte	15
	.byte	TOK_FLOAT
	.byte	$00, $00, $00, $00, $00, $00
	.byte	TOK_FP_STORE
@FastBasic_LINE_12:	; LINE 12
	.byte	TOK_VAR_SADDR
	.byte	18
	.byte	TOK_FLOAT
	.byte	$00, $00, $00, $00, $00, $00
	.byte	TOK_FP_STORE
@FastBasic_LINE_13:	; LINE 13
	.byte	TOK_VAR_SADDR
	.byte	21
	.byte	TOK_FLOAT
	.byte	$00, $00, $00, $00, $00, $00
	.byte	TOK_FP_STORE
@FastBasic_LINE_14:	; LINE 14
	.byte	TOK_VAR_STORE_0
	.byte	24
@FastBasic_LINE_15:	; LINE 15
	.byte	TOK_VAR_STORE_0
	.byte	25
@FastBasic_LINE_16:	; LINE 16
	.byte	TOK_VAR_STORE_0
	.byte	26
@FastBasic_LINE_17:	; LINE 17
	.byte	TOK_VAR_STORE_0
	.byte	27
@FastBasic_LINE_18:	; LINE 18
	.byte	TOK_CALL
	.word	fb_lbl_LOAD_AND_SET_UP
@FastBasic_LINE_19:	; LINE 19
	.byte	TOK_VAR_STORE_0
	.byte	28
@FastBasic_LINE_20:	; LINE 20
	.byte	TOK_VAR_STORE_0
	.byte	29
@FastBasic_LINE_21:	; LINE 21
	.byte	TOK_VAR_STORE_0
	.byte	30
@FastBasic_LINE_23:	; LINE 23
	.export	jump_lbl_1
jump_lbl_1:
@FastBasic_LINE_26:	; LINE 26
	.byte	TOK_CALL
	.word	fb_lbl_DISPLAY_TITLE
@FastBasic_LINE_28:	; LINE 28
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_DIM
	.byte	31
@FastBasic_LINE_29:	; LINE 29
	.byte	TOK_BYTE
	.byte	16
	.byte	TOK_DIM
	.byte	32
@FastBasic_LINE_30:	; LINE 30
	.byte	TOK_BYTE
	.byte	16
	.byte	TOK_DIM
	.byte	33
@FastBasic_LINE_31:	; LINE 31
	.byte	TOK_BYTE
	.byte	16
	.byte	TOK_DIM
	.byte	34
@FastBasic_LINE_32:	; LINE 32
	.byte	TOK_BYTE
	.byte	16
	.byte	TOK_DIM
	.byte	35
@FastBasic_LINE_33:	; LINE 33
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_DIM
	.byte	36
@FastBasic_LINE_34:	; LINE 34
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_DIM
	.byte	37
@FastBasic_LINE_35:	; LINE 35
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_DIM
	.byte	38
@FastBasic_LINE_36:	; LINE 36
	.byte	TOK_VAR_STORE_0
	.byte	39
@FastBasic_LINE_38:	; LINE 38
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_FIELD
@FastBasic_LINE_40:	; LINE 40
	.byte	TOK_0
	.byte	TOK_BYTE_POKE
	.byte	82
@FastBasic_LINE_41:	; LINE 41
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	CLS
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_43:	; LINE 43
	.byte	TOK_0
	.byte	TOK_NUM_POKE
	.word	712
@FastBasic_LINE_44:	; LINE 44
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_NUM
	.word	1048
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_MOVE
@FastBasic_LINE_45:	; LINE 45
	.byte	TOK_BYTE
	.byte	200
	.byte	TOK_ADD_VAR
	.byte	2
	.byte	TOK_PUSH_NUM
	.word	1304
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_MOVE
@FastBasic_LINE_46:	; LINE 46
	.byte	TOK_BYTE
	.byte	118
	.byte	TOK_NUM_POKE
	.word	53248
@FastBasic_LINE_47:	; LINE 47
	.byte	TOK_BYTE
	.byte	128
	.byte	TOK_NUM_POKE
	.word	53249
@FastBasic_LINE_48:	; LINE 48
	.byte	TOK_BYTE
	.byte	15
	.byte	TOK_NUM_POKE
	.word	704
@FastBasic_LINE_49:	; LINE 49
	.byte	TOK_BYTE
	.byte	15
	.byte	TOK_NUM_POKE
	.word	705
@FastBasic_LINE_53:	; LINE 53
	.byte	TOK_VAR_STORE_0
	.byte	40
@FastBasic_LINE_54:	; LINE 54
	.byte	TOK_BYTE
	.byte	19
	.byte	TOK_VAR_STORE
	.byte	41
@FastBasic_LINE_55:	; LINE 55
	.byte	TOK_BYTE
	.byte	22
	.byte	TOK_VAR_STORE
	.byte	42
@FastBasic_LINE_56:	; LINE 56
	.byte	TOK_VAR_STORE_0
	.byte	43
@FastBasic_LINE_57:	; LINE 57
	.byte	TOK_VAR_STORE_0
	.byte	44
@FastBasic_LINE_58:	; LINE 58
	.byte	TOK_BYTE
	.byte	30
	.byte	TOK_NUM_POKE
	.word	704
@FastBasic_LINE_59:	; LINE 59
	.byte	TOK_NUM
	.word	1561
	.byte	TOK_USR_ADDR
	.byte	TOK_USR_CALL
	.byte	TOK_VAR_STORE
	.byte	45
@FastBasic_LINE_60:	; LINE 60
	.byte	TOK_1
	.byte	TOK_BYTE_POKE
	.byte	DEGFLAG
@FastBasic_LINE_61:	; LINE 61
	.byte	TOK_1
	.byte	TOK_VAR_STORE
	.byte	27
@FastBasic_LINE_62:	; LINE 62
	.byte	TOK_NUM
	.word	512
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_POKE
@FastBasic_LINE_63:	; LINE 63
	.byte	TOK_NUM
	.word	512
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_PUSH_NUM
	.word	513
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_PUSH_BYTE
	.byte	7
	.byte	TOK_MOVE
@FastBasic_LINE_64:	; LINE 64
	.byte	TOK_NUM
	.word	520
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_POKE
@FastBasic_LINE_65:	; LINE 65
	.byte	TOK_NUM
	.word	520
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_PUSH_NUM
	.word	521
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_MOVE
@FastBasic_LINE_66:	; LINE 66
	.byte	TOK_1
	.byte	TOK_VAR_STORE
	.byte	46
@FastBasic_LINE_67:	; LINE 67
	.byte	TOK_NUM
	.word	1000
	.byte	TOK_VAR_STORE
	.byte	47
@FastBasic_LINE_68:	; LINE 68
	.byte	TOK_VAR_STORE_0
	.byte	48
@FastBasic_LINE_69:	; LINE 69
	.byte	TOK_BYTE
	.byte	7
	.byte	TOK_VAR_STORE
	.byte	49
@FastBasic_LINE_70:	; LINE 70
	.byte	TOK_CALL
	.word	fb_lbl_PRINT_SCORE
@FastBasic_LINE_71:	; LINE 71
	.byte	TOK_1
	.byte	TOK_VAR_STORE
	.byte	50
@FastBasic_LINE_72:	; LINE 72
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_MOVE
@FastBasic_LINE_74:	; LINE 74
	.export	jump_lbl_2
jump_lbl_2:
@FastBasic_LINE_76:	; LINE 76
	.byte	TOK_VAR_LOAD
	.byte	3
	.byte	TOK_USR_ADDR
	.byte	TOK_USR_CALL
	.byte	TOK_VAR_STORE
	.byte	45
@FastBasic_LINE_77:	; LINE 77
	.byte	TOK_NUM
	.word	53248
	.byte	TOK_SADDR
	.byte	TOK_NUM
	.word	600
	.byte	TOK_PEEK
	.byte	TOK_POKE
@FastBasic_LINE_78:	; LINE 78
	.byte	TOK_VAR_LOAD
	.byte	1
	.byte	TOK_PUSH_NUM
	.word	1016
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_PUSH_NUM
	.word	601
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	24
	.byte	TOK_MOVE
@FastBasic_LINE_79:	; LINE 79
	.byte	TOK_VAR_LOAD
	.byte	46
	.byte	TOK_COMP_0
	.byte	TOK_L_NOT
	.byte	TOK_VAR_STORE
	.byte	46
@FastBasic_LINE_80:	; LINE 80
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_COMP_0
	.byte	TOK_CNJUMP
	.word	jump_lbl_3
@FastBasic_LINE_81:	; LINE 81
	.byte	TOK_CALL
	.word	fb_lbl_BUG_1_0
@FastBasic_LINE_82:	; LINE 82
	.byte	TOK_JUMP
	.word	jump_lbl_4
	.export	jump_lbl_3
jump_lbl_3:
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_5
@FastBasic_LINE_83:	; LINE 83
	.byte	TOK_CALL
	.word	fb_lbl_BUG_1_1
@FastBasic_LINE_84:	; LINE 84
	.byte	TOK_JUMP
	.word	jump_lbl_4
	.export	jump_lbl_5
jump_lbl_5:
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_7
@FastBasic_LINE_85:	; LINE 85
	.byte	TOK_CALL
	.word	fb_lbl_BUG_1_2
@FastBasic_LINE_86:	; LINE 86
	.byte	TOK_JUMP
	.word	jump_lbl_4
	.export	jump_lbl_7
jump_lbl_7:
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_9
@FastBasic_LINE_87:	; LINE 87
	.byte	TOK_CALL
	.word	fb_lbl_BUG_1_3
@FastBasic_LINE_88:	; LINE 88
	.byte	TOK_JUMP
	.word	jump_lbl_4
	.export	jump_lbl_9
jump_lbl_9:
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_4
@FastBasic_LINE_89:	; LINE 89
	.byte	TOK_CALL
	.word	fb_lbl_BUG_1_4
@FastBasic_LINE_90:	; LINE 90
	.export	jump_lbl_4
jump_lbl_4:
@FastBasic_LINE_93:	; LINE 93
	.byte	TOK_VAR_LOAD
	.byte	44
	.byte	TOK_COMP_0
	.byte	TOK_CNJUMP
	.word	jump_lbl_12
@FastBasic_LINE_94:	; LINE 94
	.byte	TOK_CALL
	.word	fb_lbl_BUG_2_0
@FastBasic_LINE_95:	; LINE 95
	.byte	TOK_JUMP
	.word	jump_lbl_13
	.export	jump_lbl_12
jump_lbl_12:
	.byte	TOK_VAR_LOAD
	.byte	44
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_14
@FastBasic_LINE_96:	; LINE 96
	.byte	TOK_CALL
	.word	fb_lbl_BUG_2_1
@FastBasic_LINE_97:	; LINE 97
	.byte	TOK_JUMP
	.word	jump_lbl_13
	.export	jump_lbl_14
jump_lbl_14:
	.byte	TOK_VAR_LOAD
	.byte	44
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_16
@FastBasic_LINE_98:	; LINE 98
	.byte	TOK_CALL
	.word	fb_lbl_BUG_2_2
@FastBasic_LINE_99:	; LINE 99
	.byte	TOK_JUMP
	.word	jump_lbl_13
	.export	jump_lbl_16
jump_lbl_16:
	.byte	TOK_VAR_LOAD
	.byte	44
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_18
@FastBasic_LINE_100:	; LINE 100
	.byte	TOK_CALL
	.word	fb_lbl_BUG_2_3
@FastBasic_LINE_101:	; LINE 101
	.byte	TOK_JUMP
	.word	jump_lbl_13
	.export	jump_lbl_18
jump_lbl_18:
	.byte	TOK_VAR_LOAD
	.byte	44
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_13
@FastBasic_LINE_102:	; LINE 102
	.byte	TOK_CALL
	.word	fb_lbl_BUG_2_4
@FastBasic_LINE_103:	; LINE 103
	.export	jump_lbl_13
jump_lbl_13:
@FastBasic_LINE_105:	; LINE 105
	.byte	TOK_VAR_LOAD
	.byte	40
	.byte	TOK_COMP_0
	.byte	TOK_CNJUMP
	.word	jump_lbl_21
@FastBasic_LINE_106:	; LINE 106
	.byte	TOK_NUM
	.word	644
	.byte	TOK_PEEK
	.byte	TOK_COMP_0
	.byte	TOK_CNJUMP
	.word	jump_lbl_23
@FastBasic_LINE_107:	; LINE 107
	.byte	TOK_1
	.byte	TOK_VAR_STORE
	.byte	40
@FastBasic_LINE_108:	; LINE 108
	.byte	TOK_NUM
	.word	600
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	46
	.byte	TOK_SUB
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_DIV
	.byte	TOK_VAR_STORE
	.byte	51
@FastBasic_LINE_109:	; LINE 109
	.byte	TOK_NUM
	.word	601
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	13
	.byte	TOK_SUB
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_DIV
	.byte	TOK_VAR_STORE
	.byte	52
@FastBasic_LINE_110:	; LINE 110
	.byte	TOK_VAR_LOAD
	.byte	24
	.byte	TOK_USR_ADDR
	.byte	TOK_1
	.byte	TOK_USR_PARAM
	.byte	TOK_NUM
	.word	768
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_USR_PARAM
	.byte	TOK_USR_CALL
	.byte	TOK_VAR_STORE
	.byte	45
@FastBasic_LINE_112:	; LINE 112
	.byte	TOK_VAR_LOAD
	.byte	4
	.byte	TOK_USR_ADDR
	.byte	TOK_1
	.byte	TOK_USR_PARAM
	.byte	TOK_BYTE
	.byte	56
	.byte	TOK_USR_PARAM
	.byte	TOK_NUM
	.word	1536
	.byte	TOK_ADD_VAR
	.byte	25
	.byte	TOK_USR_PARAM
	.byte	TOK_1
	.byte	TOK_USR_PARAM
	.byte	TOK_USR_CALL
	.byte	TOK_VAR_STORE
	.byte	45
@FastBasic_LINE_113:	; LINE 113
	.byte	TOK_NUM
	.word	53252
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	49
	.byte	TOK_PUSH_VAR_LOAD
	.byte	51
	.byte	TOK_USHL
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_POKE
@FastBasic_LINE_115:	; LINE 115
	.byte	TOK_JUMP
	.word	jump_lbl_23
	.export	jump_lbl_21
jump_lbl_21:
@FastBasic_LINE_117:	; LINE 117
	.byte	TOK_DECVAR
	.byte	52
@FastBasic_LINE_118:	; LINE 118
	.byte	TOK_VAR_LOAD
	.byte	52
	.byte	TOK_PUSH_0
	.byte	TOK_LT
	.byte	TOK_CJUMP
	.word	jump_lbl_24
@FastBasic_LINE_119:	; LINE 119
	.byte	TOK_VAR_STORE_0
	.byte	40
@FastBasic_LINE_120:	; LINE 120
	.byte	TOK_VAR_LOAD
	.byte	24
	.byte	TOK_USR_ADDR
	.byte	TOK_1
	.byte	TOK_USR_PARAM
	.byte	TOK_NUM
	.word	768
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_USR_PARAM
	.byte	TOK_USR_CALL
	.byte	TOK_VAR_STORE
	.byte	45
@FastBasic_LINE_121:	; LINE 121
	.byte	TOK_JUMP
	.word	jump_lbl_23
	.export	jump_lbl_24
jump_lbl_24:
@FastBasic_LINE_122:	; LINE 122
	.byte	TOK_NUM
	.word	53252
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	49
	.byte	TOK_PUSH_VAR_LOAD
	.byte	51
	.byte	TOK_USHL
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_POKE
@FastBasic_LINE_123:	; LINE 123
	.byte	TOK_NUM
	.word	512
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_PUSH_NUM
	.word	789
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	16
	.byte	TOK_MOVE
@FastBasic_LINE_124:	; LINE 124
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_PEEK
	.byte	TOK_PUSH_0
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_26
	.byte	TOK_CALL
	.word	fb_lbl_BULLET_PLAYFIELD
	.export	jump_lbl_26
jump_lbl_26:
@FastBasic_LINE_125:	; LINE 125
	.byte	TOK_NUM
	.word	53256
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	6
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_0
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_23
	.byte	TOK_CALL
	.word	fb_lbl_BULLET_HIT_BUG
@FastBasic_LINE_127:	; LINE 127
	.export	jump_lbl_23
jump_lbl_23:
@FastBasic_LINE_128:	; LINE 128
	.byte	TOK_VAR_LOAD
	.byte	49
	.byte	TOK_PUSH_0
	.byte	TOK_LT
	.byte	TOK_CJUMP
	.word	jump_lbl_2
@FastBasic_LINE_129:	; LINE 129
	.byte	TOK_JUMP
	.word	jump_lbl_1
@FastBasic_LINE_131:	; LINE 131
	.export	fb_lbl_BUG_1_0
fb_lbl_BUG_1_0:
@FastBasic_LINE_132:	; LINE 132
	.byte	TOK_VAR_LOAD
	.byte	25
	.byte	TOK_PUSH_NUM
	.word	1292
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_PUSH
	.byte	TOK_FLOAT
	.byte	$40, $08, $00, $00, $00, $00
	.byte	TOK_VAR_ADDR
	.byte	9
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_MUL
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_MOVE
@FastBasic_LINE_133:	; LINE 133
	.byte	TOK_VAR_SADDR
	.byte	6
	.byte	TOK_VAR_ADDR
	.byte	6
	.byte	TOK_FP_LOAD
	.byte	TOK_VAR_ADDR
	.byte	18
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $02, $00, $00, $00, $00
	.byte	TOK_FP_DIV
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
@FastBasic_LINE_134:	; LINE 134
	.byte	TOK_VAR_ADDR
	.byte	6
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$00, $00, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_LT
	.byte	TOK_CJUMP
	.word	jump_lbl_30
@FastBasic_LINE_135:	; LINE 135
	.byte	TOK_VAR_SADDR
	.byte	6
	.byte	TOK_FLOAT
	.byte	$3F, $50, $00, $00, $00, $00
	.byte	TOK_FP_STORE
@FastBasic_LINE_136:	; LINE 136
	.byte	TOK_VAR_SADDR
	.byte	18
	.byte	TOK_FLOAT
	.byte	$40, $01, $00, $00, $00, $00
	.byte	TOK_FP_STORE
@FastBasic_LINE_137:	; LINE 137
	.byte	TOK_VAR_SADDR
	.byte	9
	.byte	TOK_VAR_ADDR
	.byte	9
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$3F, $50, $00, $00, $00, $00
	.byte	TOK_FP_ADD
	.byte	TOK_VAR_LOAD
	.byte	27
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_DIV
	.byte	TOK_INT_FP
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
@FastBasic_LINE_138:	; LINE 138
	.export	jump_lbl_30
jump_lbl_30:
@FastBasic_LINE_139:	; LINE 139
	.byte	TOK_VAR_ADDR
	.byte	6
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $39, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_31
@FastBasic_LINE_140:	; LINE 140
	.byte	TOK_VAR_SADDR
	.byte	6
	.byte	TOK_FLOAT
	.byte	$40, $39, $00, $00, $00, $00
	.byte	TOK_FP_STORE
@FastBasic_LINE_141:	; LINE 141
	.byte	TOK_VAR_SADDR
	.byte	18
	.byte	TOK_FLOAT
	.byte	$C0, $01, $00, $00, $00, $00
	.byte	TOK_FP_STORE
@FastBasic_LINE_142:	; LINE 142
	.byte	TOK_VAR_SADDR
	.byte	9
	.byte	TOK_VAR_ADDR
	.byte	9
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$3F, $50, $00, $00, $00, $00
	.byte	TOK_FP_ADD
	.byte	TOK_VAR_LOAD
	.byte	27
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_DIV
	.byte	TOK_INT_FP
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
@FastBasic_LINE_143:	; LINE 143
	.export	jump_lbl_31
jump_lbl_31:
@FastBasic_LINE_144:	; LINE 144
	.byte	TOK_VAR_ADDR
	.byte	9
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $28, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_LT
	.byte	TOK_CNJUMP
	.word	jump_lbl_32
	.byte	TOK_CALL
	.word	fb_lbl_BUG_GOT_PASSED
	.export	jump_lbl_32
jump_lbl_32:
@FastBasic_LINE_145:	; LINE 145
	.byte	TOK_NUM
	.word	53249
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	46
	.byte	TOK_PUSH
	.byte	TOK_VAR_ADDR
	.byte	6
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $04, $00, $00, $00, $00
	.byte	TOK_FP_MUL
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_ADD_VAR
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_PUSH_VAR_LOAD
	.byte	46
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_PUSH_NUM
	.word	1292
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_PUSH
	.byte	TOK_FLOAT
	.byte	$40, $08, $00, $00, $00, $00
	.byte	TOK_VAR_ADDR
	.byte	9
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_MUL
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_MOVE
@FastBasic_LINE_151:	; LINE 151
	.byte	TOK_RET
@FastBasic_LINE_153:	; LINE 153
	.export	fb_lbl_BUG_1_1
fb_lbl_BUG_1_1:
@FastBasic_LINE_154:	; LINE 154
	.byte	TOK_VAR_LOAD
	.byte	25
	.byte	TOK_PUSH_NUM
	.word	1292
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_PUSH
	.byte	TOK_FLOAT
	.byte	$40, $08, $00, $00, $00, $00
	.byte	TOK_VAR_ADDR
	.byte	9
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_MUL
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_MOVE
@FastBasic_LINE_155:	; LINE 155
	.byte	TOK_VAR_SADDR
	.byte	6
	.byte	TOK_VAR_ADDR
	.byte	6
	.byte	TOK_FP_LOAD
	.byte	TOK_VAR_ADDR
	.byte	18
	.byte	TOK_FP_LOAD
	.byte	TOK_VAR_LOAD
	.byte	46
	.byte	TOK_PUSH
	.byte	TOK_FLOAT
	.byte	$40, $02, $00, $00, $00, $00
	.byte	TOK_VAR_LOAD
	.byte	27
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_DIV
	.byte	TOK_INT_FP
	.byte	TOK_FP_ADD
	.byte	TOK_FP_INT
	.byte	TOK_MUL
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_RAND
	.byte	TOK_PUSH_BYTE
	.byte	6
	.byte	TOK_MUL
	.byte	TOK_MUL
	.byte	TOK_INT_FP
	.byte	TOK_FP_MUL
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
@FastBasic_LINE_156:	; LINE 156
	.byte	TOK_VAR_ADDR
	.byte	6
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$00, $00, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_LT
	.byte	TOK_CJUMP
	.word	jump_lbl_35
@FastBasic_LINE_157:	; LINE 157
	.byte	TOK_VAR_SADDR
	.byte	6
	.byte	TOK_FLOAT
	.byte	$3F, $50, $00, $00, $00, $00
	.byte	TOK_FP_STORE
@FastBasic_LINE_158:	; LINE 158
	.byte	TOK_VAR_SADDR
	.byte	18
	.byte	TOK_FLOAT
	.byte	$40, $01, $00, $00, $00, $00
	.byte	TOK_FP_STORE
@FastBasic_LINE_159:	; LINE 159
	.byte	TOK_VAR_SADDR
	.byte	9
	.byte	TOK_VAR_ADDR
	.byte	9
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $01, $00, $00, $00, $00
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
@FastBasic_LINE_160:	; LINE 160
	.export	jump_lbl_35
jump_lbl_35:
@FastBasic_LINE_161:	; LINE 161
	.byte	TOK_VAR_ADDR
	.byte	6
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $39, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_36
@FastBasic_LINE_162:	; LINE 162
	.byte	TOK_VAR_SADDR
	.byte	6
	.byte	TOK_FLOAT
	.byte	$40, $39, $00, $00, $00, $00
	.byte	TOK_FP_STORE
@FastBasic_LINE_163:	; LINE 163
	.byte	TOK_VAR_SADDR
	.byte	18
	.byte	TOK_FLOAT
	.byte	$C0, $01, $00, $00, $00, $00
	.byte	TOK_FP_STORE
@FastBasic_LINE_164:	; LINE 164
	.byte	TOK_VAR_SADDR
	.byte	9
	.byte	TOK_VAR_ADDR
	.byte	9
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $01, $00, $00, $00, $00
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
@FastBasic_LINE_165:	; LINE 165
	.export	jump_lbl_36
jump_lbl_36:
@FastBasic_LINE_167:	; LINE 167
	.byte	TOK_VAR_ADDR
	.byte	9
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $28, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_LT
	.byte	TOK_CNJUMP
	.word	jump_lbl_37
	.byte	TOK_CALL
	.word	fb_lbl_BUG_GOT_PASSED
	.export	jump_lbl_37
jump_lbl_37:
@FastBasic_LINE_168:	; LINE 168
	.byte	TOK_NUM
	.word	53250
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	46
	.byte	TOK_PUSH
	.byte	TOK_VAR_ADDR
	.byte	6
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $04, $00, $00, $00, $00
	.byte	TOK_FP_MUL
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	16
	.byte	TOK_ADD_VAR
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_PUSH
	.byte	TOK_VAR_ADDR
	.byte	18
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $01, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_EQ
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_PUSH_NUM
	.word	1548
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_PUSH
	.byte	TOK_FLOAT
	.byte	$40, $08, $00, $00, $00, $00
	.byte	TOK_VAR_ADDR
	.byte	9
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_MUL
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_MOVE
@FastBasic_LINE_169:	; LINE 169
	.byte	TOK_RET
@FastBasic_LINE_171:	; LINE 171
	.export	fb_lbl_BUG_1_2
fb_lbl_BUG_1_2:
@FastBasic_LINE_172:	; LINE 172
	.byte	TOK_VAR_LOAD
	.byte	25
	.byte	TOK_PUSH_NUM
	.word	1292
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_PUSH
	.byte	TOK_FLOAT
	.byte	$40, $08, $00, $00, $00, $00
	.byte	TOK_VAR_ADDR
	.byte	9
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_MUL
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_MOVE
	.byte	TOK_VAR_SADDR
	.byte	6
	.byte	TOK_VAR_ADDR
	.byte	6
	.byte	TOK_FP_LOAD
	.byte	TOK_VAR_ADDR
	.byte	18
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $04, $00, $00, $00, $00
	.byte	TOK_FP_DIV
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
@FastBasic_LINE_173:	; LINE 173
	.byte	TOK_VAR_ADDR
	.byte	6
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$00, $00, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_LT
	.byte	TOK_PUSH
	.byte	TOK_VAR_ADDR
	.byte	6
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $39, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_GT
	.byte	TOK_L_OR
	.byte	TOK_CJUMP
	.word	jump_lbl_40
@FastBasic_LINE_174:	; LINE 174
	.byte	TOK_VAR_SADDR
	.byte	6
	.byte	TOK_VAR_ADDR
	.byte	6
	.byte	TOK_FP_LOAD
	.byte	TOK_VAR_ADDR
	.byte	18
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $04, $00, $00, $00, $00
	.byte	TOK_FP_DIV
	.byte	TOK_FP_SUB
	.byte	TOK_FP_STORE
	.byte	TOK_VAR_SADDR
	.byte	18
	.byte	TOK_VAR_ADDR
	.byte	18
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_NEG
	.byte	TOK_FP_STORE
	.byte	TOK_VAR_SADDR
	.byte	9
	.byte	TOK_VAR_ADDR
	.byte	9
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$3F, $50, $00, $00, $00, $00
	.byte	TOK_FP_ADD
	.byte	TOK_VAR_LOAD
	.byte	27
	.byte	TOK_PUSH_BYTE
	.byte	10
	.byte	TOK_DIV
	.byte	TOK_INT_FP
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
@FastBasic_LINE_175:	; LINE 175
	.export	jump_lbl_40
jump_lbl_40:
@FastBasic_LINE_176:	; LINE 176
	.byte	TOK_VAR_ADDR
	.byte	9
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $28, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_LT
	.byte	TOK_CNJUMP
	.word	jump_lbl_41
	.byte	TOK_CALL
	.word	fb_lbl_BUG_GOT_PASSED
	.export	jump_lbl_41
jump_lbl_41:
@FastBasic_LINE_177:	; LINE 177
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_PUSH
	.byte	TOK_VAR_ADDR
	.byte	6
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$3F, $25, $00, $00, $00, $00
	.byte	TOK_FP_ADD
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH
	.byte	TOK_VAR_ADDR
	.byte	9
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$3F, $50, $00, $00, $00, $00
	.byte	TOK_FP_ADD
	.byte	TOK_FP_INT
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_PEEK
	.byte	TOK_VAR_STORE
	.byte	53
@FastBasic_LINE_178:	; LINE 178
	.byte	TOK_VAR_LOAD
	.byte	53
	.byte	TOK_PUSH_0
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_42
@FastBasic_LINE_179:	; LINE 179
	.byte	TOK_VAR_SADDR
	.byte	6
	.byte	TOK_VAR_ADDR
	.byte	6
	.byte	TOK_FP_LOAD
	.byte	TOK_VAR_ADDR
	.byte	18
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $08, $00, $00, $00, $00
	.byte	TOK_FP_DIV
	.byte	TOK_FP_SUB
	.byte	TOK_FP_STORE
	.byte	TOK_VAR_SADDR
	.byte	18
	.byte	TOK_VAR_ADDR
	.byte	18
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_NEG
	.byte	TOK_FP_STORE
	.byte	TOK_VAR_SADDR
	.byte	9
	.byte	TOK_VAR_ADDR
	.byte	9
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$3F, $50, $00, $00, $00, $00
	.byte	TOK_FP_ADD
	.byte	TOK_VAR_LOAD
	.byte	27
	.byte	TOK_PUSH_BYTE
	.byte	20
	.byte	TOK_DIV
	.byte	TOK_INT_FP
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
@FastBasic_LINE_180:	; LINE 180
	.export	jump_lbl_42
jump_lbl_42:
@FastBasic_LINE_181:	; LINE 181
	.byte	TOK_NUM
	.word	53250
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	46
	.byte	TOK_PUSH
	.byte	TOK_VAR_ADDR
	.byte	6
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $04, $00, $00, $00, $00
	.byte	TOK_FP_MUL
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	24
	.byte	TOK_ADD_VAR
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_PUSH
	.byte	TOK_VAR_ADDR
	.byte	18
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$C0, $01, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_EQ
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_PUSH_VAR_LOAD
	.byte	46
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_PUSH_NUM
	.word	1292
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_PUSH
	.byte	TOK_FLOAT
	.byte	$40, $08, $00, $00, $00, $00
	.byte	TOK_VAR_ADDR
	.byte	9
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_MUL
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_MOVE
@FastBasic_LINE_182:	; LINE 182
	.byte	TOK_RET
@FastBasic_LINE_184:	; LINE 184
	.export	fb_lbl_BUG_1_3
fb_lbl_BUG_1_3:
@FastBasic_LINE_185:	; LINE 185
	.byte	TOK_VAR_LOAD
	.byte	25
	.byte	TOK_PUSH_NUM
	.word	1292
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_PUSH
	.byte	TOK_FLOAT
	.byte	$40, $08, $00, $00, $00, $00
	.byte	TOK_VAR_ADDR
	.byte	9
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_MUL
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_MOVE
@FastBasic_LINE_186:	; LINE 186
	.byte	TOK_VAR_SADDR
	.byte	6
	.byte	TOK_VAR_ADDR
	.byte	6
	.byte	TOK_FP_LOAD
	.byte	TOK_VAR_ADDR
	.byte	18
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $04, $00, $00, $00, $00
	.byte	TOK_FP_DIV
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
@FastBasic_LINE_187:	; LINE 187
	.byte	TOK_VAR_SADDR
	.byte	9
	.byte	TOK_VAR_ADDR
	.byte	9
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$3F, $12, $50, $00, $00, $00
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
@FastBasic_LINE_188:	; LINE 188
	.byte	TOK_VAR_ADDR
	.byte	6
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$00, $00, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_LT
	.byte	TOK_PUSH
	.byte	TOK_VAR_ADDR
	.byte	6
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $39, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_GT
	.byte	TOK_L_OR
	.byte	TOK_CJUMP
	.word	jump_lbl_45
@FastBasic_LINE_189:	; LINE 189
	.byte	TOK_VAR_SADDR
	.byte	6
	.byte	TOK_VAR_ADDR
	.byte	6
	.byte	TOK_FP_LOAD
	.byte	TOK_VAR_ADDR
	.byte	18
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $04, $00, $00, $00, $00
	.byte	TOK_FP_DIV
	.byte	TOK_FP_SUB
	.byte	TOK_FP_STORE
	.byte	TOK_VAR_SADDR
	.byte	18
	.byte	TOK_VAR_ADDR
	.byte	18
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_NEG
	.byte	TOK_FP_STORE
	.byte	TOK_VAR_SADDR
	.byte	9
	.byte	TOK_VAR_ADDR
	.byte	9
	.byte	TOK_FP_LOAD
	.byte	TOK_VAR_LOAD
	.byte	27
	.byte	TOK_PUSH_BYTE
	.byte	10
	.byte	TOK_DIV
	.byte	TOK_INT_FP
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
@FastBasic_LINE_190:	; LINE 190
	.export	jump_lbl_45
jump_lbl_45:
@FastBasic_LINE_191:	; LINE 191
	.byte	TOK_VAR_ADDR
	.byte	9
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $28, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_LT
	.byte	TOK_CNJUMP
	.word	jump_lbl_46
	.byte	TOK_CALL
	.word	fb_lbl_BUG_GOT_PASSED
	.export	jump_lbl_46
jump_lbl_46:
@FastBasic_LINE_192:	; LINE 192
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_PUSH
	.byte	TOK_VAR_ADDR
	.byte	6
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$3F, $25, $00, $00, $00, $00
	.byte	TOK_FP_ADD
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH
	.byte	TOK_VAR_ADDR
	.byte	9
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$3F, $50, $00, $00, $00, $00
	.byte	TOK_FP_ADD
	.byte	TOK_FP_INT
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_PEEK
	.byte	TOK_VAR_STORE
	.byte	53
@FastBasic_LINE_193:	; LINE 193
	.byte	TOK_VAR_LOAD
	.byte	53
	.byte	TOK_PUSH_0
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_47
@FastBasic_LINE_194:	; LINE 194
	.byte	TOK_VAR_SADDR
	.byte	9
	.byte	TOK_VAR_ADDR
	.byte	9
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$3F, $25, $00, $00, $00, $00
	.byte	TOK_FP_SUB
	.byte	TOK_VAR_LOAD
	.byte	27
	.byte	TOK_PUSH_BYTE
	.byte	25
	.byte	TOK_DIV
	.byte	TOK_INT_FP
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
	.byte	TOK_VAR_ADDR
	.byte	9
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $28, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_LT
	.byte	TOK_CNJUMP
	.word	jump_lbl_47
	.byte	TOK_CALL
	.word	fb_lbl_BUG_GOT_PASSED
@FastBasic_LINE_195:	; LINE 195
	.export	jump_lbl_47
jump_lbl_47:
@FastBasic_LINE_196:	; LINE 196
	.byte	TOK_NUM
	.word	53250
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	46
	.byte	TOK_PUSH
	.byte	TOK_VAR_ADDR
	.byte	6
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $04, $00, $00, $00, $00
	.byte	TOK_FP_MUL
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	40
	.byte	TOK_ADD_VAR
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	16
	.byte	TOK_PUSH
	.byte	TOK_VAR_ADDR
	.byte	18
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $01, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_EQ
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_PUSH_VAR_LOAD
	.byte	46
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_PUSH_NUM
	.word	1292
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_PUSH
	.byte	TOK_FLOAT
	.byte	$40, $08, $00, $00, $00, $00
	.byte	TOK_VAR_ADDR
	.byte	9
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_MUL
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_MOVE
@FastBasic_LINE_197:	; LINE 197
	.byte	TOK_RET
@FastBasic_LINE_199:	; LINE 199
	.export	fb_lbl_BUG_1_4
fb_lbl_BUG_1_4:
@FastBasic_LINE_200:	; LINE 200
	.byte	TOK_VAR_SADDR
	.byte	6
	.byte	TOK_VAR_ADDR
	.byte	6
	.byte	TOK_FP_LOAD
	.byte	TOK_VAR_ADDR
	.byte	18
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $03, $00, $00, $00, $00
	.byte	TOK_FP_DIV
	.byte	TOK_FP_ADD
	.byte	TOK_VAR_LOAD
	.byte	27
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_DIV
	.byte	TOK_INT_FP
	.byte	TOK_FP_SUB
	.byte	TOK_FP_STORE
@FastBasic_LINE_201:	; LINE 201
	.byte	TOK_VAR_ADDR
	.byte	6
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$00, $00, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_LT
	.byte	TOK_PUSH
	.byte	TOK_VAR_ADDR
	.byte	6
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $39, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_GT
	.byte	TOK_L_OR
	.byte	TOK_CJUMP
	.word	jump_lbl_51
@FastBasic_LINE_202:	; LINE 202
	.byte	TOK_VAR_STORE_0
	.byte	43
	.byte	TOK_0
	.byte	TOK_NUM_POKE
	.word	53249
	.byte	TOK_CALL
	.word	fb_lbl_DEFINE_1ST_BUG
@FastBasic_LINE_203:	; LINE 203
	.export	jump_lbl_51
jump_lbl_51:
@FastBasic_LINE_204:	; LINE 204
	.byte	TOK_NUM
	.word	53250
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	46
	.byte	TOK_PUSH
	.byte	TOK_VAR_ADDR
	.byte	6
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $04, $00, $00, $00, $00
	.byte	TOK_FP_MUL
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_POKE
	.byte	TOK_NUM
	.word	264
	.byte	TOK_ADD_VAR
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	16
	.byte	TOK_PUSH
	.byte	TOK_VAR_ADDR
	.byte	18
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$C0, $01, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_EQ
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_PUSH_VAR_LOAD
	.byte	46
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_PUSH_NUM
	.word	1292
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_PUSH
	.byte	TOK_FLOAT
	.byte	$40, $08, $00, $00, $00, $00
	.byte	TOK_VAR_ADDR
	.byte	9
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_MUL
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_MOVE
@FastBasic_LINE_205:	; LINE 205
	.byte	TOK_RET
@FastBasic_LINE_207:	; LINE 207
	.export	fb_lbl_BUG_2_0
fb_lbl_BUG_2_0:
@FastBasic_LINE_208:	; LINE 208
	.byte	TOK_VAR_LOAD
	.byte	25
	.byte	TOK_PUSH_NUM
	.word	1548
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_PUSH
	.byte	TOK_FLOAT
	.byte	$40, $08, $00, $00, $00, $00
	.byte	TOK_VAR_ADDR
	.byte	15
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_MUL
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_MOVE
@FastBasic_LINE_209:	; LINE 209
	.byte	TOK_VAR_SADDR
	.byte	12
	.byte	TOK_VAR_ADDR
	.byte	12
	.byte	TOK_FP_LOAD
	.byte	TOK_VAR_ADDR
	.byte	21
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $02, $00, $00, $00, $00
	.byte	TOK_FP_DIV
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
@FastBasic_LINE_210:	; LINE 210
	.byte	TOK_VAR_ADDR
	.byte	12
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$00, $00, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_LT
	.byte	TOK_CJUMP
	.word	jump_lbl_54
@FastBasic_LINE_211:	; LINE 211
	.byte	TOK_VAR_SADDR
	.byte	12
	.byte	TOK_FLOAT
	.byte	$3F, $50, $00, $00, $00, $00
	.byte	TOK_FP_STORE
@FastBasic_LINE_212:	; LINE 212
	.byte	TOK_VAR_SADDR
	.byte	21
	.byte	TOK_FLOAT
	.byte	$40, $01, $00, $00, $00, $00
	.byte	TOK_FP_STORE
@FastBasic_LINE_213:	; LINE 213
	.byte	TOK_VAR_SADDR
	.byte	15
	.byte	TOK_VAR_ADDR
	.byte	15
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$3F, $50, $00, $00, $00, $00
	.byte	TOK_FP_ADD
	.byte	TOK_VAR_LOAD
	.byte	27
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_DIV
	.byte	TOK_INT_FP
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
@FastBasic_LINE_214:	; LINE 214
	.export	jump_lbl_54
jump_lbl_54:
@FastBasic_LINE_215:	; LINE 215
	.byte	TOK_VAR_ADDR
	.byte	12
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $39, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_55
@FastBasic_LINE_216:	; LINE 216
	.byte	TOK_VAR_SADDR
	.byte	12
	.byte	TOK_FLOAT
	.byte	$40, $39, $00, $00, $00, $00
	.byte	TOK_FP_STORE
@FastBasic_LINE_217:	; LINE 217
	.byte	TOK_VAR_SADDR
	.byte	21
	.byte	TOK_FLOAT
	.byte	$C0, $01, $00, $00, $00, $00
	.byte	TOK_FP_STORE
@FastBasic_LINE_218:	; LINE 218
	.byte	TOK_VAR_SADDR
	.byte	15
	.byte	TOK_VAR_ADDR
	.byte	15
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$3F, $50, $00, $00, $00, $00
	.byte	TOK_FP_ADD
	.byte	TOK_VAR_LOAD
	.byte	27
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_DIV
	.byte	TOK_INT_FP
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
@FastBasic_LINE_219:	; LINE 219
	.export	jump_lbl_55
jump_lbl_55:
@FastBasic_LINE_220:	; LINE 220
	.byte	TOK_VAR_ADDR
	.byte	15
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $28, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_LT
	.byte	TOK_CNJUMP
	.word	jump_lbl_56
	.byte	TOK_CALL
	.word	fb_lbl_BUG_GOT_PASSED
	.export	jump_lbl_56
jump_lbl_56:
@FastBasic_LINE_221:	; LINE 221
	.byte	TOK_NUM
	.word	53250
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	46
	.byte	TOK_PUSH
	.byte	TOK_VAR_ADDR
	.byte	12
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $04, $00, $00, $00, $00
	.byte	TOK_FP_MUL
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_ADD_VAR
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_PUSH_VAR_LOAD
	.byte	46
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_PUSH_NUM
	.word	1548
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_PUSH
	.byte	TOK_FLOAT
	.byte	$40, $08, $00, $00, $00, $00
	.byte	TOK_VAR_ADDR
	.byte	15
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_MUL
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_MOVE
@FastBasic_LINE_222:	; LINE 222
	.byte	TOK_RET
@FastBasic_LINE_224:	; LINE 224
	.export	fb_lbl_BUG_2_1
fb_lbl_BUG_2_1:
@FastBasic_LINE_225:	; LINE 225
	.byte	TOK_VAR_LOAD
	.byte	25
	.byte	TOK_PUSH_NUM
	.word	1548
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_PUSH
	.byte	TOK_FLOAT
	.byte	$40, $08, $00, $00, $00, $00
	.byte	TOK_VAR_ADDR
	.byte	15
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_MUL
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_MOVE
@FastBasic_LINE_226:	; LINE 226
	.byte	TOK_VAR_SADDR
	.byte	12
	.byte	TOK_VAR_ADDR
	.byte	12
	.byte	TOK_FP_LOAD
	.byte	TOK_VAR_ADDR
	.byte	21
	.byte	TOK_FP_LOAD
	.byte	TOK_VAR_LOAD
	.byte	46
	.byte	TOK_PUSH
	.byte	TOK_FLOAT
	.byte	$40, $02, $00, $00, $00, $00
	.byte	TOK_VAR_LOAD
	.byte	27
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_DIV
	.byte	TOK_INT_FP
	.byte	TOK_FP_ADD
	.byte	TOK_FP_INT
	.byte	TOK_MUL
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_RAND
	.byte	TOK_PUSH_BYTE
	.byte	6
	.byte	TOK_MUL
	.byte	TOK_PUSH_VAR_LOAD
	.byte	27
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_DIV
	.byte	TOK_SUB
	.byte	TOK_MUL
	.byte	TOK_INT_FP
	.byte	TOK_FP_MUL
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
@FastBasic_LINE_227:	; LINE 227
	.byte	TOK_VAR_ADDR
	.byte	12
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$00, $00, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_LT
	.byte	TOK_CJUMP
	.word	jump_lbl_59
@FastBasic_LINE_228:	; LINE 228
	.byte	TOK_VAR_SADDR
	.byte	12
	.byte	TOK_FLOAT
	.byte	$3F, $50, $00, $00, $00, $00
	.byte	TOK_FP_STORE
@FastBasic_LINE_229:	; LINE 229
	.byte	TOK_VAR_SADDR
	.byte	21
	.byte	TOK_FLOAT
	.byte	$40, $01, $00, $00, $00, $00
	.byte	TOK_FP_STORE
@FastBasic_LINE_230:	; LINE 230
	.byte	TOK_VAR_SADDR
	.byte	15
	.byte	TOK_VAR_ADDR
	.byte	15
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$3F, $50, $00, $00, $00, $00
	.byte	TOK_FP_ADD
	.byte	TOK_VAR_LOAD
	.byte	27
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_DIV
	.byte	TOK_INT_FP
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
@FastBasic_LINE_231:	; LINE 231
	.export	jump_lbl_59
jump_lbl_59:
@FastBasic_LINE_232:	; LINE 232
	.byte	TOK_VAR_ADDR
	.byte	12
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $39, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_60
@FastBasic_LINE_233:	; LINE 233
	.byte	TOK_VAR_SADDR
	.byte	12
	.byte	TOK_FLOAT
	.byte	$40, $39, $00, $00, $00, $00
	.byte	TOK_FP_STORE
@FastBasic_LINE_234:	; LINE 234
	.byte	TOK_VAR_SADDR
	.byte	21
	.byte	TOK_FLOAT
	.byte	$C0, $01, $00, $00, $00, $00
	.byte	TOK_FP_STORE
@FastBasic_LINE_235:	; LINE 235
	.byte	TOK_VAR_SADDR
	.byte	15
	.byte	TOK_VAR_ADDR
	.byte	15
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$3F, $50, $00, $00, $00, $00
	.byte	TOK_FP_ADD
	.byte	TOK_VAR_LOAD
	.byte	27
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_DIV
	.byte	TOK_INT_FP
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
@FastBasic_LINE_236:	; LINE 236
	.export	jump_lbl_60
jump_lbl_60:
@FastBasic_LINE_237:	; LINE 237
	.byte	TOK_VAR_ADDR
	.byte	15
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $28, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_LT
	.byte	TOK_CNJUMP
	.word	jump_lbl_61
	.byte	TOK_CALL
	.word	fb_lbl_BUG_GOT_PASSED
	.export	jump_lbl_61
jump_lbl_61:
@FastBasic_LINE_238:	; LINE 238
	.byte	TOK_NUM
	.word	53250
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	46
	.byte	TOK_PUSH
	.byte	TOK_VAR_ADDR
	.byte	12
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $04, $00, $00, $00, $00
	.byte	TOK_FP_MUL
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	16
	.byte	TOK_ADD_VAR
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_PUSH
	.byte	TOK_VAR_ADDR
	.byte	21
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $01, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_EQ
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_PUSH_NUM
	.word	1548
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_PUSH
	.byte	TOK_FLOAT
	.byte	$40, $08, $00, $00, $00, $00
	.byte	TOK_VAR_ADDR
	.byte	15
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_MUL
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_MOVE
@FastBasic_LINE_239:	; LINE 239
	.byte	TOK_RET
@FastBasic_LINE_241:	; LINE 241
	.export	fb_lbl_BUG_2_2
fb_lbl_BUG_2_2:
@FastBasic_LINE_242:	; LINE 242
	.byte	TOK_VAR_LOAD
	.byte	25
	.byte	TOK_PUSH_NUM
	.word	1548
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_PUSH
	.byte	TOK_FLOAT
	.byte	$40, $08, $00, $00, $00, $00
	.byte	TOK_VAR_ADDR
	.byte	15
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_MUL
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_MOVE
@FastBasic_LINE_243:	; LINE 243
	.byte	TOK_VAR_SADDR
	.byte	12
	.byte	TOK_VAR_ADDR
	.byte	12
	.byte	TOK_FP_LOAD
	.byte	TOK_VAR_ADDR
	.byte	21
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $04, $00, $00, $00, $00
	.byte	TOK_FP_DIV
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
@FastBasic_LINE_244:	; LINE 244
	.byte	TOK_VAR_ADDR
	.byte	12
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$00, $00, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_LT
	.byte	TOK_PUSH
	.byte	TOK_VAR_ADDR
	.byte	12
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $39, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_GT
	.byte	TOK_L_OR
	.byte	TOK_CJUMP
	.word	jump_lbl_64
@FastBasic_LINE_245:	; LINE 245
	.byte	TOK_VAR_SADDR
	.byte	12
	.byte	TOK_VAR_ADDR
	.byte	12
	.byte	TOK_FP_LOAD
	.byte	TOK_VAR_ADDR
	.byte	21
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $04, $00, $00, $00, $00
	.byte	TOK_FP_DIV
	.byte	TOK_FP_SUB
	.byte	TOK_FP_STORE
	.byte	TOK_VAR_SADDR
	.byte	21
	.byte	TOK_VAR_ADDR
	.byte	21
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_NEG
	.byte	TOK_FP_STORE
	.byte	TOK_VAR_SADDR
	.byte	15
	.byte	TOK_VAR_ADDR
	.byte	15
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$3F, $50, $00, $00, $00, $00
	.byte	TOK_FP_ADD
	.byte	TOK_VAR_LOAD
	.byte	27
	.byte	TOK_PUSH_BYTE
	.byte	10
	.byte	TOK_DIV
	.byte	TOK_INT_FP
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
	.byte	TOK_VAR_ADDR
	.byte	15
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $28, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_LT
	.byte	TOK_CNJUMP
	.word	jump_lbl_64
	.byte	TOK_CALL
	.word	fb_lbl_BUG_GOT_PASSED
@FastBasic_LINE_246:	; LINE 246
	.export	jump_lbl_64
jump_lbl_64:
@FastBasic_LINE_247:	; LINE 247
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_PUSH
	.byte	TOK_VAR_ADDR
	.byte	12
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$3F, $25, $00, $00, $00, $00
	.byte	TOK_FP_ADD
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH
	.byte	TOK_VAR_ADDR
	.byte	15
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$3F, $50, $00, $00, $00, $00
	.byte	TOK_FP_ADD
	.byte	TOK_FP_INT
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_PEEK
	.byte	TOK_VAR_STORE
	.byte	53
@FastBasic_LINE_248:	; LINE 248
	.byte	TOK_VAR_LOAD
	.byte	53
	.byte	TOK_PUSH_0
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_66
@FastBasic_LINE_249:	; LINE 249
	.byte	TOK_VAR_SADDR
	.byte	12
	.byte	TOK_VAR_ADDR
	.byte	12
	.byte	TOK_FP_LOAD
	.byte	TOK_VAR_ADDR
	.byte	21
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $08, $00, $00, $00, $00
	.byte	TOK_FP_DIV
	.byte	TOK_FP_SUB
	.byte	TOK_FP_STORE
	.byte	TOK_VAR_SADDR
	.byte	21
	.byte	TOK_VAR_ADDR
	.byte	21
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_NEG
	.byte	TOK_FP_STORE
	.byte	TOK_VAR_SADDR
	.byte	15
	.byte	TOK_VAR_ADDR
	.byte	15
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$3F, $50, $00, $00, $00, $00
	.byte	TOK_VAR_LOAD
	.byte	27
	.byte	TOK_PUSH_BYTE
	.byte	20
	.byte	TOK_DIV
	.byte	TOK_INT_FP
	.byte	TOK_FP_ADD
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
	.byte	TOK_VAR_ADDR
	.byte	15
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $28, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_LT
	.byte	TOK_CNJUMP
	.word	jump_lbl_66
	.byte	TOK_CALL
	.word	fb_lbl_BUG_GOT_PASSED
@FastBasic_LINE_250:	; LINE 250
	.export	jump_lbl_66
jump_lbl_66:
@FastBasic_LINE_251:	; LINE 251
	.byte	TOK_NUM
	.word	53250
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	46
	.byte	TOK_PUSH
	.byte	TOK_VAR_ADDR
	.byte	12
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $04, $00, $00, $00, $00
	.byte	TOK_FP_MUL
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	24
	.byte	TOK_ADD_VAR
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_PUSH
	.byte	TOK_VAR_ADDR
	.byte	21
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$C0, $01, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_EQ
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_PUSH_VAR_LOAD
	.byte	46
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_PUSH_NUM
	.word	1548
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_PUSH
	.byte	TOK_FLOAT
	.byte	$40, $08, $00, $00, $00, $00
	.byte	TOK_VAR_ADDR
	.byte	15
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_MUL
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_MOVE
@FastBasic_LINE_252:	; LINE 252
	.byte	TOK_RET
@FastBasic_LINE_254:	; LINE 254
	.export	fb_lbl_BUG_2_3
fb_lbl_BUG_2_3:
@FastBasic_LINE_255:	; LINE 255
	.byte	TOK_VAR_LOAD
	.byte	25
	.byte	TOK_PUSH_NUM
	.word	1548
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_PUSH
	.byte	TOK_FLOAT
	.byte	$40, $08, $00, $00, $00, $00
	.byte	TOK_VAR_ADDR
	.byte	15
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_MUL
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_MOVE
	.byte	TOK_VAR_SADDR
	.byte	12
	.byte	TOK_VAR_ADDR
	.byte	12
	.byte	TOK_FP_LOAD
	.byte	TOK_VAR_ADDR
	.byte	21
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$3F, $20, $00, $00, $00, $00
	.byte	TOK_VAR_LOAD
	.byte	27
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_DIV
	.byte	TOK_INT_FP
	.byte	TOK_FP_ADD
	.byte	TOK_FP_MUL
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
	.byte	TOK_VAR_SADDR
	.byte	15
	.byte	TOK_VAR_ADDR
	.byte	15
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$3F, $10, $00, $00, $00, $00
	.byte	TOK_VAR_LOAD
	.byte	27
	.byte	TOK_PUSH_BYTE
	.byte	16
	.byte	TOK_DIV
	.byte	TOK_INT_FP
	.byte	TOK_FP_ADD
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
@FastBasic_LINE_256:	; LINE 256
	.byte	TOK_VAR_ADDR
	.byte	12
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$00, $00, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_LT
	.byte	TOK_PUSH
	.byte	TOK_VAR_ADDR
	.byte	12
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $39, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_GT
	.byte	TOK_L_OR
	.byte	TOK_CJUMP
	.word	jump_lbl_70
@FastBasic_LINE_257:	; LINE 257
	.byte	TOK_VAR_SADDR
	.byte	12
	.byte	TOK_VAR_ADDR
	.byte	12
	.byte	TOK_FP_LOAD
	.byte	TOK_VAR_ADDR
	.byte	21
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$3F, $20, $00, $00, $00, $00
	.byte	TOK_VAR_LOAD
	.byte	27
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_DIV
	.byte	TOK_INT_FP
	.byte	TOK_FP_ADD
	.byte	TOK_FP_MUL
	.byte	TOK_FP_SUB
	.byte	TOK_FP_STORE
	.byte	TOK_VAR_SADDR
	.byte	21
	.byte	TOK_VAR_ADDR
	.byte	21
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_NEG
	.byte	TOK_FP_STORE
@FastBasic_LINE_258:	; LINE 258
	.export	jump_lbl_70
jump_lbl_70:
@FastBasic_LINE_259:	; LINE 259
	.byte	TOK_VAR_ADDR
	.byte	15
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $28, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_LT
	.byte	TOK_CNJUMP
	.word	jump_lbl_71
	.byte	TOK_CALL
	.word	fb_lbl_BUG_GOT_PASSED
	.export	jump_lbl_71
jump_lbl_71:
@FastBasic_LINE_260:	; LINE 260
	.byte	TOK_NUM
	.word	53250
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	46
	.byte	TOK_PUSH
	.byte	TOK_VAR_ADDR
	.byte	12
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $04, $00, $00, $00, $00
	.byte	TOK_FP_MUL
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	232
	.byte	TOK_ADD_VAR
	.byte	2
	.byte	TOK_PUSH_BYTE
	.byte	16
	.byte	TOK_PUSH
	.byte	TOK_VAR_ADDR
	.byte	21
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $01, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_EQ
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_PUSH_VAR_LOAD
	.byte	46
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_PUSH_NUM
	.word	1548
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_PUSH
	.byte	TOK_FLOAT
	.byte	$40, $08, $00, $00, $00, $00
	.byte	TOK_VAR_ADDR
	.byte	15
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_MUL
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_MOVE
@FastBasic_LINE_261:	; LINE 261
	.byte	TOK_RET
@FastBasic_LINE_263:	; LINE 263
	.export	fb_lbl_BUG_2_4
fb_lbl_BUG_2_4:
@FastBasic_LINE_264:	; LINE 264
	.byte	TOK_VAR_ADDR
	.byte	21
	.byte	TOK_FP_LOAD
	.byte	TOK_VAR_ADDR
	.byte	9
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_CMP
	.byte	TOK_LT
	.byte	TOK_CJUMP
	.word	jump_lbl_74
	.byte	TOK_VAR_SADDR
	.byte	21
	.byte	TOK_VAR_ADDR
	.byte	21
	.byte	TOK_FP_LOAD
	.byte	TOK_VAR_LOAD
	.byte	46
	.byte	TOK_INT_FP
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
	.export	jump_lbl_74
jump_lbl_74:
@FastBasic_LINE_265:	; LINE 265
	.byte	TOK_VAR_ADDR
	.byte	21
	.byte	TOK_FP_LOAD
	.byte	TOK_VAR_ADDR
	.byte	9
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_CMP
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_75
	.byte	TOK_VAR_SADDR
	.byte	21
	.byte	TOK_VAR_ADDR
	.byte	21
	.byte	TOK_FP_LOAD
	.byte	TOK_VAR_LOAD
	.byte	46
	.byte	TOK_INT_FP
	.byte	TOK_FP_SUB
	.byte	TOK_FP_STORE
	.export	jump_lbl_75
jump_lbl_75:
@FastBasic_LINE_266:	; LINE 266
	.byte	TOK_VAR_ADDR
	.byte	21
	.byte	TOK_FP_LOAD
	.byte	TOK_VAR_ADDR
	.byte	9
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_CMP
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	46
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_RAND
	.byte	TOK_MUL
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_76
@FastBasic_LINE_267:	; LINE 267
	.byte	TOK_VAR_ADDR
	.byte	9
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $04, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_LT
	.byte	TOK_CJUMP
	.word	jump_lbl_77
	.byte	TOK_VAR_SADDR
	.byte	9
	.byte	TOK_FLOAT
	.byte	$40, $04, $00, $00, $00, $00
	.byte	TOK_BYTE
	.byte	4
	.byte	TOK_RAND
	.byte	TOK_INT_FP
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
	.export	jump_lbl_77
jump_lbl_77:
@FastBasic_LINE_268:	; LINE 268
	.byte	TOK_VAR_ADDR
	.byte	9
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $04, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_78
	.byte	TOK_VAR_SADDR
	.byte	9
	.byte	TOK_FLOAT
	.byte	$40, $01, $00, $00, $00, $00
	.byte	TOK_BYTE
	.byte	4
	.byte	TOK_RAND
	.byte	TOK_INT_FP
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
	.export	jump_lbl_78
jump_lbl_78:
@FastBasic_LINE_269:	; LINE 269
	.byte	TOK_VAR_ADDR
	.byte	9
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $04, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_76
	.byte	TOK_VAR_SADDR
	.byte	9
	.byte	TOK_FLOAT
	.byte	$40, $01, $00, $00, $00, $00
	.byte	TOK_BYTE
	.byte	7
	.byte	TOK_RAND
	.byte	TOK_INT_FP
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
@FastBasic_LINE_270:	; LINE 270
	.export	jump_lbl_76
jump_lbl_76:
@FastBasic_LINE_271:	; LINE 271
	.byte	TOK_VAR_ADDR
	.byte	12
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $03, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_LT
	.byte	TOK_CJUMP
	.word	jump_lbl_80
	.byte	TOK_VAR_SADDR
	.byte	9
	.byte	TOK_FLOAT
	.byte	$40, $03, $00, $00, $00, $00
	.byte	TOK_FP_STORE
	.export	jump_lbl_80
jump_lbl_80:
@FastBasic_LINE_272:	; LINE 272
	.byte	TOK_VAR_ADDR
	.byte	12
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $36, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_81
	.byte	TOK_VAR_SADDR
	.byte	9
	.byte	TOK_FLOAT
	.byte	$40, $07, $00, $00, $00, $00
	.byte	TOK_FP_STORE
	.export	jump_lbl_81
jump_lbl_81:
@FastBasic_LINE_273:	; LINE 273
	.byte	TOK_VAR_ADDR
	.byte	15
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$C0, $02, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_LT
	.byte	TOK_CJUMP
	.word	jump_lbl_82
	.byte	TOK_VAR_SADDR
	.byte	9
	.byte	TOK_FLOAT
	.byte	$40, $04, $00, $00, $00, $00
	.byte	TOK_FP_STORE
	.export	jump_lbl_82
jump_lbl_82:
@FastBasic_LINE_274:	; LINE 274
	.byte	TOK_VAR_SADDR
	.byte	12
	.byte	TOK_VAR_ADDR
	.byte	12
	.byte	TOK_FP_LOAD
	.byte	TOK_VAR_ADDR
	.byte	21
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $45, $00, $00, $00, $00
	.byte	TOK_FP_MUL
	.byte	TOK_FP_SIN
	.byte	TOK_FLOAT
	.byte	$3F, $45, $00, $00, $00, $00
	.byte	TOK_VAR_LOAD
	.byte	27
	.byte	TOK_INT_FP
	.byte	TOK_FLOAT
	.byte	$40, $12, $50, $00, $00, $00
	.byte	TOK_FP_DIV
	.byte	TOK_FP_ADD
	.byte	TOK_FP_MUL
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
	.byte	TOK_VAR_LOAD
	.byte	25
	.byte	TOK_PUSH_NUM
	.word	1292
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_PUSH
	.byte	TOK_FLOAT
	.byte	$40, $08, $00, $00, $00, $00
	.byte	TOK_VAR_ADDR
	.byte	15
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_MUL
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_MOVE
	.byte	TOK_VAR_SADDR
	.byte	15
	.byte	TOK_VAR_ADDR
	.byte	15
	.byte	TOK_FP_LOAD
	.byte	TOK_VAR_ADDR
	.byte	21
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $45, $00, $00, $00, $00
	.byte	TOK_FP_MUL
	.byte	TOK_FP_COS
	.byte	TOK_FLOAT
	.byte	$3F, $45, $00, $00, $00, $00
	.byte	TOK_VAR_LOAD
	.byte	27
	.byte	TOK_INT_FP
	.byte	TOK_FLOAT
	.byte	$40, $12, $50, $00, $00, $00
	.byte	TOK_FP_DIV
	.byte	TOK_FP_ADD
	.byte	TOK_FP_MUL
	.byte	TOK_FP_SUB
	.byte	TOK_FP_STORE
@FastBasic_LINE_275:	; LINE 275
	.byte	TOK_NUM
	.word	53249
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	46
	.byte	TOK_PUSH
	.byte	TOK_VAR_ADDR
	.byte	12
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_INT
	.byte	TOK_USHL
	.byte	TOK_USHL
	.byte	TOK_ADD
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	104
	.byte	TOK_ADD_VAR
	.byte	2
	.byte	TOK_PUSH
	.byte	TOK_VAR_ADDR
	.byte	21
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_INT
	.byte	TOK_PUSH_BYTE
	.byte	16
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_PUSH_VAR_LOAD
	.byte	46
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_MUL
	.byte	TOK_INT_FP
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_PUSH_NUM
	.word	1292
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_PUSH
	.byte	TOK_FLOAT
	.byte	$40, $08, $00, $00, $00, $00
	.byte	TOK_VAR_ADDR
	.byte	15
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_MUL
	.byte	TOK_FP_INT
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_MOVE
@FastBasic_LINE_276:	; LINE 276
	.byte	TOK_VAR_ADDR
	.byte	15
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $25, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_LT
	.byte	TOK_L_NOT
	.byte	TOK_PUSH
	.byte	TOK_VAR_ADDR
	.byte	12
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $01, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_GT
	.byte	TOK_L_AND
	.byte	TOK_PUSH
	.byte	TOK_VAR_ADDR
	.byte	12
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $38, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_LT
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	fb_lbl_BUG_GOT_PASSED
	.byte	TOK_VAR_SADDR
	.byte	9
	.byte	TOK_FLOAT
	.byte	$40, $30, $00, $00, $00, $00
	.byte	TOK_FP_STORE
	.byte	TOK_JUMP
	.word	fb_lbl_BUG_GOT_PASSED
@FastBasic_LINE_279:	; LINE 279
	.export	fb_lbl_BULLET_PLAYFIELD
fb_lbl_BULLET_PLAYFIELD:
@FastBasic_LINE_280:	; LINE 280
	.byte	TOK_NUM
	.word	512
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_PUSH_NUM
	.word	789
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	16
	.byte	TOK_MOVE
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_PEEK
	.byte	TOK_VAR_STORE
	.byte	40
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_PEEK
	.byte	TOK_VAR_STORE
	.byte	54
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_SUB
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_PEEK
	.byte	TOK_VAR_STORE
	.byte	55
@FastBasic_LINE_281:	; LINE 281
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_1
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_PEEK
	.byte	TOK_VAR_STORE
	.byte	56
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_1
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_PEEK
	.byte	TOK_VAR_STORE
	.byte	57
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_PEEK
	.byte	TOK_VAR_STORE
	.byte	58
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_PEEK
	.byte	TOK_VAR_STORE
	.byte	59
@FastBasic_LINE_282:	; LINE 282
	.byte	TOK_VAR_LOAD
	.byte	24
	.byte	TOK_USR_ADDR
	.byte	TOK_1
	.byte	TOK_USR_PARAM
	.byte	TOK_NUM
	.word	768
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_USR_PARAM
	.byte	TOK_USR_CALL
	.byte	TOK_VAR_STORE
	.byte	45
	.byte	TOK_VAR_LOAD
	.byte	4
	.byte	TOK_USR_ADDR
	.byte	TOK_1
	.byte	TOK_USR_PARAM
	.byte	TOK_BYTE
	.byte	24
	.byte	TOK_USR_PARAM
	.byte	TOK_NUM
	.word	1592
	.byte	TOK_ADD_VAR
	.byte	25
	.byte	TOK_USR_PARAM
	.byte	TOK_1
	.byte	TOK_USR_PARAM
	.byte	TOK_USR_CALL
	.byte	TOK_VAR_STORE
	.byte	45
@FastBasic_LINE_283:	; LINE 283
	.byte	TOK_VAR_LOAD
	.byte	40
	.byte	TOK_PUSH_BYTE
	.byte	67
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	54
	.byte	TOK_PUSH_BYTE
	.byte	65
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	54
	.byte	TOK_PUSH_BYTE
	.byte	194
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	55
	.byte	TOK_PUSH_BYTE
	.byte	65
	.byte	TOK_NEQ
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	55
	.byte	TOK_PUSH_BYTE
	.byte	194
	.byte	TOK_NEQ
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_86
@FastBasic_LINE_284:	; LINE 284
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_POKE
@FastBasic_LINE_285:	; LINE 285
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_POKE
@FastBasic_LINE_286:	; LINE 286
	.export	jump_lbl_86
jump_lbl_86:
@FastBasic_LINE_287:	; LINE 287
	.byte	TOK_VAR_LOAD
	.byte	40
	.byte	TOK_PUSH_BYTE
	.byte	67
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	54
	.byte	TOK_PUSH_BYTE
	.byte	65
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	54
	.byte	TOK_PUSH_BYTE
	.byte	194
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	55
	.byte	TOK_PUSH_BYTE
	.byte	65
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	55
	.byte	TOK_PUSH_BYTE
	.byte	194
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_87
@FastBasic_LINE_288:	; LINE 288
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_POKE
@FastBasic_LINE_289:	; LINE 289
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	67
	.byte	TOK_POKE
@FastBasic_LINE_290:	; LINE 290
	.export	jump_lbl_87
jump_lbl_87:
@FastBasic_LINE_291:	; LINE 291
	.byte	TOK_VAR_LOAD
	.byte	40
	.byte	TOK_PUSH_BYTE
	.byte	68
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	56
	.byte	TOK_PUSH_BYTE
	.byte	69
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	56
	.byte	TOK_PUSH_BYTE
	.byte	70
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_88
@FastBasic_LINE_292:	; LINE 292
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_POKE
@FastBasic_LINE_293:	; LINE 293
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_1
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	68
	.byte	TOK_POKE
@FastBasic_LINE_294:	; LINE 294
	.export	jump_lbl_88
jump_lbl_88:
@FastBasic_LINE_295:	; LINE 295
	.byte	TOK_VAR_LOAD
	.byte	40
	.byte	TOK_PUSH_BYTE
	.byte	71
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	58
	.byte	TOK_PUSH_BYTE
	.byte	69
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	58
	.byte	TOK_PUSH_BYTE
	.byte	70
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_89
@FastBasic_LINE_296:	; LINE 296
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_POKE
@FastBasic_LINE_297:	; LINE 297
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	71
	.byte	TOK_POKE
@FastBasic_LINE_298:	; LINE 298
	.export	jump_lbl_89
jump_lbl_89:
@FastBasic_LINE_299:	; LINE 299
	.byte	TOK_VAR_LOAD
	.byte	40
	.byte	TOK_PUSH_BYTE
	.byte	68
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	56
	.byte	TOK_PUSH_BYTE
	.byte	71
	.byte	TOK_EQ
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_90
@FastBasic_LINE_300:	; LINE 300
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_POKE
@FastBasic_LINE_301:	; LINE 301
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_1
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_POKE
@FastBasic_LINE_302:	; LINE 302
	.export	jump_lbl_90
jump_lbl_90:
@FastBasic_LINE_303:	; LINE 303
	.byte	TOK_VAR_LOAD
	.byte	40
	.byte	TOK_PUSH_BYTE
	.byte	71
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	58
	.byte	TOK_PUSH_BYTE
	.byte	68
	.byte	TOK_EQ
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_91
@FastBasic_LINE_304:	; LINE 304
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_POKE
@FastBasic_LINE_305:	; LINE 305
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_POKE
@FastBasic_LINE_306:	; LINE 306
	.export	jump_lbl_91
jump_lbl_91:
@FastBasic_LINE_307:	; LINE 307
	.byte	TOK_VAR_LOAD
	.byte	40
	.byte	TOK_PUSH_BYTE
	.byte	67
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	56
	.byte	TOK_PUSH_BYTE
	.byte	68
	.byte	TOK_GT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	56
	.byte	TOK_PUSH_BYTE
	.byte	72
	.byte	TOK_LT
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	58
	.byte	TOK_PUSH_BYTE
	.byte	67
	.byte	TOK_GT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	58
	.byte	TOK_PUSH_BYTE
	.byte	71
	.byte	TOK_LT
	.byte	TOK_L_AND
	.byte	TOK_L_OR
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_92
@FastBasic_LINE_308:	; LINE 308
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	69
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_RAND
	.byte	TOK_ADD
	.byte	TOK_POKE
@FastBasic_LINE_309:	; LINE 309
	.export	jump_lbl_92
jump_lbl_92:
@FastBasic_LINE_310:	; LINE 310
	.byte	TOK_VAR_LOAD
	.byte	54
	.byte	TOK_PUSH_BYTE
	.byte	65
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	54
	.byte	TOK_PUSH_BYTE
	.byte	194
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_PUSH_VAR_LOAD
	.byte	57
	.byte	TOK_PUSH_BYTE
	.byte	68
	.byte	TOK_GT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	57
	.byte	TOK_PUSH_BYTE
	.byte	72
	.byte	TOK_LT
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	59
	.byte	TOK_PUSH_BYTE
	.byte	67
	.byte	TOK_GT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	59
	.byte	TOK_PUSH_BYTE
	.byte	71
	.byte	TOK_LT
	.byte	TOK_L_AND
	.byte	TOK_L_OR
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_93
@FastBasic_LINE_311:	; LINE 311
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	69
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_RAND
	.byte	TOK_ADD
	.byte	TOK_POKE
@FastBasic_LINE_312:	; LINE 312
	.export	jump_lbl_93
jump_lbl_93:
@FastBasic_LINE_313:	; LINE 313
	.byte	TOK_VAR_LOAD
	.byte	40
	.byte	TOK_PUSH_BYTE
	.byte	67
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	56
	.byte	TOK_PUSH_BYTE
	.byte	68
	.byte	TOK_GT
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	56
	.byte	TOK_PUSH_BYTE
	.byte	72
	.byte	TOK_LT
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	58
	.byte	TOK_COMP_0
	.byte	TOK_L_NOT
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_94
@FastBasic_LINE_314:	; LINE 314
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	68
	.byte	TOK_POKE
@FastBasic_LINE_315:	; LINE 315
	.export	jump_lbl_94
jump_lbl_94:
@FastBasic_LINE_316:	; LINE 316
	.byte	TOK_VAR_LOAD
	.byte	40
	.byte	TOK_PUSH_BYTE
	.byte	67
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	56
	.byte	TOK_COMP_0
	.byte	TOK_L_NOT
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	58
	.byte	TOK_PUSH_BYTE
	.byte	67
	.byte	TOK_GT
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	58
	.byte	TOK_PUSH_BYTE
	.byte	71
	.byte	TOK_LT
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_95
@FastBasic_LINE_317:	; LINE 317
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	71
	.byte	TOK_POKE
@FastBasic_LINE_318:	; LINE 318
	.export	jump_lbl_95
jump_lbl_95:
@FastBasic_LINE_319:	; LINE 319
	.byte	TOK_VAR_LOAD
	.byte	54
	.byte	TOK_PUSH_BYTE
	.byte	65
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	54
	.byte	TOK_PUSH_BYTE
	.byte	194
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_PUSH_VAR_LOAD
	.byte	57
	.byte	TOK_PUSH_BYTE
	.byte	68
	.byte	TOK_GT
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	57
	.byte	TOK_PUSH_BYTE
	.byte	72
	.byte	TOK_LT
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	59
	.byte	TOK_COMP_0
	.byte	TOK_L_NOT
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_96
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	68
	.byte	TOK_POKE
	.export	jump_lbl_96
jump_lbl_96:
@FastBasic_LINE_320:	; LINE 320
	.byte	TOK_VAR_LOAD
	.byte	54
	.byte	TOK_PUSH_BYTE
	.byte	65
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	54
	.byte	TOK_PUSH_BYTE
	.byte	194
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_PUSH_VAR_LOAD
	.byte	59
	.byte	TOK_PUSH_BYTE
	.byte	67
	.byte	TOK_GT
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	59
	.byte	TOK_PUSH_BYTE
	.byte	71
	.byte	TOK_LT
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	57
	.byte	TOK_COMP_0
	.byte	TOK_L_NOT
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_97
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	71
	.byte	TOK_POKE
	.export	jump_lbl_97
jump_lbl_97:
@FastBasic_LINE_321:	; LINE 321
	.byte	TOK_VAR_LOAD
	.byte	40
	.byte	TOK_PUSH_BYTE
	.byte	69
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	40
	.byte	TOK_PUSH_BYTE
	.byte	70
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_PUSH_VAR_LOAD
	.byte	56
	.byte	TOK_PUSH_BYTE
	.byte	69
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	56
	.byte	TOK_PUSH_BYTE
	.byte	70
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	58
	.byte	TOK_PUSH_BYTE
	.byte	69
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	58
	.byte	TOK_PUSH_BYTE
	.byte	70
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_98
@FastBasic_LINE_322:	; LINE 322
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_POKE
@FastBasic_LINE_323:	; LINE 323
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	71
	.byte	TOK_POKE
@FastBasic_LINE_324:	; LINE 324
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_1
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	68
	.byte	TOK_POKE
@FastBasic_LINE_325:	; LINE 325
	.export	jump_lbl_98
jump_lbl_98:
@FastBasic_LINE_326:	; LINE 326
	.byte	TOK_VAR_LOAD
	.byte	40
	.byte	TOK_PUSH_BYTE
	.byte	69
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	40
	.byte	TOK_PUSH_BYTE
	.byte	70
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_PUSH_VAR_LOAD
	.byte	56
	.byte	TOK_PUSH_BYTE
	.byte	69
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	56
	.byte	TOK_PUSH_BYTE
	.byte	70
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	58
	.byte	TOK_PUSH_BYTE
	.byte	68
	.byte	TOK_EQ
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_99
@FastBasic_LINE_327:	; LINE 327
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_POKE
@FastBasic_LINE_328:	; LINE 328
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_POKE
@FastBasic_LINE_329:	; LINE 329
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_1
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	68
	.byte	TOK_POKE
@FastBasic_LINE_330:	; LINE 330
	.export	jump_lbl_99
jump_lbl_99:
@FastBasic_LINE_331:	; LINE 331
	.byte	TOK_VAR_LOAD
	.byte	40
	.byte	TOK_PUSH_BYTE
	.byte	69
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	40
	.byte	TOK_PUSH_BYTE
	.byte	70
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_PUSH_VAR_LOAD
	.byte	56
	.byte	TOK_PUSH_BYTE
	.byte	71
	.byte	TOK_EQ
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	58
	.byte	TOK_PUSH_BYTE
	.byte	69
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	58
	.byte	TOK_PUSH_BYTE
	.byte	70
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_100
@FastBasic_LINE_332:	; LINE 332
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_POKE
@FastBasic_LINE_333:	; LINE 333
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	71
	.byte	TOK_POKE
@FastBasic_LINE_334:	; LINE 334
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_1
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_POKE
@FastBasic_LINE_335:	; LINE 335
	.export	jump_lbl_100
jump_lbl_100:
@FastBasic_LINE_336:	; LINE 336
	.byte	TOK_VAR_LOAD
	.byte	40
	.byte	TOK_PUSH_BYTE
	.byte	69
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	40
	.byte	TOK_PUSH_BYTE
	.byte	70
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_PUSH_VAR_LOAD
	.byte	56
	.byte	TOK_PUSH_BYTE
	.byte	71
	.byte	TOK_EQ
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	58
	.byte	TOK_PUSH_BYTE
	.byte	68
	.byte	TOK_EQ
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_101
@FastBasic_LINE_337:	; LINE 337
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_POKE
@FastBasic_LINE_338:	; LINE 338
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_1
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_POKE
@FastBasic_LINE_339:	; LINE 339
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_POKE
@FastBasic_LINE_340:	; LINE 340
	.export	jump_lbl_101
jump_lbl_101:
@FastBasic_LINE_341:	; LINE 341
	.byte	TOK_VAR_LOAD
	.byte	56
	.byte	TOK_PUSH_BYTE
	.byte	127
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_BYTE
	.byte	63
	.byte	TOK_GT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	56
	.byte	TOK_PUSH_BYTE
	.byte	127
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_BYTE
	.byte	68
	.byte	TOK_LT
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	40
	.byte	TOK_PUSH_BYTE
	.byte	67
	.byte	TOK_GT
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_102
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_POKE
	.export	jump_lbl_102
jump_lbl_102:
@FastBasic_LINE_342:	; LINE 342
	.byte	TOK_VAR_LOAD
	.byte	58
	.byte	TOK_PUSH_BYTE
	.byte	127
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_BYTE
	.byte	63
	.byte	TOK_GT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	58
	.byte	TOK_PUSH_BYTE
	.byte	127
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_BYTE
	.byte	68
	.byte	TOK_LT
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	40
	.byte	TOK_PUSH_BYTE
	.byte	67
	.byte	TOK_GT
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_103
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_POKE
	.export	jump_lbl_103
jump_lbl_103:
@FastBasic_LINE_343:	; LINE 343
	.byte	TOK_VAR_LOAD
	.byte	56
	.byte	TOK_PUSH_BYTE
	.byte	127
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_BYTE
	.byte	63
	.byte	TOK_GT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	56
	.byte	TOK_PUSH_BYTE
	.byte	127
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_BYTE
	.byte	68
	.byte	TOK_LT
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	40
	.byte	TOK_PUSH_BYTE
	.byte	67
	.byte	TOK_GT
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	58
	.byte	TOK_PUSH_BYTE
	.byte	68
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	58
	.byte	TOK_PUSH_BYTE
	.byte	71
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_104
@FastBasic_LINE_344:	; LINE 344
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_POKE
@FastBasic_LINE_345:	; LINE 345
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_POKE
@FastBasic_LINE_346:	; LINE 346
	.export	jump_lbl_104
jump_lbl_104:
@FastBasic_LINE_347:	; LINE 347
	.byte	TOK_VAR_LOAD
	.byte	58
	.byte	TOK_PUSH_BYTE
	.byte	127
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_BYTE
	.byte	63
	.byte	TOK_GT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	58
	.byte	TOK_PUSH_BYTE
	.byte	127
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_BYTE
	.byte	68
	.byte	TOK_LT
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	40
	.byte	TOK_PUSH_BYTE
	.byte	67
	.byte	TOK_GT
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	56
	.byte	TOK_PUSH_BYTE
	.byte	68
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	56
	.byte	TOK_PUSH_BYTE
	.byte	71
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_105
@FastBasic_LINE_348:	; LINE 348
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_POKE
@FastBasic_LINE_349:	; LINE 349
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_1
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_POKE
@FastBasic_LINE_350:	; LINE 350
	.export	jump_lbl_105
jump_lbl_105:
@FastBasic_LINE_351:	; LINE 351
	.byte	TOK_VAR_LOAD
	.byte	56
	.byte	TOK_PUSH_BYTE
	.byte	127
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_BYTE
	.byte	63
	.byte	TOK_GT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	56
	.byte	TOK_PUSH_BYTE
	.byte	127
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_BYTE
	.byte	68
	.byte	TOK_LT
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	40
	.byte	TOK_PUSH_BYTE
	.byte	67
	.byte	TOK_GT
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	58
	.byte	TOK_PUSH_BYTE
	.byte	69
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	58
	.byte	TOK_PUSH_BYTE
	.byte	70
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_106
@FastBasic_LINE_352:	; LINE 352
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_POKE
@FastBasic_LINE_353:	; LINE 353
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	71
	.byte	TOK_POKE
@FastBasic_LINE_354:	; LINE 354
	.export	jump_lbl_106
jump_lbl_106:
@FastBasic_LINE_355:	; LINE 355
	.byte	TOK_VAR_LOAD
	.byte	58
	.byte	TOK_PUSH_BYTE
	.byte	127
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_BYTE
	.byte	63
	.byte	TOK_GT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	58
	.byte	TOK_PUSH_BYTE
	.byte	127
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_BYTE
	.byte	68
	.byte	TOK_LT
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	40
	.byte	TOK_PUSH_BYTE
	.byte	67
	.byte	TOK_GT
	.byte	TOK_L_AND
	.byte	TOK_PUSH_VAR_LOAD
	.byte	56
	.byte	TOK_PUSH_BYTE
	.byte	69
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	56
	.byte	TOK_PUSH_BYTE
	.byte	70
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_107
@FastBasic_LINE_356:	; LINE 356
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_POKE
@FastBasic_LINE_357:	; LINE 357
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_1
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	68
	.byte	TOK_POKE
@FastBasic_LINE_358:	; LINE 358
	.export	jump_lbl_107
jump_lbl_107:
@FastBasic_LINE_359:	; LINE 359
	.byte	TOK_VAR_LOAD
	.byte	54
	.byte	TOK_PUSH_BYTE
	.byte	65
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	54
	.byte	TOK_PUSH_BYTE
	.byte	194
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_PUSH_VAR_LOAD
	.byte	40
	.byte	TOK_PUSH_BYTE
	.byte	67
	.byte	TOK_GT
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_108
@FastBasic_LINE_360:	; LINE 360
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	51
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	67
	.byte	TOK_POKE
@FastBasic_LINE_361:	; LINE 361
	.export	jump_lbl_108
jump_lbl_108:
@FastBasic_LINE_362:	; LINE 362
	.byte	TOK_0
	.byte	TOK_NUM_POKE
	.word	53278
@FastBasic_LINE_363:	; LINE 363
	.byte	TOK_VAR_STORE_0
	.byte	40
@FastBasic_LINE_364:	; LINE 364
	.byte	TOK_VAR_LOAD
	.byte	25
	.byte	TOK_PUSH_NUM
	.word	789
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_MOVE
@FastBasic_LINE_365:	; LINE 365
	.byte	TOK_VAR_LOAD
	.byte	25
	.byte	TOK_PUSH_NUM
	.word	797
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_MOVE
@FastBasic_LINE_366:	; LINE 366
	.byte	TOK_RET
@FastBasic_LINE_368:	; LINE 368
	.export	fb_lbl_BULLET_HIT_BUG
fb_lbl_BULLET_HIT_BUG:
@FastBasic_LINE_369:	; LINE 369
	.byte	TOK_NUM
	.word	53256
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_111
@FastBasic_LINE_370:	; LINE 370
	.byte	TOK_BYTE
	.byte	15
	.byte	TOK_NUM_POKE
	.word	705
	.byte	TOK_NUM
	.word	53766
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_DPOKE
	.byte	TOK_0
	.byte	TOK_NUM_POKE
	.word	AUDCTL
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_NUM_POKE
	.word	SKCTL
	.byte	TOK_VAR_LOAD
	.byte	4
	.byte	TOK_USR_ADDR
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_USR_PARAM
	.byte	TOK_BYTE
	.byte	18
	.byte	TOK_USR_PARAM
	.byte	TOK_NUM
	.word	1660
	.byte	TOK_ADD_VAR
	.byte	25
	.byte	TOK_USR_PARAM
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_USR_PARAM
	.byte	TOK_USR_CALL
	.byte	TOK_VAR_STORE
	.byte	45
@FastBasic_LINE_371:	; LINE 371
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_112
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	48
	.byte	TOK_VAR_STORE
	.byte	48
	.export	jump_lbl_112
jump_lbl_112:
@FastBasic_LINE_372:	; LINE 372
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_113
	.byte	TOK_BYTE
	.byte	10
	.byte	TOK_ADD_VAR
	.byte	48
	.byte	TOK_VAR_STORE
	.byte	48
	.export	jump_lbl_113
jump_lbl_113:
@FastBasic_LINE_373:	; LINE 373
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_114
	.byte	TOK_BYTE
	.byte	5
	.byte	TOK_ADD_VAR
	.byte	48
	.byte	TOK_VAR_STORE
	.byte	48
	.export	jump_lbl_114
jump_lbl_114:
@FastBasic_LINE_374:	; LINE 374
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_115
	.byte	TOK_BYTE
	.byte	25
	.byte	TOK_ADD_VAR
	.byte	48
	.byte	TOK_VAR_STORE
	.byte	48
	.export	jump_lbl_115
jump_lbl_115:
@FastBasic_LINE_375:	; LINE 375
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_116
	.byte	TOK_BYTE
	.byte	200
	.byte	TOK_ADD_VAR
	.byte	48
	.byte	TOK_VAR_STORE
	.byte	48
	.export	jump_lbl_116
jump_lbl_116:
@FastBasic_LINE_376:	; LINE 376
	.byte	TOK_VAR_LOAD
	.byte	44
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_117
	.byte	TOK_NUM
	.word	53760
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_DPOKE
	.byte	TOK_0
	.byte	TOK_NUM_POKE
	.word	AUDCTL
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_NUM_POKE
	.word	SKCTL
	.export	jump_lbl_117
jump_lbl_117:
	.byte	TOK_VAR_LOAD
	.byte	4
	.byte	TOK_USR_ADDR
	.byte	TOK_0
	.byte	TOK_USR_PARAM
	.byte	TOK_NUM
	.word	1616
	.byte	TOK_ADD_VAR
	.byte	25
	.byte	TOK_USR_PARAM
	.byte	TOK_BYTE
	.byte	48
	.byte	TOK_USR_PARAM
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_USR_PARAM
	.byte	TOK_USR_CALL
	.byte	TOK_VAR_STORE
	.byte	45
	.byte	TOK_BYTE
	.byte	100
	.byte	TOK_ADD_VAR
	.byte	48
	.byte	TOK_VAR_STORE
	.byte	48
	.byte	TOK_VAR_STORE_0
	.byte	44
	.byte	TOK_CALL
	.word	fb_lbl_DEFINE_1ST_BUG
	.byte	TOK_CALL
	.word	fb_lbl_DEFINE_2ND_BUG
@FastBasic_LINE_377:	; LINE 377
	.byte	TOK_CALL
	.word	fb_lbl_DEFINE_1ST_BUG
@FastBasic_LINE_378:	; LINE 378
	.export	jump_lbl_111
jump_lbl_111:
@FastBasic_LINE_379:	; LINE 379
	.byte	TOK_NUM
	.word	53256
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_118
@FastBasic_LINE_380:	; LINE 380
	.byte	TOK_BYTE
	.byte	15
	.byte	TOK_NUM_POKE
	.word	706
	.byte	TOK_NUM
	.word	53766
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_DPOKE
	.byte	TOK_0
	.byte	TOK_NUM_POKE
	.word	AUDCTL
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_NUM_POKE
	.word	SKCTL
	.byte	TOK_VAR_LOAD
	.byte	4
	.byte	TOK_USR_ADDR
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_USR_PARAM
	.byte	TOK_BYTE
	.byte	18
	.byte	TOK_USR_PARAM
	.byte	TOK_NUM
	.word	1660
	.byte	TOK_ADD_VAR
	.byte	25
	.byte	TOK_USR_PARAM
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_USR_PARAM
	.byte	TOK_USR_CALL
	.byte	TOK_VAR_STORE
	.byte	45
@FastBasic_LINE_381:	; LINE 381
	.byte	TOK_VAR_LOAD
	.byte	44
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_119
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	48
	.byte	TOK_VAR_STORE
	.byte	48
	.export	jump_lbl_119
jump_lbl_119:
@FastBasic_LINE_382:	; LINE 382
	.byte	TOK_VAR_LOAD
	.byte	44
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_120
	.byte	TOK_BYTE
	.byte	10
	.byte	TOK_ADD_VAR
	.byte	48
	.byte	TOK_VAR_STORE
	.byte	48
	.export	jump_lbl_120
jump_lbl_120:
@FastBasic_LINE_383:	; LINE 383
	.byte	TOK_VAR_LOAD
	.byte	44
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_121
	.byte	TOK_BYTE
	.byte	5
	.byte	TOK_ADD_VAR
	.byte	48
	.byte	TOK_VAR_STORE
	.byte	48
	.export	jump_lbl_121
jump_lbl_121:
@FastBasic_LINE_384:	; LINE 384
	.byte	TOK_VAR_LOAD
	.byte	44
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_122
	.byte	TOK_BYTE
	.byte	50
	.byte	TOK_ADD_VAR
	.byte	48
	.byte	TOK_VAR_STORE
	.byte	48
	.export	jump_lbl_122
jump_lbl_122:
@FastBasic_LINE_385:	; LINE 385
	.byte	TOK_CALL
	.word	fb_lbl_DEFINE_2ND_BUG
@FastBasic_LINE_386:	; LINE 386
	.export	jump_lbl_118
jump_lbl_118:
@FastBasic_LINE_387:	; LINE 387
	.byte	TOK_0
	.byte	TOK_NUM_POKE
	.word	53278
	.byte	TOK_NUM
	.word	768
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_POKE
	.byte	TOK_NUM
	.word	768
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_PUSH_NUM
	.word	769
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_PUSH_BYTE
	.byte	255
	.byte	TOK_MOVE
@FastBasic_LINE_388:	; LINE 388
	.byte	TOK_0
	.byte	TOK_NUM_POKE
	.word	53252
	.byte	TOK_VAR_STORE_0
	.byte	40
@FastBasic_LINE_389:	; LINE 389
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	50
	.byte	TOK_VAR_STORE
	.byte	50
@FastBasic_LINE_390:	; LINE 390
	.byte	TOK_VAR_LOAD
	.byte	50
	.byte	TOK_PUSH_BYTE
	.byte	9
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_123
@FastBasic_LINE_391:	; LINE 391
	.byte	TOK_VAR_LOAD
	.byte	27
	.byte	TOK_PUSH_VAR_LOAD
	.byte	27
	.byte	TOK_PUSH_BYTE
	.byte	10
	.byte	TOK_LT
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	27
@FastBasic_LINE_392:	; LINE 392
	.byte	TOK_1
	.byte	TOK_VAR_STORE
	.byte	50
@FastBasic_LINE_393:	; LINE 393
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_FIELD
@FastBasic_LINE_394:	; LINE 394
	.export	jump_lbl_123
jump_lbl_123:
@FastBasic_LINE_395:	; LINE 395
	.byte	TOK_VAR_LOAD
	.byte	48
	.byte	TOK_PUSH_VAR_LOAD
	.byte	47
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_124
@FastBasic_LINE_396:	; LINE 396
	.byte	TOK_NUM
	.word	1000
	.byte	TOK_ADD_VAR
	.byte	47
	.byte	TOK_VAR_STORE
	.byte	47
@FastBasic_LINE_397:	; LINE 397
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	49
	.byte	TOK_VAR_STORE
	.byte	49
@FastBasic_LINE_398:	; LINE 398
	.byte	TOK_VAR_LOAD
	.byte	4
	.byte	TOK_USR_ADDR
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_USR_PARAM
	.byte	TOK_BYTE
	.byte	48
	.byte	TOK_USR_PARAM
	.byte	TOK_NUM
	.word	1718
	.byte	TOK_ADD_VAR
	.byte	25
	.byte	TOK_USR_PARAM
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_USR_PARAM
	.byte	TOK_USR_CALL
	.byte	TOK_VAR_STORE
	.byte	45
@FastBasic_LINE_399:	; LINE 399
	.export	jump_lbl_124
jump_lbl_124:
@FastBasic_LINE_400:	; LINE 400
	.byte	TOK_CALL
	.word	fb_lbl_PRINT_SCORE
@FastBasic_LINE_401:	; LINE 401
	.byte	TOK_0
	.byte	TOK_NUM_POKE
	.word	53278
@FastBasic_LINE_402:	; LINE 402
	.byte	TOK_VAR_STORE_0
	.byte	40
@FastBasic_LINE_403:	; LINE 403
	.byte	TOK_VAR_LOAD
	.byte	25
	.byte	TOK_PUSH_NUM
	.word	789
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_MOVE
@FastBasic_LINE_404:	; LINE 404
	.byte	TOK_VAR_LOAD
	.byte	25
	.byte	TOK_PUSH_NUM
	.word	797
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_PUSH_VAR_LOAD
	.byte	52
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_MOVE
@FastBasic_LINE_405:	; LINE 405
	.byte	TOK_RET
@FastBasic_LINE_407:	; LINE 407
	.export	fb_lbl_BUG_GOT_PASSED
fb_lbl_BUG_GOT_PASSED:
@FastBasic_LINE_408:	; LINE 408
	.byte	TOK_VAR_LOAD
	.byte	4
	.byte	TOK_USR_ADDR
	.byte	TOK_1
	.byte	TOK_USR_PARAM
	.byte	TOK_BYTE
	.byte	40
	.byte	TOK_USR_PARAM
	.byte	TOK_NUM
	.word	1678
	.byte	TOK_ADD_VAR
	.byte	25
	.byte	TOK_USR_PARAM
	.byte	TOK_0
	.byte	TOK_USR_PARAM
	.byte	TOK_USR_CALL
	.byte	TOK_VAR_STORE
	.byte	45
@FastBasic_LINE_409:	; LINE 409
	.byte	TOK_DECVAR
	.byte	49
@FastBasic_LINE_410:	; LINE 410
	.byte	TOK_VAR_LOAD
	.byte	49
	.byte	TOK_PUSH_0
	.byte	TOK_LT
@FastBasic_LINE_411:	; LINE 411
	.byte	TOK_CNJUMP
	.word	fb_lbl_DISPLAY_GAME_OVER
@FastBasic_LINE_413:	; LINE 413
	.byte	TOK_CALL
	.word	fb_lbl_PRINT_SCORE
@FastBasic_LINE_414:	; LINE 414
	.byte	TOK_VAR_ADDR
	.byte	9
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $25, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_129
	.byte	TOK_CALL
	.word	fb_lbl_DEFINE_1ST_BUG
	.export	jump_lbl_129
jump_lbl_129:
@FastBasic_LINE_415:	; LINE 415
	.byte	TOK_VAR_ADDR
	.byte	15
	.byte	TOK_FP_LOAD
	.byte	TOK_FLOAT
	.byte	$40, $25, $00, $00, $00, $00
	.byte	TOK_FP_CMP
	.byte	TOK_GT
	.byte	TOK_CRET
	.byte	TOK_JUMP
	.word	fb_lbl_DEFINE_2ND_BUG
@FastBasic_LINE_419:	; LINE 419
	.export	fb_lbl_PRINT_SCORE
fb_lbl_PRINT_SCORE:
@FastBasic_LINE_420:	; LINE 420
	.byte	TOK_0
	.byte	TOK_PUSH_0
	.byte	TOK_POSITION
@FastBasic_LINE_421:	; LINE 421
	.byte	TOK_CSTRING
	.byte	6, "SCORE:"
	.byte	TOK_PRINT_STR
	.byte	TOK_VAR_LOAD
	.byte	48
	.byte	TOK_INT_STR
	.byte	TOK_PRINT_STR
	.byte	TOK_BYTE
	.byte	155
	.byte	TOK_PUT
@FastBasic_LINE_422:	; LINE 422
	.byte	TOK_BYTE
	.byte	20
	.byte	TOK_PUSH_0
	.byte	TOK_POSITION
@FastBasic_LINE_423:	; LINE 423
	.byte	TOK_CSTRING
	.byte	5, "PASS:"
	.byte	TOK_PRINT_STR
	.byte	TOK_VAR_LOAD
	.byte	49
	.byte	TOK_INT_STR
	.byte	TOK_PRINT_STR
	.byte	TOK_BYTE
	.byte	155
	.byte	TOK_PUT
@FastBasic_LINE_424:	; LINE 424
	.byte	TOK_BYTE
	.byte	30
	.byte	TOK_PUSH_0
	.byte	TOK_POSITION
@FastBasic_LINE_425:	; LINE 425
	.byte	TOK_CSTRING
	.byte	6, "LEVEL:"
	.byte	TOK_PRINT_STR
	.byte	TOK_VAR_LOAD
	.byte	27
	.byte	TOK_INT_STR
	.byte	TOK_PRINT_STR
	.byte	TOK_BYTE
	.byte	155
	.byte	TOK_PUT
@FastBasic_LINE_426:	; LINE 426
	.byte	TOK_RET
@FastBasic_LINE_428:	; LINE 428
	.export	fb_lbl_DRAW_FIELD
fb_lbl_DRAW_FIELD:
@FastBasic_LINE_429:	; LINE 429
	.byte	TOK_NUM
	.word	711
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	12
	.byte	TOK_PUSH_BYTE
	.byte	16
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_RAND
	.byte	TOK_ADD
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_POKE
@FastBasic_LINE_430:	; LINE 430
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	CLS
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_431:	; LINE 431
	.byte	TOK_VAR_SADDR
	.byte	60
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	22
	.byte	TOK_PUSH_1
	.byte	TOK_FOR
	.byte	TOK_CNJUMP
	.word	jump_lbl_135
	.export	jump_lbl_136
jump_lbl_136:
@FastBasic_LINE_432:	; LINE 432
	.byte	TOK_VAR_SADDR
	.byte	61
	.byte	TOK_PUSH_0
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_PUSH_1
	.byte	TOK_FOR
	.byte	TOK_CNJUMP
	.word	jump_lbl_137
	.export	jump_lbl_138
jump_lbl_138:
@FastBasic_LINE_433:	; LINE 433
	.byte	TOK_BYTE
	.byte	40
	.byte	TOK_RAND
	.byte	TOK_VAR_STORE
	.byte	62
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	53
	.byte	TOK_RAND
	.byte	TOK_PUSH_1
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	63
@FastBasic_LINE_434:	; LINE 434
	.byte	TOK_VAR_LOAD
	.byte	63
	.byte	TOK_COMP_0
	.byte	TOK_CNJUMP
	.word	jump_lbl_139
@FastBasic_LINE_435:	; LINE 435
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_0
@FastBasic_LINE_436:	; LINE 436
	.byte	TOK_JUMP
	.word	jump_lbl_140
	.export	jump_lbl_139
jump_lbl_139:
	.byte	TOK_VAR_LOAD
	.byte	63
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_141
@FastBasic_LINE_437:	; LINE 437
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_1
@FastBasic_LINE_438:	; LINE 438
	.byte	TOK_JUMP
	.word	jump_lbl_140
	.export	jump_lbl_141
jump_lbl_141:
	.byte	TOK_VAR_LOAD
	.byte	63
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_140
@FastBasic_LINE_439:	; LINE 439
	.byte	TOK_CALL
	.word	fb_lbl_DRAW_PIECE_2
@FastBasic_LINE_440:	; LINE 440
	.export	jump_lbl_140
jump_lbl_140:
@FastBasic_LINE_441:	; LINE 441
	.byte	TOK_1
	.byte	TOK_VAR_STORE
	.byte	53
@FastBasic_LINE_442:	; LINE 442
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_138
	.export	jump_lbl_137
jump_lbl_137:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_443:	; LINE 443
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_136
	.export	jump_lbl_135
jump_lbl_135:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_444:	; LINE 444
	.byte	TOK_CALL
	.word	fb_lbl_DEFINE_1ST_BUG
	.byte	TOK_JUMP
	.word	fb_lbl_DEFINE_2ND_BUG
@FastBasic_LINE_448:	; LINE 448
	.export	fb_lbl_DRAW_PIECE_0
fb_lbl_DRAW_PIECE_0:
@FastBasic_LINE_449:	; LINE 449
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	62
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	60
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	67
	.byte	TOK_POKE
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	62
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	60
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	65
	.byte	TOK_POKE
@FastBasic_LINE_450:	; LINE 450
	.byte	TOK_RET
@FastBasic_LINE_452:	; LINE 452
	.export	fb_lbl_DRAW_PIECE_1
fb_lbl_DRAW_PIECE_1:
@FastBasic_LINE_453:	; LINE 453
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	62
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	60
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	67
	.byte	TOK_POKE
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	62
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	60
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	194
	.byte	TOK_POKE
@FastBasic_LINE_454:	; LINE 454
	.byte	TOK_RET
@FastBasic_LINE_456:	; LINE 456
	.export	fb_lbl_DRAW_PIECE_2
fb_lbl_DRAW_PIECE_2:
@FastBasic_LINE_457:	; LINE 457
	.byte	TOK_VAR_LOAD
	.byte	62
	.byte	TOK_INT_FP
	.byte	TOK_FLOAT
	.byte	$3F, $75, $00, $00, $00, $00
	.byte	TOK_FP_MUL
	.byte	TOK_FP_INT
	.byte	TOK_VAR_STORE
	.byte	62
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_RAND
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	63
@FastBasic_LINE_458:	; LINE 458
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	62
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	60
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	67
	.byte	TOK_NEQ
	.byte	TOK_CJUMP
	.word	jump_lbl_150
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	62
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	60
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	68
	.byte	TOK_POKE
	.export	jump_lbl_150
jump_lbl_150:
@FastBasic_LINE_459:	; LINE 459
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	62
	.byte	TOK_ADD_VAR
	.byte	63
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	60
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	67
	.byte	TOK_NEQ
	.byte	TOK_CJUMP
	.word	jump_lbl_151
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	62
	.byte	TOK_ADD_VAR
	.byte	63
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	60
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	71
	.byte	TOK_POKE
	.export	jump_lbl_151
jump_lbl_151:
@FastBasic_LINE_460:	; LINE 460
	.byte	TOK_VAR_SADDR
	.byte	46
	.byte	TOK_PUSH_1
	.byte	TOK_DPOKE
	.byte	TOK_VAR_LOAD
	.byte	63
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_PUSH_1
	.byte	TOK_FOR
	.byte	TOK_CNJUMP
	.word	jump_lbl_152
	.export	jump_lbl_153
jump_lbl_153:
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	62
	.byte	TOK_ADD_VAR
	.byte	46
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	60
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	67
	.byte	TOK_NEQ
	.byte	TOK_CJUMP
	.word	jump_lbl_154
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	62
	.byte	TOK_ADD_VAR
	.byte	46
	.byte	TOK_PUSH_BYTE
	.byte	40
	.byte	TOK_PUSH_VAR_LOAD
	.byte	60
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	69
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_RAND
	.byte	TOK_ADD
	.byte	TOK_POKE
	.export	jump_lbl_154
jump_lbl_154:
@FastBasic_LINE_461:	; LINE 461
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_153
	.export	jump_lbl_152
jump_lbl_152:
	.byte	TOK_FOR_EXIT
	.byte	TOK_VAR_STORE_0
	.byte	53
	.byte	TOK_VAR_STORE_0
	.byte	46
@FastBasic_LINE_462:	; LINE 462
	.byte	TOK_RET
@FastBasic_LINE_464:	; LINE 464
	.export	fb_lbl_DEFINE_1ST_BUG
fb_lbl_DEFINE_1ST_BUG:
@FastBasic_LINE_465:	; LINE 465
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_RAND
	.byte	TOK_PUSH_1
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	43
	.byte	TOK_NUM
	.word	1280
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_POKE
	.byte	TOK_NUM
	.word	1280
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_PUSH_NUM
	.word	1281
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_PUSH_BYTE
	.byte	255
	.byte	TOK_MOVE
@FastBasic_LINE_466:	; LINE 466
	.byte	TOK_VAR_LOAD
	.byte	44
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	6
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_CJUMP
	.word	jump_lbl_157
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_VAR_STORE
	.byte	43
	.export	jump_lbl_157
jump_lbl_157:
@FastBasic_LINE_467:	; LINE 467
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_158
	.byte	TOK_VAR_SADDR
	.byte	6
	.byte	TOK_BYTE
	.byte	40
	.byte	TOK_RAND
	.byte	TOK_INT_FP
	.byte	TOK_FP_STORE
	.export	jump_lbl_158
jump_lbl_158:
	.byte	TOK_VAR_SADDR
	.byte	9
	.byte	TOK_FLOAT
	.byte	$40, $02, $00, $00, $00, $00
	.byte	TOK_FP_STORE
	.byte	TOK_VAR_SADDR
	.byte	18
	.byte	TOK_FLOAT
	.byte	$C0, $01, $00, $00, $00, $00
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_RAND
	.byte	TOK_USHL
	.byte	TOK_INT_FP
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
	.byte	TOK_BYTE
	.byte	48
	.byte	TOK_NUM_POKE
	.word	705
@FastBasic_LINE_468:	; LINE 468
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_159
	.byte	TOK_VAR_SADDR
	.byte	6
	.byte	TOK_BYTE
	.byte	40
	.byte	TOK_RAND
	.byte	TOK_INT_FP
	.byte	TOK_FP_STORE
	.export	jump_lbl_159
jump_lbl_159:
	.byte	TOK_VAR_SADDR
	.byte	9
	.byte	TOK_FLOAT
	.byte	$40, $02, $00, $00, $00, $00
	.byte	TOK_FP_STORE
	.byte	TOK_VAR_SADDR
	.byte	18
	.byte	TOK_FLOAT
	.byte	$C0, $01, $00, $00, $00, $00
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_RAND
	.byte	TOK_USHL
	.byte	TOK_INT_FP
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
	.byte	TOK_BYTE
	.byte	240
	.byte	TOK_NUM_POKE
	.word	705
@FastBasic_LINE_469:	; LINE 469
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_160
	.byte	TOK_VAR_SADDR
	.byte	6
	.byte	TOK_BYTE
	.byte	40
	.byte	TOK_RAND
	.byte	TOK_INT_FP
	.byte	TOK_FP_STORE
	.export	jump_lbl_160
jump_lbl_160:
	.byte	TOK_VAR_SADDR
	.byte	9
	.byte	TOK_FLOAT
	.byte	$40, $02, $00, $00, $00, $00
	.byte	TOK_FP_STORE
	.byte	TOK_VAR_SADDR
	.byte	18
	.byte	TOK_FLOAT
	.byte	$C0, $01, $00, $00, $00, $00
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_RAND
	.byte	TOK_USHL
	.byte	TOK_INT_FP
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
	.byte	TOK_BYTE
	.byte	70
	.byte	TOK_NUM_POKE
	.word	705
@FastBasic_LINE_470:	; LINE 470
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_161
	.byte	TOK_VAR_SADDR
	.byte	6
	.byte	TOK_BYTE
	.byte	20
	.byte	TOK_RAND
	.byte	TOK_USHL
	.byte	TOK_INT_FP
	.byte	TOK_FP_STORE
	.export	jump_lbl_161
jump_lbl_161:
	.byte	TOK_VAR_SADDR
	.byte	9
	.byte	TOK_FLOAT
	.byte	$40, $02, $00, $00, $00, $00
	.byte	TOK_FP_STORE
	.byte	TOK_VAR_SADDR
	.byte	18
	.byte	TOK_FLOAT
	.byte	$C0, $01, $00, $00, $00, $00
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_RAND
	.byte	TOK_USHL
	.byte	TOK_INT_FP
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
	.byte	TOK_BYTE
	.byte	104
	.byte	TOK_NUM_POKE
	.word	705
@FastBasic_LINE_471:	; LINE 471
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_162
	.byte	TOK_VAR_SADDR
	.byte	18
	.byte	TOK_FLOAT
	.byte	$C0, $01, $00, $00, $00, $00
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_RAND
	.byte	TOK_USHL
	.byte	TOK_INT_FP
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
	.export	jump_lbl_162
jump_lbl_162:
	.byte	TOK_BYTE
	.byte	40
	.byte	TOK_NUM_POKE
	.word	705
	.byte	TOK_VAR_SADDR
	.byte	6
	.byte	TOK_FLOAT
	.byte	$40, $19, $50, $00, $00, $00
	.byte	TOK_FLOAT
	.byte	$40, $19, $50, $00, $00, $00
	.byte	TOK_VAR_ADDR
	.byte	18
	.byte	TOK_FP_LOAD
	.byte	TOK_FP_MUL
	.byte	TOK_FP_SUB
	.byte	TOK_FP_STORE
	.byte	TOK_VAR_SADDR
	.byte	9
	.byte	TOK_FLOAT
	.byte	$40, $03, $00, $00, $00, $00
	.byte	TOK_BYTE
	.byte	12
	.byte	TOK_RAND
	.byte	TOK_INT_FP
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
@FastBasic_LINE_472:	; LINE 472
	.byte	TOK_RET
@FastBasic_LINE_474:	; LINE 474
	.export	fb_lbl_DEFINE_2ND_BUG
fb_lbl_DEFINE_2ND_BUG:
@FastBasic_LINE_475:	; LINE 475
	.byte	TOK_BYTE
	.byte	4
	.byte	TOK_RAND
	.byte	TOK_PUSH_1
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	44
	.byte	TOK_NUM
	.word	1536
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_POKE
	.byte	TOK_NUM
	.word	1536
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_PUSH_NUM
	.word	1537
	.byte	TOK_ADD_VAR
	.byte	1
	.byte	TOK_PUSH_BYTE
	.byte	255
	.byte	TOK_MOVE
	.byte	TOK_VAR_LOAD
	.byte	43
	.byte	TOK_PUSH_BYTE
	.byte	6
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_165
	.byte	TOK_BYTE
	.byte	5
	.byte	TOK_VAR_STORE
	.byte	44
	.export	jump_lbl_165
jump_lbl_165:
	.byte	TOK_VAR_STORE_0
	.byte	43
@FastBasic_LINE_476:	; LINE 476
	.byte	TOK_VAR_LOAD
	.byte	44
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_166
	.byte	TOK_VAR_SADDR
	.byte	12
	.byte	TOK_BYTE
	.byte	40
	.byte	TOK_RAND
	.byte	TOK_INT_FP
	.byte	TOK_FP_STORE
	.export	jump_lbl_166
jump_lbl_166:
	.byte	TOK_VAR_SADDR
	.byte	15
	.byte	TOK_FLOAT
	.byte	$40, $02, $00, $00, $00, $00
	.byte	TOK_FP_STORE
	.byte	TOK_VAR_SADDR
	.byte	21
	.byte	TOK_FLOAT
	.byte	$C0, $01, $00, $00, $00, $00
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_RAND
	.byte	TOK_USHL
	.byte	TOK_INT_FP
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
	.byte	TOK_BYTE
	.byte	48
	.byte	TOK_NUM_POKE
	.word	706
@FastBasic_LINE_477:	; LINE 477
	.byte	TOK_VAR_LOAD
	.byte	44
	.byte	TOK_PUSH_BYTE
	.byte	2
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_167
	.byte	TOK_VAR_SADDR
	.byte	12
	.byte	TOK_BYTE
	.byte	40
	.byte	TOK_RAND
	.byte	TOK_INT_FP
	.byte	TOK_FP_STORE
	.export	jump_lbl_167
jump_lbl_167:
	.byte	TOK_VAR_SADDR
	.byte	15
	.byte	TOK_FLOAT
	.byte	$40, $02, $00, $00, $00, $00
	.byte	TOK_FP_STORE
	.byte	TOK_VAR_SADDR
	.byte	21
	.byte	TOK_FLOAT
	.byte	$C0, $01, $00, $00, $00, $00
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_RAND
	.byte	TOK_USHL
	.byte	TOK_INT_FP
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
	.byte	TOK_BYTE
	.byte	240
	.byte	TOK_NUM_POKE
	.word	706
@FastBasic_LINE_478:	; LINE 478
	.byte	TOK_VAR_LOAD
	.byte	44
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_168
	.byte	TOK_VAR_SADDR
	.byte	12
	.byte	TOK_BYTE
	.byte	40
	.byte	TOK_RAND
	.byte	TOK_INT_FP
	.byte	TOK_FP_STORE
	.export	jump_lbl_168
jump_lbl_168:
	.byte	TOK_VAR_SADDR
	.byte	15
	.byte	TOK_FLOAT
	.byte	$40, $02, $00, $00, $00, $00
	.byte	TOK_FP_STORE
	.byte	TOK_VAR_SADDR
	.byte	21
	.byte	TOK_FLOAT
	.byte	$C0, $01, $00, $00, $00, $00
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_RAND
	.byte	TOK_USHL
	.byte	TOK_INT_FP
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
	.byte	TOK_BYTE
	.byte	70
	.byte	TOK_NUM_POKE
	.word	706
@FastBasic_LINE_479:	; LINE 479
	.byte	TOK_VAR_LOAD
	.byte	44
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_169
	.byte	TOK_VAR_SADDR
	.byte	12
	.byte	TOK_FLOAT
	.byte	$40, $01, $00, $00, $00, $00
	.byte	TOK_BYTE
	.byte	18
	.byte	TOK_RAND
	.byte	TOK_USHL
	.byte	TOK_INT_FP
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
	.export	jump_lbl_169
jump_lbl_169:
	.byte	TOK_VAR_SADDR
	.byte	15
	.byte	TOK_FLOAT
	.byte	$00, $00, $00, $00, $00, $00
	.byte	TOK_FP_STORE
	.byte	TOK_VAR_SADDR
	.byte	21
	.byte	TOK_FLOAT
	.byte	$C0, $01, $00, $00, $00, $00
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_RAND
	.byte	TOK_USHL
	.byte	TOK_INT_FP
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
	.byte	TOK_BYTE
	.byte	18
	.byte	TOK_NUM_POKE
	.word	706
@FastBasic_LINE_480:	; LINE 480
	.byte	TOK_VAR_LOAD
	.byte	44
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_170
	.byte	TOK_VAR_SADDR
	.byte	12
	.byte	TOK_FLOAT
	.byte	$40, $10, $00, $00, $00, $00
	.byte	TOK_BYTE
	.byte	20
	.byte	TOK_RAND
	.byte	TOK_INT_FP
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
	.export	jump_lbl_170
jump_lbl_170:
	.byte	TOK_VAR_SADDR
	.byte	15
	.byte	TOK_FLOAT
	.byte	$C0, $01, $00, $00, $00, $00
	.byte	TOK_FP_STORE
	.byte	TOK_VAR_SADDR
	.byte	21
	.byte	TOK_FLOAT
	.byte	$40, $04, $00, $00, $00, $00
	.byte	TOK_FP_STORE
	.byte	TOK_VAR_SADDR
	.byte	9
	.byte	TOK_FLOAT
	.byte	$40, $02, $00, $00, $00, $00
	.byte	TOK_BYTE
	.byte	5
	.byte	TOK_RAND
	.byte	TOK_INT_FP
	.byte	TOK_FP_ADD
	.byte	TOK_FP_STORE
	.byte	TOK_BYTE
	.byte	202
	.byte	TOK_NUM_POKE
	.word	705
@FastBasic_LINE_481:	; LINE 481
	.byte	TOK_RET
@FastBasic_LINE_483:	; LINE 483
	.export	fb_lbl_DISPLAY_GAME_OVER
fb_lbl_DISPLAY_GAME_OVER:
@FastBasic_LINE_484:	; LINE 484
	.byte	TOK_VAR_SADDR
	.byte	60
	.byte	TOK_PUSH_0
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	9
	.byte	TOK_PUSH_1
	.byte	TOK_FOR
	.byte	TOK_CNJUMP
	.word	jump_lbl_173
	.export	jump_lbl_174
jump_lbl_174:
	.byte	TOK_BYTE
	.byte	12
	.byte	TOK_PUSH_BYTE
	.byte	12
	.byte	TOK_POSITION
	.byte	TOK_CSTRING
	.byte	21, "                    ", 155
	.byte	TOK_PRINT_STR
	.byte	TOK_BYTE
	.byte	10
	.byte	TOK_PAUSE
@FastBasic_LINE_485:	; LINE 485
	.byte	TOK_BYTE
	.byte	12
	.byte	TOK_PUSH_BYTE
	.byte	12
	.byte	TOK_POSITION
	.byte	TOK_CSTRING
	.byte	21, "G A M E      O V E R", 155
	.byte	TOK_PRINT_STR
	.byte	TOK_BYTE
	.byte	10
	.byte	TOK_PAUSE
@FastBasic_LINE_486:	; LINE 486
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_174
	.export	jump_lbl_173
jump_lbl_173:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_487:	; LINE 487
	.byte	TOK_VAR_LOAD
	.byte	48
	.byte	TOK_PUSH_VAR_LOAD
	.byte	28
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_175
@FastBasic_LINE_488:	; LINE 488
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_VAR_STORE
	.byte	30
	.byte	TOK_VAR_LOAD
	.byte	28
	.byte	TOK_VAR_STORE
	.byte	29
	.byte	TOK_VAR_LOAD
	.byte	48
	.byte	TOK_VAR_STORE
	.byte	28
@FastBasic_LINE_489:	; LINE 489
	.byte	TOK_RET
	.export	jump_lbl_175
jump_lbl_175:
	.byte	TOK_VAR_LOAD
	.byte	48
	.byte	TOK_PUSH_VAR_LOAD
	.byte	29
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_177
@FastBasic_LINE_490:	; LINE 490
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_VAR_STORE
	.byte	30
	.byte	TOK_VAR_LOAD
	.byte	48
	.byte	TOK_VAR_STORE
	.byte	29
@FastBasic_LINE_491:	; LINE 491
	.byte	TOK_RET
	.export	jump_lbl_177
jump_lbl_177:
	.byte	TOK_VAR_LOAD
	.byte	48
	.byte	TOK_PUSH_VAR_LOAD
	.byte	30
	.byte	TOK_GT
	.byte	TOK_CRET
@FastBasic_LINE_492:	; LINE 492
	.byte	TOK_VAR_LOAD
	.byte	48
	.byte	TOK_VAR_STORE
	.byte	30
@FastBasic_LINE_494:	; LINE 494
	.byte	TOK_RET
@FastBasic_LINE_496:	; LINE 496
	.export	fb_lbl_DISPLAY_TITLE
fb_lbl_DISPLAY_TITLE:
@FastBasic_LINE_497:	; LINE 497
	.byte	TOK_BYTE
	.byte	28
	.byte	TOK_VAR_STORE
	.byte	64
	.byte	TOK_1
	.byte	TOK_VAR_STORE
	.byte	65
	.byte	TOK_CALL
	.word	fb_lbl_GRAPHICS
	.byte	TOK_BYTE
	.byte	128
	.byte	TOK_NUM_POKE
	.word	712
	.byte	TOK_BYTE
	.byte	140
	.byte	TOK_NUM_POKE
	.word	710
	.byte	TOK_BYTE
	.byte	68
	.byte	TOK_NUM_POKE
	.word	709
	.byte	TOK_BYTE
	.byte	218
	.byte	TOK_NUM_POKE
	.word	711
@FastBasic_LINE_498:	; LINE 498
	.byte	TOK_BYTE
	.byte	12
	.byte	TOK_PUSH_BYTE
	.byte	3
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_CSTRING
	.byte	20, "B U G   I N V A D E", 155
	.byte	TOK_PRINT_STR
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_BYTE
	.byte	22
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_CSTRING
	.byte	18, "By Peter J. Meyer", 155
	.byte	TOK_PRINT_STR
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_NUM
	.word	560
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	5
	.byte	TOK_POKE
@FastBasic_LINE_499:	; LINE 499
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_PUSH_BYTE
	.byte	8
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_CSTRING
	.byte	11, "Your score:"
	.byte	TOK_PRINT_STR
	.byte	TOK_VAR_LOAD
	.byte	48
	.byte	TOK_INT_STR
	.byte	TOK_PRINT_STR
	.byte	TOK_BYTE
	.byte	155
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_500:	; LINE 500
	.byte	TOK_0
	.byte	TOK_PUSH_BYTE
	.byte	10
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_CSTRING
	.byte	13, "High scores:", 155
	.byte	TOK_PRINT_STR
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_501:	; LINE 501
	.byte	TOK_BYTE
	.byte	12
	.byte	TOK_PUSH_BYTE
	.byte	10
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_VAR_LOAD
	.byte	28
	.byte	TOK_INT_STR
	.byte	TOK_PRINT_STR
	.byte	TOK_BYTE
	.byte	155
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_502:	; LINE 502
	.byte	TOK_BYTE
	.byte	9
	.byte	TOK_PUSH_BYTE
	.byte	11
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_CSTRING
	.byte	4, "2nd:"
	.byte	TOK_PRINT_STR
	.byte	TOK_VAR_LOAD
	.byte	29
	.byte	TOK_INT_STR
	.byte	TOK_PRINT_STR
	.byte	TOK_BYTE
	.byte	155
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_503:	; LINE 503
	.byte	TOK_BYTE
	.byte	10
	.byte	TOK_PUSH_BYTE
	.byte	12
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_CSTRING
	.byte	4, "3rd:"
	.byte	TOK_PRINT_STR
	.byte	TOK_VAR_LOAD
	.byte	30
	.byte	TOK_INT_STR
	.byte	TOK_PRINT_STR
	.byte	TOK_BYTE
	.byte	155
	.byte	TOK_PUT
	.byte	TOK_0
	.byte	TOK_IOCHN
@FastBasic_LINE_504:	; LINE 504
	.byte	TOK_0
	.byte	TOK_PUSH_BYTE
	.byte	20
	.byte	TOK_POSITION
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_IOCHN
	.byte	TOK_CSTRING
	.byte	40, " Press START or FIRE to play begin game", 155
	.byte	TOK_PRINT_STR
	.byte	TOK_0
	.byte	TOK_IOCHN
	.byte	TOK_NUM
	.word	560
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_BYTE
	.byte	25
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_POKE
@FastBasic_LINE_506:	; LINE 506
	.export	jump_lbl_182
jump_lbl_182:
@FastBasic_LINE_507:	; LINE 507
	.byte	TOK_NUM
	.word	53279
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	6
	.byte	TOK_EQ
	.byte	TOK_PUSH_NUM
	.word	644
	.byte	TOK_PEEK
	.byte	TOK_COMP_0
	.byte	TOK_L_NOT
	.byte	TOK_L_OR
	.byte	TOK_CJUMP
	.word	jump_lbl_182
@FastBasic_LINE_508:	; LINE 508
	.byte	TOK_BYTE
	.byte	128
	.byte	TOK_VAR_STORE
	.byte	64
	.byte	TOK_1
	.byte	TOK_VAR_STORE
	.byte	65
	.byte	TOK_JUMP
	.word	fb_lbl_GRAPHICS
@FastBasic_LINE_518:	; LINE 518
	.export	fb_lbl_LOAD_AND_SET_UP
fb_lbl_LOAD_AND_SET_UP:
@FastBasic_LINE_519:	; LINE 519
	.byte	TOK_BYTE
	.byte	106
	.byte	TOK_SADDR
	.byte	TOK_BYTE_PEEK
	.byte	106
	.byte	TOK_PUSH_BYTE
	.byte	16
	.byte	TOK_SUB
	.byte	TOK_POKE
	.byte	TOK_0
	.byte	TOK_PMGRAPHICS
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_CLOSE
	.byte	TOK_0
	.byte	TOK_GRAPHICS
@FastBasic_LINE_520:	; LINE 520
	.byte	TOK_1
	.byte	TOK_PUSH_BYTE
	.byte	OPEN
	.byte	TOK_PUSH_BYTE
	.byte	4
	.byte	TOK_PUSH
	.byte	TOK_CSTRING
	.byte	14, "D:BUGINVDE.DAT"
	.byte	TOK_XIO
@FastBasic_LINE_521:	; LINE 521
	.byte	TOK_BYTE_PEEK
	.byte	106
	.byte	TOK_PUSH_NUM
	.word	256
	.byte	TOK_MUL
	.byte	TOK_VAR_STORE
	.byte	25
	.byte	TOK_1
	.byte	TOK_PUSH_VAR_LOAD
	.byte	25
	.byte	TOK_PUSH_NUM
	.word	4095
	.byte	TOK_BGET
	.byte	TOK_NUM
	.word	3842
	.byte	TOK_ADD_VAR
	.byte	25
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	64
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_BYTE
	.byte	64
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_185
	.byte	TOK_1
	.byte	TOK_PUSH_NUM
	.word	1536
	.byte	TOK_PUSH_BYTE
	.byte	255
	.byte	TOK_BGET
	.export	jump_lbl_185
jump_lbl_185:
@FastBasic_LINE_522:	; LINE 522
	.byte	TOK_NUM
	.word	1703
	.byte	TOK_VAR_STORE
	.byte	4
@FastBasic_LINE_523:	; LINE 523
	.byte	TOK_NUM
	.word	1742
	.byte	TOK_VAR_STORE
	.byte	5
@FastBasic_LINE_524:	; LINE 524
	.byte	TOK_NUM
	.word	1565
	.byte	TOK_USR_ADDR
	.byte	TOK_USR_CALL
	.byte	TOK_VAR_STORE
	.byte	45
@FastBasic_LINE_525:	; LINE 525
	.byte	TOK_1
	.byte	TOK_CLOSE
	.byte	TOK_NUM
	.word	4074
	.byte	TOK_ADD_VAR
	.byte	25
	.byte	TOK_SADDR
	.byte	TOK_NUM
	.word	4074
	.byte	TOK_ADD_VAR
	.byte	25
	.byte	TOK_DPEEK
	.byte	TOK_ADD_VAR
	.byte	25
	.byte	TOK_DPOKE
	.byte	TOK_NUM
	.word	4083
	.byte	TOK_ADD_VAR
	.byte	25
	.byte	TOK_SADDR
	.byte	TOK_NUM
	.word	4083
	.byte	TOK_ADD_VAR
	.byte	25
	.byte	TOK_DPEEK
	.byte	TOK_ADD_VAR
	.byte	25
	.byte	TOK_DPOKE
@FastBasic_LINE_526:	; LINE 526
	.byte	TOK_NUM
	.word	1024
	.byte	TOK_ADD_VAR
	.byte	25
	.byte	TOK_VAR_STORE
	.byte	2
@FastBasic_LINE_527:	; LINE 527
	.byte	TOK_NUM
	.word	3639
	.byte	TOK_ADD_VAR
	.byte	25
	.byte	TOK_VAR_STORE
	.byte	66
@FastBasic_LINE_528:	; LINE 528
	.byte	TOK_NUM
	.word	3885
	.byte	TOK_ADD_VAR
	.byte	25
	.byte	TOK_VAR_STORE
	.byte	67
@FastBasic_LINE_529:	; LINE 529
	.byte	TOK_NUM
	.word	3861
	.byte	TOK_ADD_VAR
	.byte	25
	.byte	TOK_VAR_STORE
	.byte	24
@FastBasic_LINE_530:	; LINE 530
	.byte	TOK_NUM
	.word	3840
	.byte	TOK_ADD_VAR
	.byte	25
	.byte	TOK_PEEK
	.byte	TOK_VAR_STORE
	.byte	64
	.byte	TOK_1
	.byte	TOK_VAR_STORE
	.byte	65
	.byte	TOK_CALL
	.word	fb_lbl_GRAPHICS
@FastBasic_LINE_531:	; LINE 531
	.byte	TOK_NUM
	.word	3189
	.byte	TOK_ADD_VAR
	.byte	25
	.byte	TOK_VAR_STORE
	.byte	3
@FastBasic_LINE_532:	; LINE 532
	.byte	TOK_BYTE
	.byte	122
	.byte	TOK_NUM_POKE
	.word	600
	.byte	TOK_BYTE
	.byte	197
	.byte	TOK_NUM_POKE
	.word	601
	.byte	TOK_BYTE
	.byte	4
	.byte	TOK_NUM_POKE
	.word	602
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_NUM_POKE
	.word	603
	.byte	TOK_BYTE
	.byte	46
	.byte	TOK_NUM_POKE
	.word	604
	.byte	TOK_BYTE
	.byte	202
	.byte	TOK_NUM_POKE
	.word	605
	.byte	TOK_BYTE
	.byte	197
	.byte	TOK_NUM_POKE
	.word	606
	.byte	TOK_BYTE
	.byte	229
	.byte	TOK_NUM_POKE
	.word	607
@FastBasic_LINE_533:	; LINE 533
	.byte	TOK_RET
@FastBasic_LINE_535:	; LINE 535
	.export	fb_lbl_GRAPHICS
fb_lbl_GRAPHICS:
@FastBasic_LINE_536:	; LINE 536
	.byte	TOK_VAR_LOAD
	.byte	65
	.byte	TOK_PUSH_1
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_188
@FastBasic_LINE_537:	; LINE 537
	.byte	TOK_BYTE
	.byte	8
	.byte	TOK_VAR_STORE
	.byte	68
@FastBasic_LINE_538:	; LINE 538
	.byte	TOK_BYTE
	.byte	60
	.byte	TOK_PUSH_NUM
	.word	3841
	.byte	TOK_ADD_VAR
	.byte	25
	.byte	TOK_PEEK
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	69
@FastBasic_LINE_539:	; LINE 539
	.export	jump_lbl_188
jump_lbl_188:
@FastBasic_LINE_540:	; LINE 540
	.byte	TOK_BYTE
	.byte	106
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	25
	.byte	TOK_PUSH_VAR_LOAD
	.byte	68
	.byte	TOK_PUSH_NUM
	.word	256
	.byte	TOK_MUL
	.byte	TOK_SUB
	.byte	TOK_INT_FP
	.byte	TOK_FLOAT
	.byte	$41, $02, $56, $00, $00, $00
	.byte	TOK_FP_DIV
	.byte	TOK_FP_INT
	.byte	TOK_POKE
@FastBasic_LINE_541:	; LINE 541
	.byte	TOK_NUM
	.word	3842
	.byte	TOK_ADD_VAR
	.byte	25
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	128
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_BYTE
	.byte	128
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	1
	.byte	TOK_COMP_0
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_189
@FastBasic_LINE_542:	; LINE 542
	.byte	TOK_VAR_LOAD
	.byte	1
	.byte	TOK_PUSH_NUM
	.word	256
	.byte	TOK_PUSH
	.byte	TOK_BYTE_PEEK
	.byte	106
	.byte	TOK_MUL
	.byte	TOK_PUSH_NUM
	.word	256
	.byte	TOK_PUSH_VAR_LOAD
	.byte	68
	.byte	TOK_MUL
	.byte	TOK_MOVE
@FastBasic_LINE_543:	; LINE 543
	.export	jump_lbl_189
jump_lbl_189:
@FastBasic_LINE_544:	; LINE 544
	.byte	TOK_0
	.byte	TOK_BYTE_POKE
	.byte	82
	.byte	TOK_1
	.byte	TOK_NUM_POKE
	.word	751
	.byte	TOK_VAR_LOAD
	.byte	64
	.byte	TOK_PUSH_BYTE
	.byte	127
	.byte	TOK_GT
	.byte	TOK_CJUMP
	.word	jump_lbl_190
	.byte	TOK_0
	.byte	TOK_PMGRAPHICS
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_CLOSE
	.byte	TOK_0
	.byte	TOK_GRAPHICS
	.byte	TOK_JUMP
	.word	jump_lbl_191
	.export	jump_lbl_190
jump_lbl_190:
	.byte	TOK_0
	.byte	TOK_PMGRAPHICS
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_CLOSE
	.byte	TOK_VAR_LOAD
	.byte	64
	.byte	TOK_GRAPHICS
	.export	jump_lbl_191
jump_lbl_191:
@FastBasic_LINE_545:	; LINE 545
	.byte	TOK_BYTE
	.byte	4
	.byte	TOK_NUM_POKE
	.word	623
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_NUM_POKE
	.word	53277
	.byte	TOK_BYTE_PEEK
	.byte	106
	.byte	TOK_PUSH_NUM
	.word	256
	.byte	TOK_MUL
	.byte	TOK_VAR_STORE
	.byte	1
	.byte	TOK_NUM
	.word	3842
	.byte	TOK_ADD_VAR
	.byte	25
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	128
	.byte	TOK_BIT_AND
	.byte	TOK_COMP_0
	.byte	TOK_CNJUMP
	.word	jump_lbl_192
	.byte	TOK_VAR_LOAD
	.byte	24
	.byte	TOK_USR_ADDR
	.byte	TOK_VAR_LOAD
	.byte	68
	.byte	TOK_USR_PARAM
	.byte	TOK_VAR_LOAD
	.byte	1
	.byte	TOK_USR_PARAM
	.byte	TOK_USR_CALL
	.byte	TOK_VAR_STORE
	.byte	45
	.export	jump_lbl_192
jump_lbl_192:
@FastBasic_LINE_546:	; LINE 546
	.byte	TOK_NUM
	.word	54279
	.byte	TOK_SADDR
	.byte	TOK_BYTE_PEEK
	.byte	106
	.byte	TOK_POKE
	.byte	TOK_NUM
	.word	559
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	69
	.byte	TOK_POKE
	.byte	TOK_NUM
	.word	3850
	.byte	TOK_ADD_VAR
	.byte	25
	.byte	TOK_PUSH_NUM
	.word	704
	.byte	TOK_PUSH_BYTE
	.byte	9
	.byte	TOK_MOVE
	.byte	TOK_NUM
	.word	756
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	25
	.byte	TOK_PUSH_NUM
	.word	256
	.byte	TOK_DIV
	.byte	TOK_POKE
@FastBasic_LINE_547:	; LINE 547
	.byte	TOK_VAR_LOAD
	.byte	64
	.byte	TOK_PUSH_BYTE
	.byte	127
	.byte	TOK_GT
	.byte	TOK_CRET
@FastBasic_LINE_551:	; LINE 551
	.byte	TOK_BYTE
	.byte	88
	.byte	TOK_SADDR
	.byte	TOK_BYTE_PEEK
	.byte	106
	.byte	TOK_PUSH_NUM
	.word	256
	.byte	TOK_MUL
	.byte	TOK_PUSH_NUM
	.word	3848
	.byte	TOK_ADD_VAR
	.byte	25
	.byte	TOK_PEEK
	.byte	TOK_PUSH_NUM
	.word	256
	.byte	TOK_MUL
	.byte	TOK_SUB
	.byte	TOK_DPOKE
@FastBasic_LINE_552:	; LINE 552
	.byte	TOK_BYTE
	.byte	88
	.byte	TOK_DPEEK
	.byte	TOK_VAR_STORE
	.byte	26
@FastBasic_LINE_553:	; LINE 553
	.byte	TOK_NUM
	.word	3328
	.byte	TOK_ADD_VAR
	.byte	25
	.byte	TOK_VAR_STORE
	.byte	70
@FastBasic_LINE_554:	; LINE 554
	.byte	TOK_VAR_LOAD
	.byte	70
	.byte	TOK_VAR_STORE
	.byte	60
@FastBasic_LINE_555:	; LINE 555
	.byte	TOK_NUM
	.word	2048
	.byte	TOK_ADD_VAR
	.byte	25
	.byte	TOK_VAR_STORE
	.byte	71
	.byte	TOK_VAR_STORE_0
	.byte	61
@FastBasic_LINE_556:	; LINE 556
	.byte	TOK_VAR_LOAD
	.byte	0
	.byte	TOK_COMP_0
	.byte	TOK_CNJUMP
	.word	jump_lbl_196
@FastBasic_LINE_557:	; LINE 557
	.export	jump_lbl_197
jump_lbl_197:
@FastBasic_LINE_558:	; LINE 558
	.byte	TOK_VAR_LOAD
	.byte	60
	.byte	TOK_PEEK
	.byte	TOK_VAR_STORE
	.byte	53
@FastBasic_LINE_559:	; LINE 559
	.byte	TOK_VAR_LOAD
	.byte	53
	.byte	TOK_PUSH_BYTE
	.byte	64
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_BYTE
	.byte	64
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	53
	.byte	TOK_PUSH_BYTE
	.byte	15
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_1
	.byte	TOK_GT
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_198
@FastBasic_LINE_560:	; LINE 560
	.byte	TOK_CALL
	.word	fb_lbl_POINT_TO_LINE
@FastBasic_LINE_561:	; LINE 561
	.byte	TOK_JUMP
	.word	jump_lbl_199
	.export	jump_lbl_198
jump_lbl_198:
	.byte	TOK_VAR_LOAD
	.byte	53
	.byte	TOK_PUSH_BYTE
	.byte	65
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_199
@FastBasic_LINE_562:	; LINE 562
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	60
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	70
	.byte	TOK_DPOKE
@FastBasic_LINE_563:	; LINE 563
	.export	jump_lbl_199
jump_lbl_199:
@FastBasic_LINE_564:	; LINE 564
	.byte	TOK_VAR_LOAD
	.byte	53
	.byte	TOK_PUSH_BYTE
	.byte	128
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_BYTE
	.byte	128
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_201
	.byte	TOK_CALL
	.word	fb_lbl_SET_DLI_POINTERS
	.export	jump_lbl_201
jump_lbl_201:
@FastBasic_LINE_565:	; LINE 565
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	60
	.byte	TOK_VAR_STORE
	.byte	60
@FastBasic_LINE_566:	; LINE 566
	.byte	TOK_VAR_LOAD
	.byte	60
	.byte	TOK_PUSH_NUM
	.word	310
	.byte	TOK_ADD_VAR
	.byte	70
	.byte	TOK_GT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	53
	.byte	TOK_PUSH_BYTE
	.byte	65
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_CJUMP
	.word	jump_lbl_197
@FastBasic_LINE_567:	; LINE 567
	.byte	TOK_1
	.byte	TOK_VAR_STORE
	.byte	0
@FastBasic_LINE_568:	; LINE 568
	.export	jump_lbl_196
jump_lbl_196:
@FastBasic_LINE_569:	; LINE 569
	.byte	TOK_NUM
	.word	3309
	.byte	TOK_ADD_VAR
	.byte	25
	.byte	TOK_SADDR
	.byte	TOK_NUM
	.word	2048
	.byte	TOK_ADD_VAR
	.byte	25
	.byte	TOK_PUSH_NUM
	.word	256
	.byte	TOK_MOD
	.byte	TOK_POKE
	.byte	TOK_NUM
	.word	3314
	.byte	TOK_ADD_VAR
	.byte	25
	.byte	TOK_SADDR
	.byte	TOK_NUM
	.word	2048
	.byte	TOK_ADD_VAR
	.byte	25
	.byte	TOK_PUSH_NUM
	.word	256
	.byte	TOK_DIV
	.byte	TOK_POKE
	.byte	TOK_NUM
	.word	560
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	70
	.byte	TOK_DPOKE
@FastBasic_LINE_570:	; LINE 570
	.byte	TOK_NUM
	.word	3842
	.byte	TOK_ADD_VAR
	.byte	25
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	16
	.byte	TOK_BIT_AND
	.byte	TOK_PUSH_BYTE
	.byte	16
	.byte	TOK_EQ
	.byte	TOK_CRET
@FastBasic_LINE_571:	; LINE 571
	.byte	TOK_NUM
	.word	546
	.byte	TOK_SADDR
	.byte	TOK_NUM
	.word	3308
	.byte	TOK_ADD_VAR
	.byte	25
	.byte	TOK_DPOKE
	.byte	TOK_1
	.byte	TOK_PAUSE
	.byte	TOK_BYTE
	.byte	192
	.byte	TOK_NUM_POKE
	.word	54286
@FastBasic_LINE_573:	; LINE 573
	.byte	TOK_RET
@FastBasic_LINE_575:	; LINE 575
	.export	fb_lbl_POINT_TO_LINE
fb_lbl_POINT_TO_LINE:
@FastBasic_LINE_576:	; LINE 576
	.byte	TOK_VAR_LOAD
	.byte	61
	.byte	TOK_COMP_0
	.byte	TOK_CNJUMP
	.word	jump_lbl_205
	.byte	TOK_1
	.byte	TOK_VAR_STORE
	.byte	61
	.export	jump_lbl_205
jump_lbl_205:
@FastBasic_LINE_577:	; LINE 577
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	60
	.byte	TOK_DPEEK
	.byte	TOK_VAR_STORE
	.byte	72
	.byte	TOK_VAR_LOAD
	.byte	26
	.byte	TOK_ADD_VAR
	.byte	72
	.byte	TOK_VAR_STORE
	.byte	72
@FastBasic_LINE_578:	; LINE 578
	.byte	TOK_1
	.byte	TOK_ADD_VAR
	.byte	60
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	72
	.byte	TOK_INT_FP
	.byte	TOK_FP_INT
	.byte	TOK_DPOKE
@FastBasic_LINE_579:	; LINE 579
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_ADD_VAR
	.byte	60
	.byte	TOK_VAR_STORE
	.byte	60
@FastBasic_LINE_580:	; LINE 580
	.byte	TOK_RET
@FastBasic_LINE_582:	; LINE 582
	.export	fb_lbl_SET_DLI_POINTERS
fb_lbl_SET_DLI_POINTERS:
@FastBasic_LINE_583:	; LINE 583
	.byte	TOK_VAR_LOAD
	.byte	71
	.byte	TOK_PUSH_NUM
	.word	2048
	.byte	TOK_ADD_VAR
	.byte	25
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_208
@FastBasic_LINE_584:	; LINE 584
	.byte	TOK_BYTE
	.byte	49
	.byte	TOK_ADD_VAR
	.byte	71
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	71
	.byte	TOK_PUSH_NUM
	.word	256
	.byte	TOK_DIV
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	47
	.byte	TOK_ADD_VAR
	.byte	71
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	71
	.byte	TOK_PUSH_NUM
	.word	256
	.byte	TOK_MOD
	.byte	TOK_POKE
@FastBasic_LINE_585:	; LINE 585
	.byte	TOK_JUMP
	.word	jump_lbl_209
	.export	jump_lbl_208
jump_lbl_208:
@FastBasic_LINE_586:	; LINE 586
	.byte	TOK_VAR_LOAD
	.byte	71
	.byte	TOK_PUSH_BYTE
	.byte	60
	.byte	TOK_SUB
	.byte	TOK_VAR_STORE
	.byte	71
	.byte	TOK_BYTE
	.byte	49
	.byte	TOK_ADD_VAR
	.byte	71
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	60
	.byte	TOK_ADD_VAR
	.byte	71
	.byte	TOK_PUSH_NUM
	.word	256
	.byte	TOK_DIV
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	47
	.byte	TOK_ADD_VAR
	.byte	71
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	60
	.byte	TOK_ADD_VAR
	.byte	71
	.byte	TOK_PUSH_NUM
	.word	256
	.byte	TOK_MOD
	.byte	TOK_POKE
	.byte	TOK_BYTE
	.byte	60
	.byte	TOK_ADD_VAR
	.byte	71
	.byte	TOK_VAR_STORE
	.byte	71
	.byte	TOK_BYTE
	.byte	49
	.byte	TOK_ADD_VAR
	.byte	71
	.byte	TOK_SADDR
	.byte	TOK_NUM
	.word	2048
	.byte	TOK_ADD_VAR
	.byte	25
	.byte	TOK_PUSH_NUM
	.word	256
	.byte	TOK_DIV
	.byte	TOK_POKE
@FastBasic_LINE_587:	; LINE 587
	.byte	TOK_BYTE
	.byte	47
	.byte	TOK_ADD_VAR
	.byte	71
	.byte	TOK_SADDR
	.byte	TOK_NUM
	.word	2048
	.byte	TOK_ADD_VAR
	.byte	25
	.byte	TOK_PUSH_NUM
	.word	256
	.byte	TOK_MOD
	.byte	TOK_POKE
@FastBasic_LINE_588:	; LINE 588
	.export	jump_lbl_209
jump_lbl_209:
@FastBasic_LINE_589:	; LINE 589
	.byte	TOK_BYTE
	.byte	60
	.byte	TOK_ADD_VAR
	.byte	71
	.byte	TOK_VAR_STORE
	.byte	71
@FastBasic_LINE_590:	; LINE 590
	.byte	TOK_RET
