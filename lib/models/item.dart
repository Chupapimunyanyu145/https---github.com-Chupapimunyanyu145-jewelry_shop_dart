import 'package:jewelry_shop_dart/enums/category.dart';

class Item {
  final int id;
  final String name;
  final String descriptions;
  final String image;
  final int price;
  final String color;
  final Category category;
  final ItemSpecifications specifications;
  final bool isFavorite;

  Item({
    required this.id,
    required this.name,
    this.descriptions =
        'Lorem ipsum iodfisndf nsdifnsoind niofsdnfo sdifnsod sidnfosdif nifosiof g  no0snfiobnsofs nofiosob dbdfbndb seinbosieb bndgibnd ikpoe iorhngoifbs  hrois hrgosidf rgofigb hr[gq r oirhfgosi onifh09gio hgisdfdvobhrhgio ehfdsfgoh',
    required this.image,
    required this.price,
    required this.category,
    this.color = 'White',
    required this.specifications,
    required this.isFavorite,
  });

  Item copyWith({
    int? id,
    String? name,
    String? descriptions,
    String? image,
    int? price,
    Category? category,
    ItemSpecifications? specifications,
    bool? isFavorite,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      descriptions: descriptions ?? this.descriptions,
      image: image ?? this.image,
      price: price ?? this.price,
      category: category ?? this.category,
      specifications: specifications ?? this.specifications,
      isFavorite: isFavorite ?? this.isFavorite, 
    );
  }
}

class ItemSpecifications {
  final String category;
  final String collection;
  final String model;
  final String material;
  final String insert;
  final String country;
  final String weight;

  const ItemSpecifications({
    required this.category,
    required this.collection,
    required this.model,
    required this.material,
    required this.insert,
    required this.country,
    required this.weight,
  });
} 