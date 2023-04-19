void main() async {
  print('Inicio del programa');

  try {
    final value = await httpGet('https://test.com');
    print('exito: $value');
  } on Exception {
    print('Tenemos una Exception');
  } catch (err) {
    print('Algo terrible paso: $err');
  } finally {
    print('Fin del try y catch');
  }

  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(Duration(seconds: 1));
  throw Exception('No hay parámetros en el Url');
  //return "Tenemos un valor de la petición";
}
