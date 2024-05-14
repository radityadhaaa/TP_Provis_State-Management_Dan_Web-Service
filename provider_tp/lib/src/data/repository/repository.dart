import 'package:flutter/material.dart';
// import 'package:office_furniture_store/core/app_asset.dart';
import 'package:office_furniture_store/src/data/model/furniture.dart';
import 'package:office_furniture_store/src/data/model/furniture_color.dart';
import 'package:office_furniture_store/src/data/services/api_service.dart';

class Repository {
  final ApiService apiService = ApiService();
  int counter = 0;

  Future<List<String>> fetchImageLimited() async {
    final List<String> imageUrls = await apiService.fetchImages();
    return imageUrls;
  }

  Future<List<Furniture>> getFurnitureList() async {
    const dummyText = """isi1""";

    List<String> imageUrls = await fetchImageLimited();

    List<Furniture> furnitureList = [
      Furniture(
        id: 1,
        quantity: 1,
        isFavorite: false,
        title: 'list1',
        description: dummyText,
        price: 469.99,
        score: 3.5,
        // imageUrl: await apiService.fetchImage(),
        // imageUrl: await fetchImageLimited(),
        imageUrl: imageUrls[0],
        colors: <FurnitureColor>[
          FurnitureColor(color: const Color(0xFF616161), isSelected: true),
          FurnitureColor(color: const Color(0xFF424242)),
        ],
      ),
      Furniture(
        id: 2,
        isFavorite: false,
        quantity: 1,
        title: 'list2',
        description: dummyText,
        price: 299.99,
        score: 4.5,
        // imageUrl: await apiService.fetchImage(),
        imageUrl: imageUrls[0],
        colors: <FurnitureColor>[
          FurnitureColor(color: const Color(0xFF5d4037), isSelected: true),
          FurnitureColor(color: const Color(0xFF424242)),
        ],
      ),
      Furniture(
        id: 3,
        quantity: 1,
        isFavorite: false,
        title: 'list3',
        description: dummyText,
        price: 659.99,
        score: 3.0,
        // imageUrl: await apiService.fetchImage(),
        imageUrl: imageUrls[0],
        colors: <FurnitureColor>[
          FurnitureColor(color: const Color(0xFF616161), isSelected: true),
          FurnitureColor(color: const Color(0xFF212121)),
        ],
      ),
      Furniture(
        id: 4,
        quantity: 1,
        isFavorite: false,
        title: 'list4',
        description: dummyText,
        price: 349.99,
        score: 2.5,
        // imageUrl: await apiService.fetchImage(),
        imageUrl: imageUrls[0],
        colors: <FurnitureColor>[
          FurnitureColor(color: const Color(0xFF455a64), isSelected: true),
          FurnitureColor(color: const Color(0xFF263238)),
        ],
      ),
      Furniture(
        id: 5,
        quantity: 1,
        isFavorite: false,
        title: 'list5',
        description: dummyText,
        price: 499.99,
        score: 2.8,
        // imageUrl: await apiService.fetchImage(),
        imageUrl: imageUrls[0],
        colors: <FurnitureColor>[
          FurnitureColor(color: const Color(0xFF5d4037), isSelected: true),
          FurnitureColor(color: const Color(0xFF455a64)),
        ],
      ),
    ];

    return furnitureList;
  }

  // Future<String> fetchImage() async {
  //   // Ganti dengan URL endpoint API Anda
  //   final String apiUrl = 'https://picsum.photos/200/300';

  //   // Melakukan request GET ke API
  //   final response = await http.get(Uri.parse(apiUrl));

  //   // Mengecek jika request berhasil
  //   if (response.statusCode == 200) {
  //     // Mengubah response body menjadi Map
  //     final Map<String, dynamic> data = jsonDecode(response.body);

  //     // Mengambil URL gambar dari data (ganti 'imageUrl' dengan key yang sesuai)
  //     final String imageUrl = data['imageUrl'];

  //     return imageUrl;
  //   } else {
  //     throw Exception('Failed to load image from API');
  //   }
  // }
}
