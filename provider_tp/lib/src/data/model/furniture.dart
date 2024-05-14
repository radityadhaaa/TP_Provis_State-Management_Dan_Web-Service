import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart' show immutable;
import 'package:office_furniture_store/src/data/model/furniture_color.dart';

@immutable
class Furniture extends Equatable {
  final int id;
  final String title;
  final String description;
  final double price;
  final int quantity;
  final double score;
  final String imageUrl;
  final bool isFavorite;
  final bool cart;
  final List<FurnitureColor> colors;

  const Furniture({
    required this.id,
    this.cart = false,
    required this.title,
    required this.description,
    required this.price,
    this.quantity = 1,
    required this.score,
    required this.imageUrl,
    this.isFavorite = false,
    required this.colors,
  });

  @override
  List<Object?> get props =>
      [id, cart, title, description, price, quantity, score, imageUrl, colors];

  Furniture copyWith({
    int? id,
    String? title,
    String? description,
    double? price,
    int? quantity,
    double? score,
    String? imageUrl,
    bool? cart,
    List<FurnitureColor>? colors,
    bool? isFavorite,
  }) {
    return Furniture(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      score: score ?? this.score,
      imageUrl: imageUrl ?? this.imageUrl,
      isFavorite: isFavorite ?? this.isFavorite,
      cart: cart ?? this.cart,
      colors: colors ?? this.colors,
    );
  }
}
