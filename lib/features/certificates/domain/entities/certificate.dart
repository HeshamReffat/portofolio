import 'package:equatable/equatable.dart';

class Certificate extends Equatable {
  final String title;
  final String issuer;
  final String date;
  final String credentialUrl;
  final String imageUrl; // Optional: for certificate preview

  const Certificate({
    required this.title,
    required this.issuer,
    required this.date,
    required this.credentialUrl,
    this.imageUrl = '',
  });

  @override
  List<Object?> get props => [title, issuer, date, credentialUrl, imageUrl];
}
