# Regras de Negócio - Plataforma "AjudaSolidária"

As regras de negócio definem as políticas e procedimentos que governam as operações do sistema para garantir a integridade e consistência dos dados e processos.

---

### Regras Gerais:
* **Autenticação Obrigatória**: Somente usuários cadastrados (doadores, beneficiários, organizações sociais) e autenticados podem acessar as funcionalidades que exigem interação com o sistema (cadastro de itens, solicitações, atualizações, etc.).
* **Perfil Único por Registro**: Cada registro de usuário (e-mail) deve estar associado a apenas um perfil (doador, beneficiário ou organização social) no momento do cadastro. Permissões adicionais ou múltiplas associações de perfis podem ser consideradas em versões futuras, mas não são o foco inicial.
* **Integridade de Dados**: Todas as operações de criação, leitura, atualização e exclusão (CRUD) devem garantir a integridade referencial dos dados no banco de dados.

### Regras Específicas por Entidade/Funcionalidade:

#### Itens de Doação:
* Um **item de doação deve ter um doador associado** no momento do registro.
* O `Status` de um `Item` pode ser "Disponível", "Reservado" ou "Entregue".
* Um item só pode ser marcado como "Reservado" se seu status atual for "Disponível".
* Um item só pode ser marcado como "Entregue" se seu status for "Reservado" ou "Disponível" (no caso de uma entrega direta sem reserva prévia).
* Somente o **doador que registrou o item ou uma organização social** pode alterar o status ou informações do item.
* Itens com status "Entregue" ou "Reservado" não devem ser exibidos na lista de itens "Disponíveis" para novos beneficiários.

#### Solicitações de Ajuda:
* Uma **solicitação de ajuda deve ter um beneficiário associado** no momento do registro.
* O `Status` de uma `Solicitação` pode ser "Pendente" ou "Atendida".
* Uma solicitação de ajuda só pode ser marcada como "Atendida" por uma organização social, após a confirmação da entrega dos recursos.
* Beneficiários só podem **visualizar e editar** suas próprias solicitações de ajuda.
* Solicitações com status "Atendida" não devem ser exibidas como pendentes para organizações sociais.

#### Gerenciamento de Doações/Atendimentos:
* As organizações sociais são as **responsáveis por intermediar a conexão** entre itens doados e solicitações de ajuda, facilitando a distribuição.
* O sistema deve registrar a **associação entre um item doado e uma solicitação atendida** (se aplicável), ou entre um item doado e um beneficiário específico.

#### Relatórios e Estatísticas:
* Os relatórios devem refletir dados **em tempo real** ou quase real sobre doações e atendimentos.
* A geração de relatórios deve ser **restrita a usuários com permissão** (geralmente organizações sociais e administradores).
