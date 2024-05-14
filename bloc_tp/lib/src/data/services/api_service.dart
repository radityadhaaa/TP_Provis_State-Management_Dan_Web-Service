import 'dart:async';
import 'package:http/http.dart' as http;

class ImageBloc {
  final _imageStreamController = StreamController<List<String>>();

  Stream<List<String>> get imageUrl => _imageStreamController.stream;

  fetchImages() async {
    List<String> imageUrl = [];
    for (int i = 0; i < 7; i++) {
      final response =
          await http.get(Uri.parse('https://picsum.photos/200/300?random=$i'));
      if (response.statusCode == 200) {
        print("brer");
        imageUrl.add(response.request!.url.toString());
      } else {
        _imageStreamController.sink.addError('Failed to load image');
        return;
      }
    }
    _imageStreamController.sink.add(imageUrl);
  }

  dispose() {
    _imageStreamController.close();
  }
}
