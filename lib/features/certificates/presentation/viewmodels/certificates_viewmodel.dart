import 'package:flutter/material.dart';
import '../../domain/entities/certificate.dart';
import '../../domain/usecases/get_certificates.dart';

class CertificatesViewModel extends ChangeNotifier {
  final GetCertificates _getCertificates;

  CertificatesViewModel(this._getCertificates) {
    loadCertificates();
  }

  List<Certificate> _certificates = [];
  List<Certificate> get certificates => _certificates;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> loadCertificates() async {
    _isLoading = true;
    notifyListeners();

    try {
      _certificates = await _getCertificates();
    } catch (e) {
      debugPrint('Error loading certificates: $e');
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
