;��ת�ַ���
;ʹ�ö�ջ
.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword
.data
  arrList dword 10h,20h,30h,40h,50h
  arrLen dword lengthof arrList
  sum dword 0
.code
main proc
	mov esi,offset arrList
	mov ecx,arrLen
	call arraySum
	mov sum,eax
	invoke ExitProcess, 0
main endp

;��������������32λ���ֵĺ�
arraySum proc ;��������uses ecx esi Ҳ����
	push ecx;��ֹӰ���ⲿ������ѭ������,��ѹ��ջ
	push esi;��ֹӰ���ⲿ������ esi
	mov eax,0;�ȰѺ��ÿ�
L0:	
	;������ĵ�һ��ֵ��ʼ��,�ӵ����һ��
	add eax,[esi]
	add esi,type dword
	loop L0
	;�ָ��ⲿ������esi��ecx
	pop esi
	pop ecx
	ret
arraySum endp

end main


