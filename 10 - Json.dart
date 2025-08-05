import 'dart:convert';

void main() {
  String json = '''
  {
    "usuario": "deivide@email.com",
    "senha": 123456,
    "permissoes": [
      "owner", "admin"
    ]
  }
  ''';

  print(json);

  Map resultJson = jsonDecode(json);
  print(resultJson['permissoes'][0]);
}

import 'dart:convert';

void main() {
  Map mapa = {
    'nome': 'deivid',
    'pass': 123,
    'permissions': ['owner', 'admin']
  };

  var result = jsonEncode(mapa);
  print(result);
}