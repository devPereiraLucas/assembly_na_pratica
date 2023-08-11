# Registradores

Os registradores são uma parte fundamental do computador. Eles são usados para armazenar dados e instruções. Os registradores são divididos em dois tipos: registradores de propósito geral e registradores de propósito especial. Os registradores de propósito geral são usados para armazenar dados e instruções. Os registradores de propósito especial são usados para armazenar informações sobre o estado do processador.

#### Tipos de registradores

| 64bits | 32 bits | Utilização |
| ------------- | ------------- | ------------- |
| rax | eax | Usado em instruções de operações aritméticas para receber o resultado de um cálculo |
| rbx | ebx | Usado geralmente em endereçamento de memória para se referir ao endereço inicial, isto é, o endereço base |
| rcx | ecx | Usado em instruções de repetição de código (loops) para controlar o número de repetições |
| rdx | edx | Usado em operações de entrada e saída por portas físicas para armazenar o dado enviado/recebido |
| rsp | esp | Usado como ponteiro para o topo da stack |
| rbp | ebp | Usado como ponteiro para o endereço inicial do stack frame |
| rsi | esi | Trabalhando em conjunto com o registrador acima, esse aponta para o endereço destino onde os dados serão gravados |
| rdi | edi | Em operações com blocos de dados, ou strings, esse registrador é usado para apontar para o endereço de origem de onde os dados serão lidos |

##### *Os registradores de 32bits recebem a inicial **E**, já os registradores de 64bits recebem a iniciar **R**

#### Alocação de espaço em memoria para dadoos inicializados

| Definição | Valor |	Espaço em memoria |
| ------------- | ------------- | ------------- |
| DB | Define Byte | allocates 1 byte |
| DW | Define Word | allocates 2 bytes |
| DD | Define Doubleword | allocates 4 bytes |
| DQ | Define Quadword	| allocates 8 bytes |
| DT | Define Ten Bytes  | allocates 10 bytes |

| Exemplo | Definição |	Valor |
| ------------- | ------------- | ------------- |
| choice | DB	| 'y' | 
| number | DW	| 12345 | 
| neg_number | DW	| -12345 | 
| big_number | DQ	| 123456789 | 
| real_number1 | DD	| 1.234 | 
| real_number2 | DQ	| 123.456 |

#### Alocação de espaço em memoria para dadoos não inicializados

| Definição | Valor |
| ------------- | ------------- |
| RESB | Reserva Byte |
| RESW | Reserva Word |
| RESD | Reserva Doubleword	|
| RESQ | Reserva Quadword	|
| REST | Reserva Ten Bytes |

#### Saltos condicionais

| Instrução | Nome estendido | Condição |
| ------------- | ------------- | ------------- |
| JE | Jump if Equal | Pula se for igual |
| JNE | Jump if Not Equal | Pule se não for igual |
| JL | Jump if Less than | Pule se for menor que |
| JG | Jump if Greater than | Pule se for maior que |
| JLE | Jump if Less or Equal | Pule se for menor ou igual | 
| JGE | Jump if Greater or Equal | Pule se for maior ou igual |


#### AND, OR, XOR

Com os 'comparadores acima' conseguimos de fato fazer a comparação de bits seguindo exemplo:

| regua binaria | 32 | 16 | 8 | 4 | 2 | 1 |

| Condicional | AND | OR | XOR |
| ------------- | ------------- | ------------- | ------------- |
| 7 | 000111 | 000111 | 000111 |
| 5 | 000101 | 000101 | 000101 |
| - | 000101 | 000111 | 000010 |

