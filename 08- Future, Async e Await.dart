void main() async {
  // Future, Async e Await
  
  String nome = 'Deivid';
  Future<String> cepFuture = getCepByName('Rua JK');
  late String cep;
  
  // cepFuture.then((result) => cep = result);
  
  cep = await cepFuture;
  
  print(cep);
}

// external service
Future<String> getCepByName(String name) {
  // simulando requisição
  return Future.value('86389889');
}