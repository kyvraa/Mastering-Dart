import 'dart:convert';

import 'package:http/http.dart' as http;

void main() {
  loadData();
}

Future<void> loadData() async {
  final String endpoint = 'https://jsonplaceholder.typicode.com/posts';
  try {
    final response = await http.get(Uri.parse(endpoint));
    if (response.statusCode == 200) {
      final dynamic jsonBody = jsonDecode(response.body);
      if (jsonBody is List) {
        for(var i = 0; i <= jsonBody.length - 95; i++){
          print('title : ${jsonBody[i]["title"]}');
        }
      } else {
        print('no');
      }
    } else {
      print('err: ${response.statusCode}');
    }
  } catch (e) {
    print('err: $e');
  }
}
