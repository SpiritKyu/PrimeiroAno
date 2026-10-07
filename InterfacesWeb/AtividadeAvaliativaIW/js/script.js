const IMAGENS = [
    "carossel/pousada1.png",// 0
    "carossel/pousada2.png",// 1
    "carossel/pousada3.png",// 2
    "carossel/pousada4.png",// 3
    "carossel/pousada5.png",// 4
    "carossel/pousada6.png"// 5
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
