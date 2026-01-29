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
            'Mobile Sales & Invoicing Application integrated with O-Blue to enable sales reps to effortlessly create orders, issue and deliver invoices, and print receipts via Bluetooth.',
        technologies: ['Flutter', 'O-Blue', 'Bluetooth', 'ERP'],
        color: Colors.blue,
      ),
      ProjectModel(
        title: 'Fooj',
        description:
            'Platform connecting stable owners with horse owners. Helps owners find the best stables to provide care and attention to their horses.',
        technologies: ['Flutter', 'Stable Management', 'UI/UX'],
        color: Colors.brown,
      ),
      ProjectModel(
        title: 'CB Events',
        description:
            'Event management app for Coldwell Banker. Cycle begins with addition of a lead with an event, operations staff scan QR code using the app.',
        technologies: ['Flutter', 'QR Code', 'MVVM', 'Hive'],
        color: Colors.purple,
      ),
      ProjectModel(
        title: 'CB Link',
        description:
            'Internal communication tool for Coldwell Banker designed to streamline operations for real estate developers and brokers.',
        technologies: ['Flutter', 'Rest API', 'Notifications', 'Bloc'],
        color: Colors.indigo,
      ),
      ProjectModel(
        title: 'Coldwell Banker Egypt',
        description:
            'Premier real estate platform redefining how you buy, sell, and rent properties in Egypt with intuitive user-friendly interface.',
        technologies: ['Flutter', 'Google Maps', 'Geocoding', 'Real Estate'],
        color: Colors.blueGrey,
      ),
      ProjectModel(
        title: 'Air Cairo',
        description:
            'Official mobile application for Air Cairo airline. Upgraded from Flutter 1 to Flutter 2 with push notifications and deep links.',
        technologies: ['Flutter', 'Deep Links', 'Firebase', 'Booking'],
        color: Colors.blueAccent,
      ),
      ProjectModel(
        title: '20Beyti',
        description:
            'Online store for easy & safe shopping experience with free & safe delivery to doorsteps and endless benefits.',
        technologies: ['Flutter', 'QR Scanner', 'E-commerce', 'Firebase'],
        color: Colors.green,
      ),
      ProjectModel(
        title: 'Hawaha Dent',
        description:
            'Dental clinic management application with online radio station and vibrant dental community features.',
        technologies: ['Flutter', 'Audio Player', 'Healthcare', 'Appointments'],
        color: Colors.pink,
      ),
      ProjectModel(
        title: 'Khamato',
        description:
            'Online market for building and finishing materials, designed to be a comprehensive commercial center.',
        technologies: ['Flutter', 'Marketplace', 'Payment Gateway', 'Cubit'],
        color: Colors.amber,
      ),
      ProjectModel(
        title: 'Ceem',
        description:
            'Smartphone application through which you can get thousands of coupons and discount codes from famous places.',
        technologies: ['Flutter', 'Coupons', 'Geocoding', 'Native Calendar'],
        color: Colors.teal,
      ),
      ProjectModel(
        title: 'QuickSeat',
        description:
            'Live reservation system suitable for clubs, bars, lounges, restaurants, etc., allowing online bookings.',
        technologies: ['Flutter', 'Real-time', 'Reservation', 'Background Service'],
        color: Colors.orange,
      ),
      ProjectModel(
        title: 'BuyBackArt',
        description:
            'App for selling old phones, laptops or any electronic devices. Stay a step ahead by selling at best price.',
        technologies: ['Flutter', 'E-commerce', 'Estimation', 'Deployment'],
        color: Colors.cyan,
      ),
      ProjectModel(
        title: 'GrowPharma',
        description:
            'Medical company application specializing in food supplements.',
        technologies: ['Flutter', 'Medical', 'Supplements'],
        color: Colors.lightGreen,
      ),
      ProjectModel(
        title: 'Facility Management',
        description:
            'Resident application that manages compounds and large institutions with various services.',
        technologies: ['Flutter', 'Facility Management', 'Services'],
        color: Colors.deepPurple,
      ),
      ProjectModel(
        title: 'POS (Vendor & User)',
        description:
            'POS application for managing markets, pharmacies, etc. User app to view bills and pay.',
        technologies: ['Flutter', 'POS', 'Payments'],
        color: Colors.redAccent,
      ),
      ProjectModel(
        title: 'Besty Multi Vendor E-commerce',
        description:
            'Robust, scalable, and user-friendly online shopping platform built with PHP Laravel.',
        technologies: ['PHP', 'Laravel', 'MySQL', 'Stripe'],
        color: Colors.deepOrange,
      ),
    ];
  }
}
