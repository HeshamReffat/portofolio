import '../entities/experience.dart';

abstract class ExperienceRepository {
  Future<List<Experience>> getExperience();
}
