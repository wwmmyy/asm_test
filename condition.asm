;��ת�ַ���
;ʹ�ö�ջ
.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword
include irvine32.inc;���������Ͷ���,�൱��c��ͷ�ļ�
.data
 arr dword 1,2,3,4,5,6,7,8,9,0ah,0bh

.code
main proc
    ;��λ��
	 mov al,0ffh
	 and al,11111001b;11111001b
     mov al,01010101b
	 or  al,01101001b;01111101b
     mov al,01010101b
	 not al;10101010b;
     mov al,01010101b
	 xor al,10101010b;11111111b;
	invoke ExitProcess, 0
main endp
 
 
end main
 

