;��ת�ַ���
;ʹ�ö�ջ
.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword
.data
	source byte "Hello World",0
	dest byte sizeof source dup(0)
.code
main proc
	mov esi,0;��ƫ��
	mov ecx,lengthof source;�洢Դ�ַ�������
L0:
	movzx eax,source[esi];����һ���ַ�
	push eax;ѹ���ջ
	inc esi;����ƫ��
	loop L0;�����е��ַ�ѹ��ջ
	;����ƫ��
	mov esi,0
	mov ecx,lengthof source;
L1:
	pop eax
	mov dest[esi],al
	inc esi
	loop L1
invoke ExitProcess, 0
main endp
end main