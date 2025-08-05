void main() {
  List<String> lista = ['Deivid', 'Willyan'];

  // chave, valor
  Map<String, String> mapa = {'chave': 'valor'};
  print(mapa['chave']);

  mapa.putIfAbsent('novaChave', () => 'novoValor');
  print(mapa);

  mapa['novaChaveDois'] = 'novoValorDois';
  print(mapa);

  mapa.remove('chave');
  print(mapa);

  mapa['novaChaveDois'] = 'atualizado';
  print(mapa);

  mapa.update('novaChaveDois', (value) => 'atualizando2');
  print(mapa);

  mapa.forEach((chave, valor) => print('ah chave eh: $chave, o valor eh: $valor'));

  mapa.keys.forEach(print);
  mapa.values.forEach(print);
}