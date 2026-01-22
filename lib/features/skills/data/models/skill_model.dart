import 'package:flutter/material.dart';
import '../../domain/entities/skill.dart';

class SkillModel extends Skill {
  const SkillModel({
    required super.name,
    required super.level,
    required super.icon,
  });

  factory SkillModel.fromJson(Map<String, dynamic> json) {
    return SkillModel(
      name: json['name'] as String,
      level: json['level'] as double,
      icon: IconData(json['iconCode'] as int, fontFamily: json['fontFamily'] as String?),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'level': level,
      'iconCode': icon.codePoint,
      'fontFamily': icon.fontFamily,
    };
  }
}
