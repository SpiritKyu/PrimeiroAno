const IMAGENS = [
    "carossel/pousada1.png",
    "carossel/pousada2.png",
    "carossel/pousada3.png",
    "carossel/pousada4.png",
    "carossel/pousada5.png",
    "carossel/pousada6.png"
];

let atual = 0;

const IMAGEM = document.getElementById("imagem");

function atualizarImagem() {
    if (!IMAGEM) return;
    IMAGEM.src = IMAGENS[atual];
}

function proxima() {
    atual = (atual + 1) % IMAGENS.length;
    atualizarImagem();
}

function anterior() {
    atual = (atual - 1 + IMAGENS.length) % IMAGENS.length;
    atualizarImagem();
}
