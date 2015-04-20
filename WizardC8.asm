; Program Name: WizardC8
; Author: Ephraim Becker
; Version: 8.0
; Date: April 19th, 2015
; Written for Doors CS 7.0 and higher (http://dcs.cemetech.net)

.nolist
#include "ti83plus.inc"
#include "dcs7.inc"
.list
	.org progstart
	.db $BB,$6D
Init:
	xor d
	ret
	jr Start
	
	.dw Description			;or .dw $0000 if you don't have a description
	.db $07,$00			;always this string
	.dw Icon			;or .dw $0000 if you don't have an icon
	.dw $0000				;usually .dw $0000 if you don't have or know what an ALE is
Start:                          	;main routines
    call OpenGUIStack
    
	
	
	
    ret
	
Description:
	.db "A Harry Potter Currency Converter", 0
Icon:				;a 16x16 icon (can be omitted if .dw Icon is .dw 0000 above)
	.db %11111111,%11111000
	.db %10000000,%00001100
	.db %10111100,%00001010
	.db %10010010,%00001111
	.db %10010010,%01010001
	.db %10010010,%10101001
	.db %10111100,%01010101
	.db %10000000,%00000001
	.db %10101010,%10101001
	.db %10010101,%01010101
	.db %10101010,%10101001
	.db %10000000,%00000001
	.db %10010101,%01010101
	.db %10101010,%10101001
	.db %10000000,%00000001
	.db %11111111,%11111111
