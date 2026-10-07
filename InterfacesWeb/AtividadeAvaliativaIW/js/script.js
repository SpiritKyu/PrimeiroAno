const IMAGENS = [
    "carossel/pousada1.png",
    "carossel/pousada2.png",
    "carossel/pousada3.png",
    "carossel/pousada4.png",
    "carossel/pousada5.png",
    "carossel/pousada6.png"
];

var atual = 0;

const IMAGEM = document.getElementById("imagemCarrosel");

function atualizarImagem() {
    IMAGEM.src = IMAGENS[atual];
}

function proxima() {
    atual++;

    if (atual >= IMAGENS.length) {
        atual = 0;
    }

    atualizarImagem();
}

function anterior() {
    atual--;

    if (atual < 0) {
        atual = IMAGENS.length - 1;
    }

    atualizarImagem();
}
