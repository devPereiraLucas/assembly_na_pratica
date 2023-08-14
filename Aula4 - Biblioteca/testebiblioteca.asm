%include 'biblioteca.inc'

section .text

global _start

_start:
    ; comando para ler um registro efetivo de outro arquivo por exemplo
    lea esi, [BUFFER]
    add esi, 0x9
    mov byte[esi], LF

    dec esi
    mov dl, 0x13
    add dl, '0'
    mov [esi], dl

    dec esi
    mov dl, 0x20
    mov [esi], dl

    dec esi
    mov dl, 0x12
    add dl, '0'
    mov [esi], dl

    dec esi
    mov dl, 0x20
    mov [esi], dl

    dec esi
    mov dl, 0x11; 0x11 representa o dc1 na tabela ASCII
    add dl, '0' ; ppara ajustar para o caractere A, incrementamos o valor de dl com 0x30, assim ficando 0x30 + 0x11 = 0x41 == A
    ; adicionando o 0 estou convertendo o  valor de dl em caractere, caso eu subtrair 0, estarei transformando A em numero
    mov [esi], dl

    call saidaResultado

    mov EAX, SYS_EXIT
    mov EBX, RET_EXIT
    int SYS_CALL
