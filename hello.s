section .data

msg db "Hello World!",0ah

len equ $-msg

global _start

_start:

mov eax,4 ;　　 4号调用

mov ebx,1 ;　　 ebx送1表示标准输出

mov ecx,msg ;　字符串的首地址送入ecx

mov edx,$len ;　　字符串的长度送入edx

int 80h;　　　 输出字串

mov eax,1;　　 1号调用

mov ebx,0; 返回0

int 80h ;　　　 结束
