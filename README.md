# Flutter Portfolio - MVVM Clean Architecture

A modern, responsive portfolio website built with Flutter Web following **MVVM Clean Architecture** and **feature-based** organization.

## 🏗️ Architecture

This project follows **Clean Architecture** principles with **MVVM** pattern and is organized by features.

### Project Structure

```
lib/
├── core/                          # Core utilities shared across features
│   ├── constants/                 # App-wide constants (colors, strings, etc.)
│   ├── theme/                     # App theme configuration
│   ├── utils/                     # Reusable widgets and utilities
│   └── di/                        # Dependency injection setup
│
├── features/                      # Feature-based modules
│   ├── home/                      # Home feature
│   │   ├── data/
│   │   │   ├── models/           # Data models
│   │   │   ├── datasources/      # Local/Remote data sources
│   │   │   └── repositories/     # Repository implementations
│   │   ├── domain/
│   │   │   ├── entities/         # Business entities
│   │   │   ├── repositories/     # Repository interfaces
│   │   │   └── usecases/         # Business logic
│   │   └── presentation/
│   │       ├── pages/            # UI pages
│   │       ├── widgets/          # Feature-specific widgets
│   │       └── viewmodels/       # ViewModels (state management)
│   │
│   ├── projects/                  # Projects feature
│   ├── skills/                    # Skills feature
│   ├── about/                     # About feature
│   └── contact/                   # Contact feature
│
└── main.dart                      # App entry point
```

## 🎯 Clean Architecture Layers

### 1. **Domain Layer** (Business Logic)
- **Entities**: Pure Dart classes representing business objects
- **Repositories**: Abstract interfaces defining data operations
- **Use Cases**: Single-responsibility business logic operations

### 2. **Data Layer** (Data Management)
- **Models**: Data transfer objects with JSON serialization
- **Data Sources**: Concrete implementations for data fetching (local/remote)
- **Repository Implementations**: Bridge between domain and data sources

### 3. **Presentation Layer** (UI)
- **Pages**: Full-screen UI components
- **Widgets**: Reusable UI components
- **ViewModels**: State management using Provider/ChangeNotifier

## 🔧 Technologies & Packages

- **Flutter Web**: Cross-platform framework
- **Provider**: State management (MVVM pattern)
- **GetIt**: Dependency injection
- **Equatable**: Value equality for entities
- **Google Fonts**: Typography
- **Font Awesome**: Icons
- **Animated Text Kit**: Text animations
- **URL Launcher**: External links

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (3.10.4 or higher)
- Chrome browser (for web development)

### Installation

1. Clone the repository
```bash
git clone <your-repo-url>
cd flutter_portfolio
```

2. Install dependencies
```bash
flutter pub get
```

3. Run the app
```bash
flutter run -d chrome
```

## 📱 Features

- ✨ **Hero Section**: Animated introduction with typewriter effect
- 👤 **About Section**: Personal introduction with glassmorphism design
- 💼 **Projects Section**: Interactive project cards with hover effects
- 🎯 **Skills Section**: Animated skill progress indicators
- 📧 **Contact Section**: Social media links with animations
- 🎨 **Modern UI**: Gradient backgrounds, glassmorphism, smooth animations
- 📱 **Responsive**: Adapts to different screen sizes

## 🎨 Design Features

- **Animated gradient background**
- **Glassmorphism effects**
- **Smooth hover animations**
- **Floating navigation bar**
- **Typewriter text animations**
- **Progress bar animations**
- **Glowing button effects**

## 🔄 State Management Flow

```
UI (Widget) → ViewModel → Use Case → Repository → Data Source
     ↑                                                  ↓
     └──────────── notifyListeners() ←─────────────────┘
```

## 📝 Adding a New Feature

1. Create feature directory structure:
```bash
mkdir -p lib/features/new_feature/{data/{models,datasources,repositories},domain/{entities,repositories,usecases},presentation/{pages,widgets,viewmodels}}
```

2. Implement layers in order:
   - Domain entities and repository interfaces
   - Data models and implementations
   - Use cases
   - ViewModels
   - UI components

3. Register dependencies in `core/di/injection_container.dart`

4. Add ViewModel provider in `main.dart`

## 🎯 Key Principles

- **Separation of Concerns**: Each layer has a single responsibility
- **Dependency Inversion**: High-level modules don't depend on low-level modules
- **Testability**: Easy to unit test each layer independently
- **Scalability**: Easy to add new features without affecting existing code
- **Maintainability**: Clear structure makes code easy to understand and modify

## 📄 License

This project is open source and available under the MIT License.

## 👤 Author

**Hesham Reffat**
- GitHub: [@HeshamReffat](https://github.com/HeshamReffat)
- LinkedIn: [Hesham Reffat](https://linkedin.com/in/HeshamReffat)
- Email: heshamreffat60@gmail.com
- Phone: +201121317375

---

Built with ❤️ using Flutter and Clean Architecture
