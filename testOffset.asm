;���� offset��align
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
	arr word 1,2,3,4,5
	pArr dword 0
	tempV byte 0;����Ū�Ҷ����õ�
	aVal byte 1;0040400f
	bVal byte 2;00404010
	align 2
	cVal byte 3;����Ӧ����00404011,���������ַ����2�ı���,����cVal���ڴ��ַ��00404012
	dVal byte 4;��ʱ�ָֻ���1���ֽڶ���,��ַΪ00404013
.code
main proc
	;�����ʱarr ��ƫ�Ƶ�ַΪ00404000h
	; offset arr + 4 ���� 00404004h,Ҳ������ֵ3�ĵ�ַ
	; + 4 ���Ǽ�4���ֽ�,һ��word��2���ֽ�,����esi������ֵ3�ĵ�ַ
	mov esi,offset arr + 4
	mov pArr,offset arr;��ʱpArr������arr�ĵ�ַ,����00404000h
	mov pArr,offset aVal
	;����ָ��
	invoke ExitProcess,0 
main endp
end main