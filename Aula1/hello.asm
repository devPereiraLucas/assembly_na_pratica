section .data
; Para definir apontamentos para o programa
    msg db 'Hello World!', 0xA
    tam equ $- msg
    
section .text
; Para definir o código do programa

global _start
; label que indicara o ponto de entrada do programa

_start:
    ; base hexadecimal 0 1 2 3 4 5 6 7 8 9 A B C D E F 10
    mov EAX, 0x4 ; 4 é a porta de saida padrão 
    mov EBX, 0x1
    mov ECX, msg
    mov EDX, tam
    int 0x80 ; sempre ao enviar o valor 80 em hexadecimal, o programa irá realizar todas as movimentaçoes de registradores passadas anteriormente

    mov EAX, 0x1 ; Comando para avisar o termino do programa
    mov EBX, 0x0 ; retornar 0 para o Sistema operacional
    int 0x80
