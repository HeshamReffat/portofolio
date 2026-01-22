import '../../domain/entities/experience.dart';

class ExperienceModel extends Experience {
  const ExperienceModel({
    required super.company,
    required super.role,
    required super.period,
    required super.description,
    required super.technologies,
  });

  factory ExperienceModel.fromJson(Map<String, dynamic> json) {
    return ExperienceModel(
      company: json['company'],
      role: json['role'],
      period: json['period'],
      description: json['description'],
      technologies: List<String>.from(json['technologies']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'company': company,
      'role': role,
      'period': period,
      'description': description,
      'technologies': technologies,
    };
  }
}
