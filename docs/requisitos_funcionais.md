# Requisitos Funcionais - Plataforma "AjudaSolidária"

Os requisitos funcionais descrevem as funcionalidades que o sistema deve executar para atender às necessidades dos usuários.

---

### Funcionalidades por Perfil de Usuário

#### Doadores:
* O sistema deve permitir que doadores **realizem cadastro** em seus perfis.
* O sistema deve permitir que doadores **registrem novos itens para doação**, informando nome, quantidade e uma breve descrição.
* O sistema deve permitir que doadores **visualizem a lista de itens que eles cadastraram**.
* O sistema deve permitir que doadores **atualizem informações de um item** que eles cadastraram (ex: quantidade, descrição).
* O sistema deve permitir que doadores **removam itens** que não estão mais disponíveis ou foram entregues.

#### Beneficiários:
* O sistema deve permitir que beneficiários **realizem cadastro** em seus perfis.
* O sistema deve permitir que beneficiários **registrem solicitações de ajuda**, descrevendo suas necessidades específicas.
* O sistema deve permitir que beneficiários **visualizem suas solicitações de ajuda** e seus respectivos status.
* O sistema deve permitir que beneficiários **atualizem ou editem suas solicitações de ajuda** (se ainda estiverem pendentes).
* O sistema deve permitir que beneficiários **visualizem os itens disponíveis para doação**.

#### Organizações Sociais:
* O sistema deve permitir que organizações sociais **realizem cadastro** em seus perfis.
* O sistema deve permitir que organizações sociais **visualizem todos os itens disponíveis** para doação.
* O sistema deve permitir que organizações sociais **visualizem todas as solicitações de ajuda** pendentes.
* O sistema deve permitir que organizações sociais **atualizem o status de um item** (ex: de "Disponível" para "Reservado" ou "Entregue") após a coordenação da doação.
* O sistema deve permitir que organizações sociais **atualizem o status de uma solicitação de ajuda** para "Atendida" após a entrega dos recursos.
* O sistema deve permitir que organizações sociais **cadastrem, visualizem, editem e excluam eventos ou campanhas de arrecadação**.
* O sistema deve gerar **relatórios e estatísticas** sobre doações realizadas, itens entregues e o impacto gerado na comunidade.

#### Funcionalidades Gerais (Aplicáveis a múltiplos perfis):
* O sistema deve permitir que usuários **realizem login** e **logout** de suas contas.
* O sistema deve permitir a **recuperação de senha**.
* O sistema deve exibir **mensagens de confirmação** ou erro para as ações do usuário.
