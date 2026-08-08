# 🏋️ Fitness App UI

<p align="center">
  <b>A modern and responsive Fitness App UI built with Flutter</b>
</p>

<p align="center">
  A clean fitness experience featuring workout plans, daily challenges, weekly schedules, user metrics, profile information, and interactive Rive animations.
</p>

<p align="center">

![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?style=for-the-badge&logo=flutter)
![Dart](https://img.shields.io/badge/Dart-3.x-0175C2?style=for-the-badge&logo=dart)
![Rive](https://img.shields.io/badge/Rive-Animation-7B61FF?style=for-the-badge)
![BLoC](https://img.shields.io/badge/State%20Management-BLoC-42A5F5?style=for-the-badge)
![Hive](https://img.shields.io/badge/Local%20Storage-Hive-FFB300?style=for-the-badge)
![GoRouter](https://img.shields.io/badge/Navigation-GoRouter-00A86B?style=for-the-badge)

</p>

---

## 📱 About The Project

**Fitness App UI** is a modern Flutter application designed to provide a clean and engaging fitness experience.

The project focuses on:

- 🎨 Modern and minimal UI
- 📱 Responsive layouts
- 🏃 Fitness workout plans
- 🔥 Daily challenges
- 📅 Weekly workout schedule
- 📊 Fitness metrics
- 👤 User profile
- 🎞️ Interactive Rive animation
- 🧭 Declarative navigation with GoRouter
- 💾 Local storage with Hive
- 🧩 Reusable Flutter widgets

The project was built with a focus on **clean code, reusable components, scalable structure, and maintainable UI architecture**.

---

## ✨ Features

### 🏠 Home

- Personalized greeting
- Current date display
- Daily fitness challenge
- Weekly schedule selector
- Workout plan cards
- Difficulty indicators
- Trainer information
- Social media shortcuts
- Interactive Rive animation

### 👤 Profile

- User profile section
- Fitness metrics
- Starting weight information
- Activity history
- Statistics
- Running routes
- Equipment information
- Best-time section

### 🎨 UI & Design

- Material 3
- Custom design tokens
- Consistent spacing system
- Custom color palette
- Rounded cards
- Soft shadows
- Responsive layouts
- Reusable UI components

---

## 🛠️ Tech Stack

| Technology         | Purpose                      |
| ------------------ | ---------------------------- |
| **Flutter**        | Cross-platform UI framework  |
| **Dart**           | Programming language         |
| **flutter_bloc**   | State management             |
| **GoRouter**       | Application navigation       |
| **Hive**           | Local data storage           |
| **Hive Flutter**   | Flutter integration for Hive |
| **Rive**           | Interactive animations       |
| **Device Preview** | Responsive device testing    |
| **Intl**           | Date and time formatting     |

---

## 🏗️ Project Architecture

The project follows a feature-oriented structure to keep the codebase organized and scalable.

```text
lib/
│
├── app/
│   ├── app_router.dart
│   └── designe/
│       ├── designe_token.dart
│       └── theme.dart
│
├── core/
│   └── data/
│       └── data.dart
│
├── features/
│   │
│   ├── home/
│   │   └── presentation/
│   │       └── view/
│   │           ├── home_view.dart
│   │           └── widgets/
│   │               ├── app_bar_title.dart
│   │               ├── daily_challenge_card.dart
│   │               ├── plan_card.dart
│   │               ├── social_media_cards.dart
│   │               ├── user_chip.dart
│   │               └── weekly_list_component.dart
│   │
│   └── profile/
│       └── presentation/
│           └── view/
│               ├── profile_view.dart
│               └── widgats/
│                   ├── activity_list.dart
│                   ├── metrics_cards.dart
│                   └── user_profile_section.dart
│
└── main.dart
```

---

## 🎞️ Rive Animation

The application integrates **Rive** to provide interactive vector-based animations.

Animation assets are stored inside:

```text
assets/
└── images/
    └── imageCard.riv
```

Rive allows the application to use lightweight, scalable animations instead of relying on static images or GIFs.

Example:

```dart
import 'package:rive/rive.dart' as rive;

rive.RiveAnimation.asset(
  'assets/images/imageCard.riv',
)
```

---

## 🎨 Design System

The application uses a centralized design token system for maintaining visual consistency.

Example:

```dart
class DT {
  static const s1 = 4.0;
  static const s2 = 8.0;
  static const s3 = 12.0;
  static const s4 = 16.0;
  static const s5 = 20.0;
  static const s6 = 24.0;
  static const s8 = 32.0;

  static const rCard = 20.0;
  static const rCardSmall = 12.0;
}
```

This approach makes it easier to maintain:

- Spacing
- Border radius
- Colors
- Shadows
- Typography
- Component consistency

---

## 📦 Dependencies

Main packages used in the project:

```yaml
dependencies:
  flutter:
    sdk: flutter

  device_preview: ^1.3.1
  go_router: ^17.2.3
  flutter_bloc: ^9.1.1
  hive: ^2.2.3
  hive_flutter: ^1.1.0
  collection: ^1.19.1
  intl: ^0.20.2
  rive: ^0.14.11
```

---

## 🚀 Getting Started

### Prerequisites

Make sure you have installed:

- Flutter SDK
- Dart SDK
- Android Studio or VS Code
- Android Emulator / Physical Device
- Xcode if running on macOS/iOS

Check your Flutter installation:

```bash
flutter doctor
```

---

### 1. Clone the repository

```bash
git clone https://github.com/YOUR_USERNAME/fitness_app_ui.git
```

### 2. Navigate to the project

```bash
cd fitness_app_ui
```

### 3. Install dependencies

```bash
flutter pub get
```

### 4. Run the application

```bash
flutter run
```

---

## 📱 Responsive Design

The application is designed with responsiveness in mind and can be tested across different screen sizes using **Device Preview**.

This makes it easier to test:

- 📱 Mobile
- 📲 Tablet
- 💻 Desktop

During development, Device Preview is enabled automatically while the application is not running in release mode.

---

## 📂 Assets

The project uses Flutter asset management for application resources.

```yaml
flutter:
  assets:
    - assets/images/
    - assets/mock/
```

---

## 📸 Screenshots

Add your application screenshots here:

```text
screenshots/
├── home.png
├── challenge.png
├── workout.png
└── profile.png
```

Then display them in the README:

```markdown
## 📸 Screenshots

<p align="center">
  <img src="assets\images\home.png" width="250"/>
  <img src="assets\images\session.png" width="250"/>
  <img src="assets\images\profile.png" width="250"/>
</p>
```

---

## 🤝 Contributing

Contributions are welcome!

1. Fork the repository
2. Create your feature branch

```bash
git checkout -b feature/amazing-feature
```

3. Commit your changes

```bash
git commit -m "feat: add amazing feature"
```

4. Push to the branch

```bash
git push origin feature/amazing-feature
```

5. Open a Pull Request
