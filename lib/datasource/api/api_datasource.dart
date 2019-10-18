import 'package:http/http.dart' as http;

class ApiDatasource {
  Future<http.Response> fetchPost() async {
    return http.get('https://jsonplaceholder.typicode.com/posts/1');
  }
}
