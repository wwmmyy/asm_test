;��������������ֵ�ĺ�
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
 arr byte 123,234,123,12,5,23
.code
main proc
	mov eax,offset arr;�������׵�ַ��ֵ��eax�Ĵ�����
	mov ecx,lengthof arr;�����鳤�ȸ�ֵ��ecxѭ���Ĵ�����
	mov ebx,0;��ebx���
	mov edx,0;byte�޷�ֱ�Ӹ�ֵ��ebx,����dl��
L0:
	mov dl,byte ptr [eax]
	add ebx,edx
	add eax,type byte
	loop L0
	;�������208h
	invoke ExitProcess,0 
main endp
end main