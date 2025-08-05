//Ex:
void main() {

    try {
        print((2/0).toInt());
    } catch (e) {
        print('abc');

    }
}

//Ex:
void main() {

    try {
        print((2/0).toInt());
    } catch (e) {
        print('printando o erro $e');
    }
}

//Ex:
void main() {

    try {
        print((2/0).toInt());
    } catch (e) {
        throw Exception ('Ocorreu um erro xpto'); //retorna um novo erro

    }
}

//Ex:
void main() {
  try { // tentar alguma coisa
    print((2 / 0).toInt());
  } catch (e, stackTrace) { // capturar a falha
    print('printando o erro $e');
    // rethrow; // propagar o erro
    // throw Exception('Ocorreu um erro xpto'); // retornar um novo erro
    print('$stackTrace');
    //throw CustomError('erro customizado');
    print('abc');
  }
}

//Ex:
void main() {
  try { // tentar alguma coisa
    print((2 / 0).toInt());
  } catch (e, stackTrace) { // capturar a falha
    print('printando o erro $e');
    // rethrow; // propagar o erro
    // throw Exception('Ocorreu um erro xpto'); // retornar um novo erro

    throw CustomError('erro customizado');
    
  }
}

class CustomError implements Exception {
  final String error;
  CustomError(this.error);
}