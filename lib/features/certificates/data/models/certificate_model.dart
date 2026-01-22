import '../../domain/entities/certificate.dart';

class CertificateModel extends Certificate {
  const CertificateModel({
    required super.title,
    required super.issuer,
    required super.date,
    required super.credentialUrl,
    super.imageUrl,
  });

  factory CertificateModel.fromJson(Map<String, dynamic> json) {
    return CertificateModel(
      title: json['title'],
      issuer: json['issuer'],
      date: json['date'],
      credentialUrl: json['credentialUrl'],
      imageUrl: json['imageUrl'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'issuer': issuer,
      'date': date,
      'credentialUrl': credentialUrl,
      'imageUrl': imageUrl,
    };
  }
}
