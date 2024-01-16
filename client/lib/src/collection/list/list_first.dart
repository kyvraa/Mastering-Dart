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
        List<String> titles = [];
        for (var i = 0; i < jsonBody.length; i++) {
          Map<String, dynamic> dataTitle = jsonBody[i];
          if (dataTitle.containsKey("title")) {
            titles.add(dataTitle["title"]);
          }
        }
        titles.sort();
        for (var title in titles) {
          print('Hasil : ${title[0].toUpperCase() + title.substring(1)}');
        }
      } else {
        print('wee');
      }
    } else {
      print('Error: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
