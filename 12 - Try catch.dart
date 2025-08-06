//Em nenhum exemplo abaixo, foi utilizado o Finaly que está disponível no Try catch

//Exemplo:
void main() {

    try {
        print((2/0).toInt());
    } catch (e) {
        print('abc');

    }
}

//Exemplo:
void main() {

    try {
        print((2/0).toInt());
    } catch (e) {
        print('printando o erro $e');
    }
}

//Exemplo:
void main() {

    try {
        print((2/0).toInt());
    } catch (e) {
        throw Exception ('Ocorreu um erro xpto'); //retorna um novo erro

    }
}

//Exemplo:
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

//Exemplo:
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

//Exemplo:
void main() {
  
  String user = 'admin';
  String pass = '123';

  if(pass.length <= 6) throw PasswordLengthError();
  
}

class PasswordLengthError implements Exception {
  PasswordLengthError();
  
}

//Exemplo:
void main() {
  
  Login login = Login();

  try {
    login.logar();
  } on PasswordLengthError catch (e) {
    print('Falhou ao logar');
  } catch(e) {
    print('Outro erro');
  }

}

class Login {

  void logar() {

    String user = 'admin';
    String pass = '123';

    if(pass.length <= 6) throw PasswordLengthError();
  }
}

class PasswordLengthError implements Exception {
  PasswordLengthError();

}