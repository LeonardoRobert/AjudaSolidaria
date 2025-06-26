function carregarItens() {
  fetch("/api/itens")
    .then(res => res.json())
    .then(itens => {
      const lista = document.getElementById("listaItens");
      lista.innerHTML = "";
      itens.forEach(item => {
        const li = document.createElement("li");
        li.innerHTML = `
          <strong>${item.nome}</strong> - ${item.quantidade} unidades - ${item.status}
          <button onclick="marcarEntregue(${item.id})">Entregue</button>
          <button onclick="excluirItem(${item.id})">Excluir</button>
        `;
        lista.appendChild(li);
      });
    })
    .catch(err => console.error('Erro ao carregar itens:', err));
}

function adicionarItem() {
  const nome = document.getElementById("nomeItem").value;
  const quantidade = document.getElementById("quantidade").value;

  if (!nome || !quantidade) {
    alert('Por favor, preencha nome e quantidade.');
    return;
  }

  fetch("/api/itens", {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ nome, quantidade })
  })
  .then(() => {
    carregarItens();
    document.getElementById("nomeItem").value = "";
    document.getElementById("quantidade").value = "";
  })
  .catch(err => console.error('Erro ao adicionar item:', err));
}

function marcarEntregue(id) {
  fetch(`/api/itens/${id}`, { method: "PUT" })
    .then(() => carregarItens())
    .catch(err => console.error('Erro ao marcar entregue:', err));
}

function excluirItem(id) {
  fetch(`/api/itens/${id}`, { method: "DELETE" })
    .then(() => carregarItens())
    .catch(err => console.error('Erro ao excluir item:', err));
}

// Carrega os itens quando a página carregar
window.onload = carregarItens;
