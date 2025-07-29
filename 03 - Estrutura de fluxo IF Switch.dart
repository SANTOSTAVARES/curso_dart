void main() {
  // 1 - Introdução a Variaveis

String variavelNome = "Deivid";
print(variavelNome);

int valorVariavel = 10;
print(valorVariavel);

bool ehVerdadeiro = true;
print(ehVerdadeiro);

List<String> listaDePalavras = ["Deivid", "Willyan"];
print("${listaDePalavras[0]} ${listaDePalavras[1]}");

  // 2 - Introdução null-safety
    
String? nome;
//Ao inserir '?' ao final do tipo String, permite com que a variável possa receber valor nulo.
nome = "ABC";

print(nome!);
// '!' usado após o valor da variável, serve para informar ao compilador que, o valor atribuído a ela não pode ser nulo. Caso seja nulo, gera erro.
nome = null;

late String sobrenome;
//É um modificador de variável, ou seja, ele dá uma nova característica a uma variável. E essa característica é a possibilidade de atribuição tardia. Ao usar o Late, após atribuir valor a varíavel, ela não poderá posteriormente ser nula.
sobrenome = "Willyan";
print(sobrenome);
//sobrenome = null;

// 3 - IF e SWITCH

bool seguirEmFrente = true;

if(seguirEmFrente) {
print('Andar');
} else {
print('Parar');
}

int valorInt = 5;

switch(valorInt) {
    case 0:
        print('Zero');
        break;
    case 1:
        print('Um');
        break;
    case 2:
        print('Dois');
        break;
    default:
        print('Padrão');
}

// 4 - Metodos e Classes

// 5 - Future, Async e Await

// 6 - Orientação a objetos

// 7 - Herança, Polimorfismo e Abstração
}