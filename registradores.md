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