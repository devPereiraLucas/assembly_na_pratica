segment .data
    LF          equ 0xA ; Line Feed
    NULL        equ 0xD ; Final da String
    SYS_CALL    equ 0x80 ; Envia as movimentaçoes para o SO
    ; EAX
    SYS_EXIT    equ 0x1 ; Chamada para finalizar
    SYS_WRITE   equ 0x4 ; Operacao de escrita 
    SYS_READ    equ 0x3 ; Operacao de leitura
    ; EBX
    RET_EXIT    equ 0x0 ; Operacao realizada com sucesso
    STD_IN      equ 0x0 ; Entrada padrao
    STD_OUT     equ 0x1 ; Saida padrao

section .data
    x dd 50
    y dd 10
    msg1 db 'X maior que Y', LF, NULL
    tam1 equ $- msg1
    msg2 db 'Y maior que X', LF, NULL
    tam2 equ $- msg2

section .text

global _start

_start:
    ; DWORD é usado para movimentar os dados de .data para dentro dos registradores
    mov EAX, DWORD[x]
    mov EBX, DWORD[y]
    ; if - Comparação, em assembly usamos cmp para informar que iremos comparar algo, a seguir precisamos dizer como deverá ser comparado
    cmp EAX, EBX
    jg maior
    mov ECX, msg2
    mov EDX, tam2
    jmp final

maior:
    mov ECX, msg1
    mov EDX, tam1

final:
    mov EAX, SYS_WRITE
    mov EBX, STD_OUT
    int SYS_CALL

    mov EAX, SYS_EXIT
    xor EBX, EBX
    int SYS_CALL