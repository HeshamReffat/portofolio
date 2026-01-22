import '../../domain/entities/skill.dart';
import '../../domain/repositories/skills_repository.dart';
import '../datasources/skills_local_datasource.dart';

class SkillsRepositoryImpl implements SkillsRepository {
  final SkillsLocalDataSource localDataSource;

  SkillsRepositoryImpl(this.localDataSource);

  @override
  Future<List<Skill>> getSkills() async {
    return await localDataSource.getSkills();
  }
}
