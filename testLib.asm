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
	 mov esi,offset arr
	 mov ecx,lengthof arr
	 mov ebx,type dword
	 call DumpMem
	invoke ExitProcess, 0
main endp

 
end main


