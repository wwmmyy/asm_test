; 64λ���

;��������ԭ��
ExitProcess proto
.data
sum qword 0
arr qword 1,2,4,5,6
arrSize = ($ - arr)
arrLen = ($ - arr)/8
myStr byte "Hello World",0
; ch ���ֽ� 12*1+1
strLen = ($ - myStr)
;�����
.code
main proc
	mov	rax,0a5h			; ��a5h����eax�Ĵ���
	add	rax,6				; ��eax�Ĵ���+6	
	mov sum,rax
	mov rax,arrLen
	mov rax,strLen

	mov rcx,0
	call ExitProcess
main endp
end