import 'package:flutter/material.dart';
import '../../domain/entities/skill.dart';
import '../../domain/usecases/get_skills.dart';

class SkillsViewModel extends ChangeNotifier {
  final GetSkills getSkills;

  SkillsViewModel(this.getSkills);

  List<Skill> _skills = [];
  bool _isLoading = false;
  String? _error;

  List<Skill> get skills => _skills;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> loadSkills() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      _skills = await getSkills();
      _isLoading = false;
      notifyListeners();
    } catch (e) {
      _error = e.toString();
      _isLoading = false;
      notifyListeners();
    }
  }
}
