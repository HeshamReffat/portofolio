# GEMINI.md - Flutter Portfolio Context

## Project Overview
This is a modern, responsive portfolio website built with **Flutter Web** following **MVVM Clean Architecture** principles and **feature-based** organization.

### Core Technologies
- **Framework**: Flutter (Stable channel)
- **State Management**: Provider (ChangeNotifier)
- **Dependency Injection**: GetIt (Service Locator)
- **Localization**: `easy_localization` (Supporting English & Arabic)
- **Typography**: `google_fonts` (using **Cairo** for dual-language support)
- **Animations**: `animated_text_kit`, custom `TweenAnimationBuilder`, and CSS animations in `index.html`.
- **UI Styles**: Glassmorphism, animated gradients, and responsive layouts.

## Architecture
The project is divided into `core/` and `features/`:
- **core/**: App-wide constants, theme, dependency injection, and shared utilities (e.g., `ResponsiveWidget`, `AnimatedBackground`).
- **features/**: Each feature (home, about, experience, projects, skills, certificates, contact) contains:
    - **data/**: Models (JSON serialization) and DataSources (Local/Mock).
    - **domain/**: Entities and Repository interfaces.
    - **presentation/**: Pages, ViewModels, and Feature-specific widgets.

## Building and Running
- **Install Dependencies**: `flutter pub get`
- **Run Locally (Debug)**: `flutter run -d chrome`
- **Build for Release (Web)**: `flutter build web --release --base-href "/portofolio/"`
- **Format Code**: `dart format .`
- **Analyze Code**: `flutter analyze`

## Deployment
The project is configured for **GitHub Pages** via a GitHub Action (`.github/workflows/deploy.yml`). 
- **Base HREF**: Must be set to `"/portofolio/"` (or the repository name) for assets to resolve correctly on GitHub Pages.
- **Assets**: All assets are stored in `assets/` and declared in `pubspec.yaml`.
    - Images: `assets/images/`
    - Icons: `assets/icon/`
    - Translations: `assets/translations/`

## Key Implementation Details
- **Localization**: Uses JSON files in `assets/translations/`. The `path` in `EasyLocalization` must be `assets/translations`.
- **RTL Support**: Switched to **Cairo** font to ensure Arabic characters display correctly.
- **Splash Screen**: Custom animated splash screen implemented in `web/index.html` with a pulse animation.
- **Responsive UI**: Uses a `ResponsiveWidget` utility and `MediaQuery` breakpoints (Mobile: 600, Tablet: 1200).
- **Smooth Navigation**: Floating navigation bar with `Scrollable.ensureVisible` for section-based scrolling.

## Known Issues & Tips
- **Asset Loading on Web**: When deploying to a sub-path (like GitHub Pages), ensure the `base` tag in `index.html` is updated (handled by the build command). Refer to assets using the full project path (e.g., `assets/images/profile.jpg`).
- **Easy Localization on Web**: If assets fail to load, verify that the `path` matches the folder name exactly and that the folder is included in `pubspec.yaml`.
- **CanvasKit vs HTML**: The app can be run with `--web-renderer html` for better compatibility or `canvaskit` for better performance.
