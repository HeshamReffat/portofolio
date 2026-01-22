import '../../domain/entities/hero_data.dart';

class HeroDataModel extends HeroData {
  const HeroDataModel({
    required super.name,
    required super.roles,
    required super.ctaText,
  });

  factory HeroDataModel.fromJson(Map<String, dynamic> json) {
    return HeroDataModel(
      name: json['name'] as String,
      roles: List<String>.from(json['roles'] as List),
      ctaText: json['ctaText'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'roles': roles,
      'ctaText': ctaText,
    };
  }
}
