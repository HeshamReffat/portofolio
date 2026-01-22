import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Project extends Equatable {
  final String title;
  final String description;
  final List<String> technologies;
  final Color color;

  const Project({
    required this.title,
    required this.description,
    required this.technologies,
    required this.color,
  });

  @override
  List<Object?> get props => [title, description, technologies, color];
}
