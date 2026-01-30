# Flutter Portfolio - Context & Instructions

## Project Overview

This is a personal portfolio website built with **Flutter**, specifically optimized for the **Web**. It employs a strict **MVVM Clean Architecture** pattern to ensure separation of concerns, testability, and scalability.

### Key Characteristics
- **Type:** Flutter Web Application
- **Architecture:** Clean Architecture + MVVM (Model-View-ViewModel)
- **State Management:** Provider
- **Dependency Injection:** GetIt
- **Localization:** Easy Localization (English & Arabic)
- **Responsive Design:** Custom breakpoints for Mobile, Tablet, and Desktop

## 🏗 Architecture & Structure

The project follows a feature-based directory structure. Each feature is self-contained with its own Clean Architecture layers.

```
lib/
├── core/                          # Shared resources
│   ├── constants/                 # AppConstants (Colors, Strings, Dims)
│   ├── theme/                     # AppTheme configuration
│   ├── utils/                     # Shared Widgets & Helpers
│   └── di/                        # Dependency Injection (injection_container.dart)
│
├── features/                      # Feature modules (e.g., home, about, projects)
│   ├── [feature_name]/
│   │   ├── data/
│   │   │   ├── models/           # DTOs (Data Transfer Objects), usually extends Entities
│   │   │   ├── datasources/      # Remote/Local data fetching logic
│   │   │   └── repositories/     # Implementation of Domain Repositories
│   │   ├── domain/
│   │   │   ├── entities/         # Pure Dart business objects
│   │   │   ├── repositories/     # Abstract Repository interfaces
│   │   │   └── usecases/         # Single-responsibility business logic
│   │   └── presentation/
│   │       ├── pages/            # Full screen views
│   │       ├── widgets/          # Feature-specific components
│   │       └── viewmodels/       # ChangeNotifier classes for state
│
└── main.dart                      # Entry point, Provider setup, Theme setup
```

## 🛠 Building & Running

**Prerequisites:** Flutter SDK installed (Targeting Web).

- **Install Dependencies:**
  ```bash
  flutter pub get
  ```

- **Run on Web (Chrome):**
  ```bash
  flutter run -d chrome
  ```

- **Build for Web:**
  ```bash
  flutter build web --release
  ```

- **Run Tests:**
  ```bash
  flutter test
  ```

## 📝 Development Conventions

### 1. New Feature Workflow
When adding a new feature (e.g., `blog`), follow this order:
1.  **Domain:** Define `Entity`, `Repository` interface, and `UseCases`.
2.  **Data:** Create `Model` (extends Entity), `DataSource`, and `RepositoryImpl`.
3.  **Presentation:** Create `ViewModel`, `Page`, and `Widgets`.
4.  **DI:** Register all new classes in `lib/core/di/injection_container.dart`.
5.  **Provider:** Add the `ViewModel` to the `MultiProvider` list in `lib/main.dart`.

### 2. State Management
- Use `ChangeNotifier` for ViewModels.
- ViewModels should expose getters for UI state (e.g., `isLoading`, `data`, `error`).
- UI components (Pages/Widgets) consume state via `context.watch<ViewModel>()` or `Consumer<ViewModel>`.
- Trigger actions via `context.read<ViewModel>().someAction()`.

### 3. Styling & Theming
- **Colors:** Always use `AppColors` from `lib/core/constants/app_constants.dart`.
- **Text:** Use `EasyLocalization` (`.tr()`) for all user-facing strings. Keys are in `assets/translations/`.
- **Responsiveness:** Use `ResponsiveWidget` (if available) or `LayoutBuilder` to adapt UI.
- **Theme:** centralized in `AppTheme`.

### 4. Dependency Injection
- Use the global service locator `sl` (from `get_it`).
- Register UseCases and Repositories as `lazySingleton`.
- Register ViewModels as `factory` (usually) or `singleton` depending on need.

### 5. Constants
- `AppStrings` for localization keys and static URLs.
- `AppDimensions` for padding, border radius, and icon sizes.
- `AppDurations` for animation timings.

## 🔑 Key Files
- `lib/main.dart`: App entry point, providers, and localization setup.
- `lib/core/di/injection_container.dart`: Central registry for all app dependencies.
- `lib/core/constants/app_constants.dart`: Central source of truth for colors and strings.
- `lib/features/home/presentation/pages/home_page.dart`: Main landing page acting as a scrollable container for other sections.
