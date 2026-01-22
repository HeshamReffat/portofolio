import 'package:flutter/material.dart';
import '../../domain/entities/hero_data.dart';
import '../../domain/usecases/get_hero_data.dart';

class HomeViewModel extends ChangeNotifier {
  final GetHeroData getHeroData;

  HomeViewModel(this.getHeroData);

  HeroData? _heroData;
  bool _isLoading = false;
  String? _error;

  HeroData? get heroData => _heroData;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> loadHeroData() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      _heroData = await getHeroData();
      _isLoading = false;
      notifyListeners();
    } catch (e) {
      _error = e.toString();
      _isLoading = false;
      notifyListeners();
    }
  }
}
