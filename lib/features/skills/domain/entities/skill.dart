import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Skill extends Equatable {
  final String name;
  final double level;
  final IconData icon;

  const Skill({
    required this.name,
    required this.level,
    required this.icon,
  });

  @override
  List<Object?> get props => [name, level, icon];
}
