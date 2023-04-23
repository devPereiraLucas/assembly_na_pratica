## Vamos aprender assembly?

Meu ambiente é o Ubuntu, uma distribuição do Linux, assim todos os
programas aqui mostrados foram escritos e criados para ele.

### 1 - Instalando o NASM
    sudo apt-get install nasm

### 2 - Compilando o código e Linkeditando

#### Vamos transformar o programa para linguagem de maquina
    nasm -f elf64 nome_arquivo.asm

#### Vamos criar um executável
    ld -s -o hello hello.o