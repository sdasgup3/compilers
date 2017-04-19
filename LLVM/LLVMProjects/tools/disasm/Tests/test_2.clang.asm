; ---------------------------------------------------------------------------

biff		struc ;	(sizeof=0x18, align=0x8, copyof_1) ; XREF: main+2F/w
					; main/r
a		dd ?			; XREF:	main+F/w
b		dd ?			; XREF:	main:loc_4C/w
c		dq ?			; offset
d		dw ?			; XREF:	main+1D/w
e		db 3 dup(?)		; XREF:	main+23/w main+27/w ...
		db ? ; undefined
		db ? ; undefined
		db ? ; undefined
biff		ends


;
; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2015 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: 48-38F3-7EE4-0C			    |
; |			    University of Illinois			    |
; +-------------------------------------------------------------------------+
;
; Input	SHA256 : BF0CC2DC75CB42493F25A2D18599BC9A30A9CFADE7326F3DF257B68D0403E556
; Input	MD5    : 5CC64848E808E4BEB97E4B424D3F971F
; Input	CRC32  : DA1863C7

; File Name   :	/home/sdasgup3/Github/binary-decompilation/test/variable_recovery/test_2/Output/test_2.clang.o
; Format      :	ELF64 for x86-64 (Relocatable)
;
; Source File :	'test_2.c'

		.686p
		.mmx
		.model flat
.intel_syntax noprefix

; ===========================================================================

; Segment type:	Pure code
; Segment permissions: Read/Execute
_text		segment	dword public 'CODE' use64
		assume cs:_text
		assume es:nothing, ss:nothing, ds:_text, fs:nothing, gs:nothing

; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __cdecl foo(int first, biff *baz)
		public foo
foo		proc near		; CODE XREF: main+3Fp

baz		= qword	ptr -20h
first		= dword	ptr -14h
bar		= dword	ptr -4

		push	rbp
		mov	rbp, rsp
		mov	[rbp+first], edi
		mov	[rbp+baz], rsi
		mov	eax, [rbp+first]
		add	eax, eax
		mov	[rbp+bar], eax
		mov	rax, [rbp+baz]
		mov	eax, [rax+4]
		add	[rbp+bar], eax
		mov	rax, [rbp+baz]
		movzx	eax, word ptr [rax+10h]
		cwde
		mov	edx, [rbp+bar]
		sub	edx, eax
		mov	rax, [rbp+baz]
		mov	[rax], edx
		mov	eax, [rbp+bar]
		pop	rbp
		retn
foo		endp


; =============== S U B	R O U T	I N E =======================================

; Attributes: bp-based frame

; int __cdecl main(int argc, const char	**argv,	const char **envp)
		public main
main		proc near		; DATA XREF: .eh_frame:00000000000000B4o

argv		= qword	ptr -30h
argc		= dword	ptr -24h
baz		= biff ptr -20h
m		= dword	ptr -4

		push	rbp
		mov	rbp, rsp
		sub	rsp, 30h
		mov	[rbp+argc], edi
		mov	[rbp+argv], rsi
		mov	[rbp+baz.a], 4

loc_4C:					; DATA XREF: .eh_frame:00000000000000D4o
		mov	[rbp+baz.b], 0FFFFFFFCh
		mov	[rbp+baz.d], 0Fh
		mov	[rbp+baz.e], 61h ; 'a'
		mov	[rbp+baz.e+1], 62h ; 'b'
		mov	[rbp+baz.e+2], 63h ; 'c'
		mov	byte ptr [rbp+baz+15h],	0
		lea	rax, [rbp+baz]
		mov	rsi, rax	; baz
		mov	edi, 0Bh	; first
		call	foo
		mov	[rbp+m], eax
		mov	eax, 0
		leave

locret_83:				; DATA XREF: .eh_frame:00000000000000B0o
					; .eh_frame:00000000000000D0o
		retn
main		endp

_text		ends

; ===========================================================================

; Segment type:	Zero-length
; Segment permissions: Read/Write
_data		segment	dword public 'DATA' use64
_data		ends

; ===========================================================================

; Segment type:	Zero-length
; Segment permissions: Read/Write
_bss		segment	dword public 'BSS' use64
_bss		ends

; ===========================================================================

; Segment type:	Pure data
; Segment permissions: Read
; Segment alignment 'qword' can not be represented in assembly
_eh_frame	segment	para public 'CONST' use64
		assume cs:_eh_frame
		;org 90h
		db  14h
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    1
		db  7Ah	; z
		db  52h	; R
		db    0
		db    1
		db  78h	; x
		db  10h
		db    1
		db  1Bh
		db  0Ch
		db    7
		db    8
		db  90h	; �
		db    1
		db    0
		db    0
		db  1Ch
		db    0
		db    0
		db    0
		db  1Ch
		db    0
		db    0
		db    0
		dd offset locret_83+0FFFFFECDh
		dd offset main
		db    0
		db  41h	; A
		db  0Eh
		db  10h
		db  86h	; �
		db    2
		db  43h	; C
		db  0Dh
		db    6
		db  71h	; q
		db  0Ch
		db    7
		db    8
		db    0
		db    0
		db    0
		db  1Ch
		db    0
		db    0
		db    0
		db  3Ch	; <
		db    0
		db    0
		db    0
		dd offset locret_83+0FFFFFEE3h
		dd offset loc_4C+2
		db    0
		db  41h	; A
		db  0Eh
		db  10h
		db  86h	; �
		db    2
		db  43h	; C
		db  0Dh
		db    6
		db    2
		db  49h	; I
		db  0Ch
		db    7
		db    8
		db    0
		db    0
_eh_frame	ends


		end