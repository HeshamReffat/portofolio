import '../entities/certificate.dart';
import '../repositories/certificates_repository.dart';

class GetCertificates {
  final CertificatesRepository repository;

  GetCertificates(this.repository);

  Future<List<Certificate>> call() async {
    return await repository.getCertificates();
  }
}
