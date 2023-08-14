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
    
    TAM_BUFFER  equ 0xA

segment .bss
    BUFFER rest 0x1

segment .text

saidaResultado:
    mov EAX, SYS_WRITE
    mov EBX, STD_OUT
    mov ECX, BUFFER
    mov EDX, TAM_BUFFER
    int SYS_CALL
    ret 