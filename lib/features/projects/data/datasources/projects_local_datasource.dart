import 'package:flutter/material.dart';
import '../models/project_model.dart';

abstract class ProjectsLocalDataSource {
  Future<List<ProjectModel>> getProjects();
}

class ProjectsLocalDataSourceImpl implements ProjectsLocalDataSource {
  @override
  Future<List<ProjectModel>> getProjects() async {
    await Future.delayed(const Duration(milliseconds: 100));

    return const [
      ProjectModel(
        title: 'O-VanSales',
        description:
            'Mobile ERP solution for van sales management. Integrated with cloud ERP.',
        technologies: ['Flutter', 'ERP', 'Google Maps'],
        color: Colors.blue,
      ),
      ProjectModel(
        title: 'Sahel App',
        description: 'Comprehensive mobile application for Sahel services.',
        technologies: ['Flutter', 'API Integration', 'Provider'],
        color: Colors.cyan,
      ),
      ProjectModel(
        title: 'CB Events',
        description: 'Event management app for Coldwell Banker.',
        technologies: ['Flutter', 'iOS', 'Android'],
        color: Colors.purple,
      ),
      ProjectModel(
        title: 'CB Link',
        description: 'Internal communication tool for Coldwell Banker.',
        technologies: ['Flutter', 'Rest API', 'Notifications'],
        color: Colors.indigo,
      ),
      ProjectModel(
        title: 'Air Cairo',
        description: 'Official mobile application for Air Cairo airline.',
        technologies: ['Flutter', 'Booking System', 'Payment'],
        color: Colors.blueAccent,
      ),
      ProjectModel(
        title: 'Beyti',
        description: 'E-commerce/Loyalty application.',
        technologies: ['Flutter', 'Loyalty Program', 'UI/UX'],
        color: Colors.green,
      ),
      ProjectModel(
        title: 'QuickSeat',
        description: 'Reservation and booking platform.',
        technologies: ['Flutter', 'Reservation', 'Real-time'],
        color: Colors.orange,
      ),
      ProjectModel(
        title: 'BuybackArt',
        description: 'Platform for selling used electronic devices.',
        technologies: ['Flutter', 'E-commerce', 'Estimation'],
        color: Colors.teal,
      ),
      ProjectModel(
        title: 'Hawaha Dent',
        description: 'Dental clinic management application.',
        technologies: ['Flutter', 'Healthcare', 'Appointments'],
        color: Colors.pink,
      ),
      ProjectModel(
        title: 'Khamato',
        description: 'Marketplace application.',
        technologies: ['Flutter', 'Marketplace', 'Cart'],
        color: Colors.amber,
      ),
    ];
  }
}
