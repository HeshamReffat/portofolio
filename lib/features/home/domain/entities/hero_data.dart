import 'package:equatable/equatable.dart';

class HeroData extends Equatable {
  final String name;
  final List<String> roles;
  final String ctaText;

  const HeroData({
    required this.name,
    required this.roles,
    required this.ctaText,
  });

  @override
  List<Object?> get props => [name, roles, ctaText];
}
