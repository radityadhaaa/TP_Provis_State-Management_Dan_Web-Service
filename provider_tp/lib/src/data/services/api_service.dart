import 'package:http/http.dart' as http;

class ApiService {
  Future<List<String>> fetchImages() async {
    List<String> imageUrls = [];
    for (int i = 0; i < 7; i++) {
      final response =
          await http.get(Uri.parse('https://picsum.photos/200/300?random=$i'));
      if (response.statusCode == 200) {
        imageUrls.add(response.request!.url.toString());
      } else {
        throw Exception('Failed to load image');
      }
    }
    return imageUrls;
  }
}
