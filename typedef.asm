;typedef
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
pword typedef ptr word;//����һ��ָ��word���͵�ָ�� pword
.data
 wordList word 10h,20h,30h,40h;����һ��word����
;����wordList��word;���͵�����,���︳ֵ��dword �� pWordList
;���ǽ��ڴ��ַ��ֵ��pWordList 
 pWordList dword wordList
 word1 word 10h;����һ��word���� word1
 pWord1 dword word1;pWord1 Ϊ��ַ
 pWord2 pword word1;pWrod2 Ҳ��ָ��
.code
main proc
	mov eax,0
	mov ax,wordList;10h
	mov eax,0
	mov eax,dword ptr wordList;00100020h
	mov eax,0
	mov eax,pWordList;mem
	mov eax,0
	mov ax,word1;10h
	mov eax,0
	mov eax,pWord1;mem
	mov eax,0
	mov eax,pWord2;mem
	mov eax,0
	mov ebx,pWord1;mem
	mov ax,[ebx];10h
	mov ax,0
	mov ebx,pWord2;mem
	mov ax,[ebx];10h
	invoke ExitProcess,0 
main endp
end main