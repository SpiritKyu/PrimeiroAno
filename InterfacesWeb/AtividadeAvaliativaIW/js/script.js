const IMAGENS = [
    "carossel/pousada1.png",
    "carossel/pousada2.png",
    "carossel/pousada3.png",
    "carossel/pousada4.png",
    "carossel/pousada5.png",
    "carossel/pousada6.png"
];

//isso aq é pro site saber quais imagens vai aparecer no carrosel, se é constante é em maiusculo hehe >:)

var atual = 0;

//contagem ne rs, tem q usar oq nois aprendeu na aula passada de pa(em resumo controla qual imagem vai ser exibida)

const IMAGEM = document.getElementById("imagemCarrosel"); //aq busca no html o elemento com o id "imagem" ai o js muda o src dessa imagem 

function atualizarImagem() {
    if (!IMAGEM) return;
    IMAGEM.src = IMAGENS[atual];
} // essa função verifica se a imagem existe, ai se existir ela troca o atributo src da tag img pra imagem do indice atual

function proxima() {
    atual = (atual + 1) % IMAGENS.length;
    atualizarImagem();
} //essa avanca pra proxima imagem(% IMAGENS.length faz o ciclo voltar ao inicio quando chega ao fim) ai dps chama o atualizarImagem q troca a imagem do carossel

function anterior() {
    atual = (atual - 1 + IMAGENS.length) % IMAGENS.length;
    atualizarImagem();
} // mema coisa so q volta pra tras(por isso o -1) ai deixa o carrossel em loop sem quebrar
