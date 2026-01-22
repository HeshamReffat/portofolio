import '../../domain/entities/certificate.dart';
import '../../domain/repositories/certificates_repository.dart';
import '../datasources/certificates_local_datasource.dart';

class CertificatesRepositoryImpl implements CertificatesRepository {
  final CertificatesLocalDataSource localDataSource;

  CertificatesRepositoryImpl({required this.localDataSource});

  @override
  Future<List<Certificate>> getCertificates() async {
    return await localDataSource.getCertificates();
  }
}
