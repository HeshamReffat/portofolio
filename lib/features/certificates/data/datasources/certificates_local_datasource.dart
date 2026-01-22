import '../models/certificate_model.dart';

abstract class CertificatesLocalDataSource {
  Future<List<CertificateModel>> getCertificates();
}

class CertificatesLocalDataSourceImpl implements CertificatesLocalDataSource {
  @override
  Future<List<CertificateModel>> getCertificates() async {
    // Simulating delay
    await Future.delayed(const Duration(milliseconds: 100));

    return const [
      CertificateModel(
        title: 'Android Developer Nanodegree',
        issuer: 'Udacity',
        date: '2023',
        credentialUrl: 'https://graduation.udacity.com/confirm/UCVDSKWY',
      ),
      CertificateModel(
        title: 'Mastering Android App Development with Kotlin [XML +COMPOSE]',
        issuer: 'Udemy',
        date: '2025',
        credentialUrl:
            'https://www.udemy.com/certificate/UC-77b2b970-139c-4c12-a3a2-99a1ae846c48/',
      ),
      CertificateModel(
        title: 'The Kotlin Learning Guide',
        issuer: 'Udemy',
        date: '2023',
        credentialUrl:
            'https://www.udemy.com/certificate/UC-d3a6ff89-ec56-4a62-beb7-95b23bb45bcc/',
      ),
      CertificateModel(
        title: 'Master the Coding Interview: Data Structures + Algorithms',
        issuer: 'Udemy',
        date: '2023',
        credentialUrl:
            'https://www.udemy.com/certificate/UC-94cf1e5d-ff52-431f-9452-b38b2138583e/',
      ),
      CertificateModel(
        title: 'The Complete 2022 Flutter & Dart Development Course [Arabic]',
        issuer: 'Udemy',
        date: '2023',
        credentialUrl:
            'https://www.udemy.com/certificate/UC-c57f2f56-8941-4b04-95a4-fd4dff5dcf3f/',
      ),
      CertificateModel(
        title: 'The Complete Flutter Development Guide',
        issuer: 'Udemy',
        date: '2020',
        credentialUrl:
            'https://www.udemy.com/certificate/UC-28d93a8f-7a22-4592-af5a-1147a3ebe49f/',
      ),
    ];
  }
}
