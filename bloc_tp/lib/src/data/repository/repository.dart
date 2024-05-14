import 'package:flutter/material.dart';
import 'package:office_furniture_store/src/data/model/furniture.dart';
import 'package:office_furniture_store/src/data/model/furniture_color.dart';
import 'package:office_furniture_store/src/data/services/api_service.dart';

class Repository {
  final ImageBloc apiService = ImageBloc();

  Future<List<String>> fetchImageLimited() async {
    await apiService.fetchImages();
    return apiService.imageUrl.first;
  }

  Future<List<Furniture>> getFurnitureList() async {
    const dummyText = """isi1""";

    List<String> imageUrls = await fetchImageLimited();

    List<Furniture> furnitureList = [
      Furniture(
        id: 1,
        quantity: 1,
        isFavorite: false,
        title: 'Comhar All-in-One Standing Desk Glass',
        description: dummyText,
        price: 469.99,
        score: 3.5,
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
        title: 'Ergonomic Gaming Desk with Mouse Pad',
        description: dummyText,
        price: 299.99,
        score: 4.5,
        imageUrl: imageUrls[1],
        colors: <FurnitureColor>[
          FurnitureColor(color: const Color(0xFF5d4037), isSelected: true),
          FurnitureColor(color: const Color(0xFF424242)),
        ],
      ),
      Furniture(
        id: 3,
        quantity: 1,
        isFavorite: false,
        title: 'Kana Pro Bamboo Standing Desk',
        description: dummyText,
        price: 659.99,
        score: 3.0,
        imageUrl: imageUrls[2],
        colors: <FurnitureColor>[
          FurnitureColor(color: const Color(0xFF616161), isSelected: true),
          FurnitureColor(color: const Color(0xFF212121)),
        ],
      ),
      Furniture(
        id: 4,
        quantity: 1,
        isFavorite: false,
        title: 'Soutien Ergonomic Office Chair',
        description: dummyText,
        price: 349.99,
        score: 2.5,
        imageUrl: imageUrls[3],
        colors: <FurnitureColor>[
          FurnitureColor(color: const Color(0xFF455a64), isSelected: true),
          FurnitureColor(color: const Color(0xFF263238)),
        ],
      ),
      Furniture(
        id: 5,
        quantity: 1,
        isFavorite: false,
        title: 'Theodore Standing Desk',
        description: dummyText,
        price: 499.99,
        score: 2.8,
        imageUrl: imageUrls[4],
        colors: <FurnitureColor>[
          FurnitureColor(color: const Color(0xFF5d4037), isSelected: true),
          FurnitureColor(color: const Color(0xFF455a64)),
        ],
      ),
    ];

    return furnitureList;
  }
}
