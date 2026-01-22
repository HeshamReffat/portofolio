import 'package:equatable/equatable.dart';

class Experience extends Equatable {
  final String company;
  final String role;
  final String period;
  final String description;
  final List<String> technologies;

  const Experience({
    required this.company,
    required this.role,
    required this.period,
    required this.description,
    required this.technologies,
  });

  @override
  List<Object?> get props => [company, role, period, description, technologies];
}
