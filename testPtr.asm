;���� testPtr
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
	aVal dword 12345678h
	wordList word 5678h,1234h
	val1 byte 0
	val2 word 0
	val3 dword 0
	val4 qword 0
	arr1 word 1,2,3,4,5
	     word 6,7,8,9,10
	str1 byte "Hello World",0
	val5 label word;��val6����ͬһ���ڴ�ռ�
	val6 dword 12345678h
	val7 dword 0
.code
main proc
	;�������лᱨ��,��ΪbVal��4���ֽڵ�dword����,���ܸ�ֵ��16λ��ax�Ĵ���
	;mov ax,aVal
	mov ax,word ptr aVal;����������,��Ϊword ptr ���Խ�aValǿתΪword����(16λ)
	;��ʱaxΪ5678,��ΪaVal���ڴ����� 78 56 34 12,ת��Ϊword�� ��Ϊ 78 56, ����ax ��ֵΪ5678
	;Ҳ���Խ�С����תΪ������, ����ת��֮��ֻ�Ǹı���ȡ�ֽڵĸ���
	mov eax,0
	mov eax,dword ptr wordList;����eax�ͻ���12345678h,ԭ��wordList��16λ,ֻ��ȡ��5678,
	;����ת��32λ�ͻ�ȡ��12345678
	;��ȡ�����������ֽڴ�С
	mov al,type val1;1
	mov al,type val2;2
	mov al,type val3;4
	mov al,type val4;8
	mov al,lengthof arr1;5,����10,��Ϊ���еĲ���
	mov al,lengthof str1;12
	mov al,sizeof arr1;5*2
	mov ax,0
	mov ax,val5;val5����val6��ǰ16λ����5678h

	mov eax,offset val6;ȡval6�ĵ�ַ��ֵ��ax
	mov val7,eax
	mov ebx,val7;��ʱebx ����val6�ĵ�ַ
	mov ebx,[eax];��ʱebx ����val6��ֵ 12345678h
	invoke ExitProcess,0 
main endp
end main