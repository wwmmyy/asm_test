; ��������������ֵ�ĺ�
;1��
COMMENT	!
.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword
.data
	str1 byte "Hello World",0
	str2 byte sizeof str1 dup(0)
.code
main proc
	mov ecx,lengthof str1;�洢Դ�ַ�������
	mov eax,offset str1;�洢Դ�ַ�����ַ
	mov ebx,offset str2;�洢Ŀ���ַ�����ַ
	mov dl,0;��ʱ�洢�ַ�
L0:
	mov dl,[eax];����ǰ�ַ��洢����ʱ�Ĵ���
	mov [ebx],dl;����ʱ�ַ���ֵ��Ŀ���ַ
	add eax,type byte;Դ�ַ���ָ������ƶ�һ���ֽ�
	add ebx,type byte;Ŀ���ַ���ָ������ƶ�һ���ֽ�
	loop L0
invoke ExitProcess, 0
main endp
end main
!
;�Ľ���
.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword
.data
	source byte "Hello World",0
	dest byte sizeof source dup(0)
.code
main proc
	mov esi,0;�ַ�ƫ��
	mov ecx,lengthof source;�洢Դ�ַ�������
	mov al,0;��ʱ�洢�ַ�
L0:
	mov dl,source[esi];����ǰ�ַ��洢����ʱ�Ĵ���
	mov dest[esi],dl;����ʱ�ַ���ֵ��Ŀ���ַ
	inc esi
	loop L0
invoke ExitProcess, 0
main endp
end main