# Plataforma de Doações e Distribuição de Recursos - "AjudaSolidária"

Este projeto visa desenvolver uma plataforma que facilita a conexão entre doadores, organizações sociais e beneficiários, otimizando o processo de doação e distribuição de recursos.

---

### Dados do Projeto

* **Tipo de Projeto**: Extensionista
* **Tema Integrador**: Projeto de Sistemas de Banco de Dados
* **Período**: 3º período
* **Carga Horária**: 60h – Extensão
* **Público-Alvo da Atividade**: Público-geral/Pessoas aspirantes da área
* **Professor(a)**: Denise Moraes

---

### Funcionalidades CRUD do Sistema

| Operação | Descrição                                    | Exemplos de Uso                                                                             |
| :------- | :------------------------------------------- | :------------------------------------------------------------------------------------------ |
| **Create** | Criar novos registros no sistema.            | - **Doadores**: Cadastrar itens para doação (ex.: alimentos, roupas).<br>- **Beneficiários**: Registrar solicitações de ajuda com descrição das necessidades.<br>- **Organizações Sociais**: Cadastrar eventos ou campanhas de arrecadação. |
| **Read** | Ler e exibir informações armazenadas no sistema. | - Listar todos os itens disponíveis para doação.<br>- Exibir solicitações de ajuda feitas pela comunidade.<br>- Mostrar relatórios de doações realizadas e impacto gerado. |
| **Update** | Atualizar informações existentes no sistema.  | - Atualizar o status de um item (ex.: "Disponível", "Reservado", "Entregue").<br>- Editar informações de uma solicitação de ajuda ou evento. |
| **Delete** | Excluir registros que não são mais relevantes ou úteis. | - Remover itens que já foram entregues ou não estão mais disponíveis.<br>- Excluir solicitações atendidas ou duplicadas. |

---

### Estrutura do Sistema

#### Público-Alvo

| Perfil               | Descrição                                                                        |
| :------------------- | :------------------------------------------------------------------------------- |
| **Doadores** | Indivíduos ou empresas que desejam doar recursos (alimentos, roupas, brinquedos, etc.). |
| **Organizações Sociais** | ONGs, igrejas, associações comunitárias que organizam campanhas de arrecadação.   |
| **Beneficiários** | Moradores de comunidades carentes que precisam de recursos ou apoio.             |

#### Principais Módulos

| Módulo                  | Descrição                                                                       |
| :---------------------- | :------------------------------------------------------------------------------ |
| **Cadastro de Usuários** | Permite o registro de doadores, organizações sociais e beneficiários no sistema. |
| **Registro de Itens** | Lista os recursos disponíveis para doação, incluindo detalhes como nome, quantidade e status. |
| **Solicitações de Ajuda** | Permite que beneficiários registrem suas necessidades específicas.             |
| **Relatórios e Estatísticas** | Fornece dados sobre as doações realizadas, itens entregues e impacto gerado na comunidade. |

---

### Modelo de Banco de Dados (Estrutura Básica de Tabelas)

| Tabela             | Campos                                                                        |
| :----------------- | :---------------------------------------------------------------------------- |
| **Doadores** | - `ID` (Chave Primária)<br>- `Nome`<br>- `Contato`<br>- `Endereco`             |
| **Beneficiários** | - `ID` (Chave Primária)<br>- `Nome`<br>- `Contato`<br>- `Endereco`             |
| **Organizações Sociais** | - `ID` (Chave Primária)<br>- `Nome`<br>- `Contato`<br>- `Endereco`             |
| **Itens** | - `ID` (Chave Primária)<br>- `NomeItem`<br>- `Quantidade`<br>- `Status` (Disponível/Reservado/Entregue)<br>- `ID_Doador` (Chave Estrangeira) |
| **Solicitações** | - `ID` (Chave Primária)<br>- `DescricaoNecessidade`<br>- `Status` (Pendente/Atendida)<br>- `ID_Beneficiário` (Chave Estrangeira) |
