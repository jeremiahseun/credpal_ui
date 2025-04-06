# CredPal Mobile App UI Implementation

## Project Overview

This project is a Flutter implementation of the CredPal mobile application UI based on a provided Figma design. The application showcases a "Pay Later" service that allows users to purchase products from various merchants and pay for them later.

## Features

- **Home Screen**: Displays a header with credit activation option
- **Product Browsing**: Grid layout of products from various merchants
- **Merchant Section**: Horizontal scrollable list of merchant cards
- **Search Functionality**: UI implementation for product and store search
- **Responsive Design**: Adapts to different screen sizes while maintaining UI fidelity

## Technologies Used

- **Flutter**: SDK version ^3.6.0
- **State Management**: Flutter Riverpod (^2.6.1)
- **Responsive UI**: Flutter ScreenUtil (^5.9.3)
- **UI Components**:
  - Flutter SVG (^2.0.17) for vector icons
  - Gap (^3.0.1) for spacing
  - Google Fonts (^6.2.1) for typography

## Project Structure

```md
lib/
├── constants/
│   └── app_colors.dart       # Color constants used throughout the app
├── features/
│   └── home/
│       ├── data/             # Mock data for products and merchants
│       ├── provider/         # State management using Riverpod
│       └── screens/          # UI components and screens
├── models/                   # Data models for products and merchants
├── utils/                    # Utility classes like ConstrainedLayout
└── main.dart                 # Entry point of the application
```

## Setup Instructions

### Prerequisites

- Flutter SDK (^3.6.0)
- Dart SDK
- Android Studio / VS Code with Flutter extensions
- An emulator or physical device for testing

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/credpal_test.git
   cd credpal_test
   ```

2. Install dependencies:

   ```bash
   flutter pub get
   ```

3. Run the application:

   ```bash
   flutter run
   ```

### Building for Release

#### Android

```bash
flutter build apk --release
```

The APK file will be located at `build/app/outputs/flutter-apk/app-release.apk`

#### iOS

```bash
flutter build ios --release
```

Open the generated Xcode project and archive it for distribution.

#### Web

```bash
flutter build web --release
```

The web release files will be located in the `build/web` directory.

## Implementation Details

### UI Components

- **ConstrainedLayout**: A custom widget that constrains the app's width on larger screens (like web) to maintain a mobile-like experience
- **ProductCard**: Displays product information with price, discount, and merchant logo
- **MerchantCard**: Shows merchant information with online status indicator
- **CDText**: Custom text widget for consistent typography throughout the app

### State Management

The app uses Riverpod for state management:

- **ProductsProvider**: Manages the state of product data
- **MerchantsProvider**: Manages the state of merchant data

Both providers simulate API calls with delayed futures to mimic real-world scenarios.

### Responsive Design

The app uses Flutter ScreenUtil to ensure UI elements scale appropriately across different device sizes. The design is optimized for portrait mode on mobile devices.

## Assumptions Made

1. **Data Source**: The app uses mock data as there was no requirement for actual API integration. In a real-world scenario, these would be replaced with actual API calls.

2. **Navigation**: The implementation focuses on the home screen UI as per the Figma design. Navigation to other screens (like product details) is not implemented as it wasn't part of the provided design.

3. **Functionality**: UI elements like the search bar and scan button are non-functional as the assessment focuses on UI implementation rather than functionality.

4. **Portrait Mode Only**: The app is designed to work in portrait mode only, as this appears to be the intended design from the Figma file.

5. **Web Compatibility**: Added a ConstrainedLayout widget to ensure the app looks good on web by constraining its width to maintain a mobile-like experience.

## Screenshots

![Screenshot 2025-04-06 at 22 50 57](https://github.com/user-attachments/assets/14120572-71a1-4725-997d-b371e84f5803)

![Screenshot 2025-04-06 at 22 50 48](https://github.com/user-attachments/assets/59fe358f-205f-40b4-b100-12250ce0e6c6)


## Additional Notes

- The app is configured to run on Android, iOS, and web platforms
- The UI closely follows the Figma design with attention to details like colors, spacing, and typography
- The implementation uses a feature-based folder structure for better code organization and maintainability
