let itens = [];

function adicionarItem() {
  const nome = document.getElementById("nomeItem").value;
  const quantidade = document.getElementById("quantidade").value;

  if (!nome || !quantidade) {
    alert("Preencha todos os campos!");
    return;
  }

  const item = {
    id: Date.now(),
    nome,
    quantidade,
    status: "Disponível"
  };

  itens.push(item);
  atualizarLista();
}

function atualizarLista() {
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
}

function marcarEntregue(id) {
  itens = itens.map(item =>
    item.id === id ? { ...item, status: "Entregue" } : item
  );
  atualizarLista();
}

function excluirItem(id) {
  itens = itens.filter(item => item.id !== id);
  atualizarLista();
}
