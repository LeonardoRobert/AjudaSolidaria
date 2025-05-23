# Requisitos Não Funcionais - Plataforma "AjudaSolidária"

Os requisitos não funcionais definem os critérios de qualidade e as restrições que o sistema deve atender.

---

### Categorias de Requisitos Não Funcionais

#### Usabilidade:
* O sistema deve ter uma **interface de usuário intuitiva e fácil de usar**, com navegação clara e consistente para todos os perfis (doadores, beneficiários, organizações sociais).
* As mensagens de erro e feedback devem ser **claras e compreensíveis**.
* O tempo de aprendizado para novas funcionalidades deve ser **mínimo**.

#### Desempenho:
* As páginas do sistema devem carregar em, no máximo, **3 segundos** para a maioria das operações (excluindo uploads de arquivos grandes).
* As operações de consulta e registro de dados (CRUD) devem ser executadas em, no máximo, **2 segundos**.
* O sistema deve ser capaz de suportar um **número crescente de usuários simultâneos** sem degradação significativa do desempenho.

#### Segurança:
* O sistema deve implementar um **mecanismo robusto de autenticação e autorização** para garantir que apenas usuários registrados e com as permissões corretas possam acessar as funcionalidades.
* As senhas dos usuários devem ser **armazenadas de forma segura** (ex: utilizando hashing e salting).
* A comunicação entre o cliente e o servidor deve ser **criptografada** (ex: via HTTPS).
* O sistema deve proteger contra vulnerabilidades comuns como injeção SQL e Cross-Site Scripting (XSS).
* Os dados pessoais e sensíveis dos usuários devem ser protegidos e em conformidade com as leis de privacidade de dados (ex: LGPD, se aplicável).

#### Confiabilidade:
* O sistema deve estar **disponível 99% do tempo** durante o horário de operação previsto.
* O sistema deve ter mecanismos de **recuperação de falhas**, garantindo que os dados não sejam perdidos em caso de interrupções.
* As transações de banco de dados devem ser **atômicas, consistentes, isoladas e duráveis (ACID)**.

#### Manutenibilidade:
* O código-fonte do sistema deve ser **modular, bem estruturado e fácil de entender**, com comentários adequados.
* A documentação do código e do design do sistema deve ser **atualizada e acessível**.
* As dependências de software devem ser **gerenciadas de forma eficiente**.

#### Escalabilidade:
* A arquitetura do sistema deve permitir a **adição de novas funcionalidades** e a **expansão da base de usuários** sem grandes refatorações.
* O banco de dados deve ser projetado para **escalar horizontalmente** ou verticalmente conforme o crescimento dos dados.

#### Compatibilidade:
* O sistema deve ser **compatível com os principais navegadores web** (Chrome, Firefox, Edge, Safari) e suas versões mais recentes.
* O sistema deve ser **responsivo**, adaptando-se a diferentes tamanhos de tela (desktop, tablet, mobile).
