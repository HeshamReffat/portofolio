import 'package:flutter/material.dart';
import '../../domain/entities/experience.dart';
import '../../domain/usecases/get_experience.dart';

class ExperienceViewModel extends ChangeNotifier {
  final GetExperience _getExperience;

  ExperienceViewModel(this._getExperience) {
    loadExperience();
  }

  List<Experience> _experience = [];
  List<Experience> get experience => _experience;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> loadExperience() async {
    _isLoading = true;
    notifyListeners();

    try {
      _experience = await _getExperience();
    } catch (e) {
      debugPrint('Error loading experience: $e');
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
