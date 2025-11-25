async function listar() {
    let url = './php/listar.php';
    let resposta = await fetch(url);
    let dados = await resposta.json();
    let tagDad = document.getElementById('depoimento-listar');
    let tagChild = '';
    tagDad.innerHTML = tagChild;

    for (let x of dados) {
        tagChild += `<blockquote class="depoimento">
                    <p>“${x.text}”</p>
                    <cite>${x.name} – ${x.date}</cite>
                    <p>Curtidas ${x.curtidas}</p>
                    <button class="button__form" onclick="curtir(${x.id})">Curtir</button>
                </blockquote>`
    }

    tagDad.innerHTML = tagChild;
}

async function listarOrcamentos() {
    let url = './php/listarOrcamento.php';
    let resposta = await fetch(url);
    let dados = await resposta.json();
    let tagDad = document.getElementById('card-orcamentos');
    let tagChild = '';
    tagDad.innerHTML = tagChild;

    console.log(dados);

    for (let x of dados) {
        let gender; 
        if(x.gender == 'M'){
            gender = 'Masculino';
        }else if(x.gender == 'F'){
            gender = 'Feminino';
        }else if(x.gender == 'N'){
            gender = 'Prefiro não informar';
        }else{
            gender = 'Opção não informada'
        }

        let resposta;
        if(x.resposta == 'S'){
            resposta = 'Contato já respondido';
        }else if (x.resposta == 'N' || x.resposta == undefined){
            resposta = 'Contato ainda não respondido';
        }

        tagChild += `
        <div class='orcamento-registro mb-3'>
            <h3>${x.name}</h3>
            <p>${x.number}</p>
            <p>${x.email}</p>
            <p>${gender}</p>
            <p>${resposta}</p>
            <button class="button__form" onclick="marcarRespondido(${x.id})">Marcar como respondido</button>
        </div>`
    }

    tagDad.innerHTML = tagChild;
}


async function marcarRespondido(id) {
    let url = `./php/marcarRespondido.php?id=${id}`;
    let resposta = await fetch(url);

    listarOrcamentos();
}

async function curtir(id) {
    let url = `./php/curtir.php?id=${id}`;
    let resposta = await fetch(url);

    listar();
}

async function cadastro(){
    let name = document.getElementById('name').value;
    let text = document.getElementById('text').value;
    let url = `./php/inserir.php?name=${name}&text=${text}`;
    let resposta = await fetch(url);

    listar();
}

async function enviarOrcamento(){
    let name = document.getElementById('name-orc').value;
    let number = document.getElementById('number').value;
    let email = document.getElementById('email').value;
    let gender = document.getElementById('gender').value;
    let url = `./php/enviarOrcamento.php?name=${name}&number=${number}&email=${email}&gender=${gender}`;
    let resposta = await fetch(url);
}