import 'package:http/http.dart' as http;
import 'dart:convert';

//we take a url and make a get query, returning the body
class NetworkHelper {
  NetworkHelper(this.url);
  final String url;

  Future getData() async {
    //this get method return a Future response so we have to wait
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;
      print(data);
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
