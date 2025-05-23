const form = document.getElementById('formDoador');
const lista = document.getElementById('lista');

// Simulação de armazenamento local (substituir por conexão ao backend)
let doadores = [];

form.addEventListener('submit', function(e){
  e.preventDefault();
  const nome = document.getElementById('nome').value;
  const email = document.getElementById('email').value;

  // Adiciona na lista
  doadores.push({nome, email});
  atualizarLista();

  // Limpa o formulário
  form.reset();
});

function atualizarLista() {
  lista.innerHTML = '';
  doadores.forEach(d => {
    const li = document.createElement('li');
    li.textContent = `${d.nome} - ${d.email}`;
    lista.appendChild(li);
  });
}
