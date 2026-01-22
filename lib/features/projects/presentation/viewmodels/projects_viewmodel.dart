import 'package:flutter/material.dart';
import '../../domain/entities/project.dart';
import '../../domain/usecases/get_projects.dart';

class ProjectsViewModel extends ChangeNotifier {
  final GetProjects getProjects;

  ProjectsViewModel(this.getProjects);

  List<Project> _projects = [];
  bool _isLoading = false;
  String? _error;

  List<Project> get projects => _projects;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> loadProjects() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      _projects = await getProjects();
      _isLoading = false;
      notifyListeners();
    } catch (e) {
      _error = e.toString();
      _isLoading = false;
      notifyListeners();
    }
  }
}
