import 'dart:convert';

import 'package:http/http.dart' as http;

class Data {
  final String title;
  final int id;

  Data(this.title, this.id);
}

Future<List<Data>> fromApi() async {
  final api = await http.get(Uri.parse('https://fakestoreapi.com/products/'));
  final response = jsonDecode(api.body);
  List<Data> data = [];
  for (var u in response) {
    Data d = Data(u['title'], u['id']);
    data.add(d);
  }
  return data;
}
