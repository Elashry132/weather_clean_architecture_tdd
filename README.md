# Flutter Weather App

A simple weather app built with Flutter, following the principles of Clean Architecture and Test-Driven Development (TDD). The app fetches weather data from a weather API and displays the current weather for a given location.

## Features

- Get current weather conditions for a specified city.
- Clean Architecture with separation of concerns between different layers.
- TDD approach to ensure reliable and maintainable code.
- Error handling for network issues or invalid input.

## Getting Started

### Prerequisites

Ensure you have the following installed:

- [Flutter](https://flutter.dev/docs/get-started/install) (version 2.5 or higher)
- [Dart](https://dart.dev/get-dart) (version 2.14 or higher)
- A code editor like [VS Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio)

### API Key

1. Sign up for a weather API service such as [OpenWeatherMap](https://openweathermap.org/api).
2. Get your API key.
3. Add the API key in the project (typically in the `.env` file or as a constant in the app).

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/flutter_weather_app.git
2. Navigate to the project directory:
   ```bash
   cd flutter_weather_app
3. Install the required dependencies:
   ```bash
   flutter pub get
4. Run the app on an emulator or device:
   ```bash
   flutter run

### Project Structure

The app follows the **Clean Architecture** pattern with the following layers:

- **Domain Layer**: Contains business logic, entities, use cases, and repositories' contracts (interfaces).
- **Data Layer**: Handles data sources (e.g., API, local storage) and models. This layer implements the repository interface from the domain layer.
- **Presentation Layer**: UI code using Flutter widgets, state management with BLoC, and user interaction logic.


### State Management

The app uses **BLoC** (Business Logic Component) for state management in the presentation layer. Each feature (such as weather display) is handled by a separate BLoC class, which manages the state and interactions between the UI and the domain layer.

- The BLoC listens for events triggered by user interaction.
- It communicates with the domain layer (use cases and repositories) to fetch or manipulate data.
- The state is emitted back to the UI, which rebuilds itself based on the latest state.

### Testing

The app follows the **Test-Driven Development (TDD)** approach. Each feature is first written as a test, followed by the actual implementation. This ensures that the app is reliable and maintainable.

Types of tests included:

- **Unit Tests**: Test individual classes, use cases, and logic in isolation (e.g., testing the weather use case).
- **Widget Tests**: Test the UI and its interaction with the state (e.g., testing the weather display widget).
- **Integration Tests**: Test the entire flow of the app, from user input to data fetching and displaying the result.

Run all the tests with the following command:

```bash
flutter test
