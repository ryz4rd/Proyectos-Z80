;CALCULAR LA RAIZ CUADRADA
;DE UN NUMERO EN BCD A DECIMAL

;
; INICIO DEL PROGRAMA
;

	.org 0000h
	ld B, 01100100; BCD, VALOR ACTUAL 64
	ld C, -1
	ld A, B
	call RC
	halt

;
; SUBRUTINAS
;

; CALCULAR LA RAIZ CUADRADA

RC:
	inc C
	inc C
	sub C
	jp nc, RC
	srl C ;Divide ente 2 el valor de C (C/2)
	ret
.END