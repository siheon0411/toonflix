import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  void getTodaysToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response =
        await http.get(url); // 비동기식(async) 프로그래밍: 서버가 응답할때까지 프로그램을 기다리게함
    if (response.statusCode == 200) {
      print(response.body);
    }
    throw Error();
  }
}
