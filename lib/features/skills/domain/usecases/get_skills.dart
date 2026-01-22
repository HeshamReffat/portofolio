import '../entities/skill.dart';
import '../repositories/skills_repository.dart';

class GetSkills {
  final SkillsRepository repository;

  GetSkills(this.repository);

  Future<List<Skill>> call() async {
    return await repository.getSkills();
  }
}
