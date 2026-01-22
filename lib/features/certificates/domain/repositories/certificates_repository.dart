import '../entities/certificate.dart';

abstract class CertificatesRepository {
  Future<List<Certificate>> getCertificates();
}
