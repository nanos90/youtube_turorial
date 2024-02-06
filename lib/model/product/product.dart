import 'package:json_annotation/json_annotation.dart';
part 'product.g.dart';

@JsonSerializable()
class Product {
  @JsonKey(name: 'id')
  String? id;

  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'description')
  String? description;

  @JsonKey(name: 'category')
  String? category;

  @JsonKey(name: 'image')
  String? image;

  @JsonKey(name: 'offer')
  bool? offer;

  @JsonKey(name: 'price')
  double? price;

  @JsonKey(name: 'brand')
  String? brand;

  Product({
    this.id,
    this.name,
    this.description,
    this.category,
    this.image,
    this.offer,
    this.price,
    this.brand,
  });

  factory Product.fromjson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}