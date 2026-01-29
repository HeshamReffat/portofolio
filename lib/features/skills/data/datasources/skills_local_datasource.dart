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
        name: 'Android (Kotlin/Jetpack)',
        level: 0.85,
        icon: FontAwesomeIcons.android,
      ),
      SkillModel(
        name: 'Clean Arch & MVVM',
        level: 0.9,
        icon: FontAwesomeIcons.layerGroup,
      ),
      SkillModel(name: 'State Management (Bloc/Riverpod/GetX)', level: 0.9, icon: FontAwesomeIcons.cubes),
      SkillModel(name: 'PHP Laravel', level: 0.8, icon: FontAwesomeIcons.php),
      SkillModel(name: 'Git/GitHub/GitLab', level: 0.9, icon: FontAwesomeIcons.github),
      SkillModel(name: 'Firebase & GraphQL', level: 0.85, icon: FontAwesomeIcons.fire),
      SkillModel(name: 'REST APIs Integration', level: 0.9, icon: FontAwesomeIcons.server),
      SkillModel(
        name: 'Google Maps & Geolocation',
        level: 0.85,
        icon: FontAwesomeIcons.mapLocationDot,
      ),
      SkillModel(
        name: 'Payment SDKs',
        level: 0.8,
        icon: FontAwesomeIcons.creditCard,
      ),
      SkillModel(
        name: 'SQFlite/Hive/Local DB',
        level: 0.85,
        icon: FontAwesomeIcons.database,
      ),
      SkillModel(
        name: 'UI/UX Implementation',
        level: 0.9,
        icon: FontAwesomeIcons.paintbrush,
      ),
      SkillModel(
        name: 'Unit & Integration Testing',
        level: 0.8,
        icon: FontAwesomeIcons.checkDouble,
      ),
      SkillModel(
        name: 'Problem Solving',
        level: 0.9,
        icon: FontAwesomeIcons.lightbulb,
      ),
      SkillModel(
        name: 'Time Management',
        level: 0.85,
        icon: FontAwesomeIcons.clock,
      ),
    ];
  }
}
