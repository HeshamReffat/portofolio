import '../entities/experience.dart';
import '../repositories/experience_repository.dart';

class GetExperience {
  final ExperienceRepository repository;

  GetExperience(this.repository);

  Future<List<Experience>> call() async {
    return await repository.getExperience();
  }
}
