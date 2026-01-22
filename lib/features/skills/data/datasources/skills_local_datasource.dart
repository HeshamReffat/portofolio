import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../models/skill_model.dart';

abstract class SkillsLocalDataSource {
  Future<List<SkillModel>> getSkills();
}

class SkillsLocalDataSourceImpl implements SkillsLocalDataSource {
  @override
  Future<List<SkillModel>> getSkills() async {
    await Future.delayed(const Duration(milliseconds: 100));

    return const [
      SkillModel(name: 'Flutter', level: 0.95, icon: FontAwesomeIcons.mobile),
      SkillModel(name: 'Dart', level: 0.95, icon: FontAwesomeIcons.code),
      SkillModel(
        name: 'Android Native',
        level: 0.85,
        icon: FontAwesomeIcons.android,
      ),
      SkillModel(
        name: 'Clean Arch',
        level: 0.9,
        icon: FontAwesomeIcons.layerGroup,
      ),
      SkillModel(name: 'PHP Laravel', level: 0.8, icon: FontAwesomeIcons.php),
      SkillModel(name: 'Git', level: 0.9, icon: FontAwesomeIcons.github),
      SkillModel(name: 'Firebase', level: 0.85, icon: FontAwesomeIcons.fire),
      SkillModel(name: 'REST APIs', level: 0.9, icon: FontAwesomeIcons.server),
      SkillModel(
        name: 'Provider/Bloc',
        level: 0.9,
        icon: FontAwesomeIcons.cubes,
      ),
      SkillModel(
        name: 'Google Maps',
        level: 0.85,
        icon: FontAwesomeIcons.mapLocationDot,
      ),
      SkillModel(
        name: 'Payment Integration',
        level: 0.8,
        icon: FontAwesomeIcons.creditCard,
      ),
      SkillModel(name: 'Kotlin', level: 0.75, icon: FontAwesomeIcons.code),
      SkillModel(name: 'Java', level: 0.75, icon: FontAwesomeIcons.java),
      SkillModel(
        name: 'SQFlite/Hive',
        level: 0.85,
        icon: FontAwesomeIcons.database,
      ),
      SkillModel(
        name: 'UI/UX Implementation',
        level: 0.9,
        icon: FontAwesomeIcons.paintbrush,
      ),
    ];
  }
}
