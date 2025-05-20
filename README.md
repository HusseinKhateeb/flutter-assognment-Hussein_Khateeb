# Flutter Named Routing Example

This project demonstrates how to use **named routing** in Flutter to navigate between screens and pass data in a clean, maintainable way.

## How Named Routing Works in This Project

### 1. Route Setup
All routes are defined in the `MaterialApp` widget using the `routes` map. The `initialRoute` is set to `'/'` (the form screen):

```dart
MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => const MyFormScreen(),
    '/output': (context) => OutputScreen(),
  },
)
```

### 2. Navigating with Named Routes
When the user submits the form, the app navigates to the output screen using `Navigator.pushNamed`, passing all form data as a map in the `arguments` parameter:

```dart
Navigator.pushNamed(
  context,
  '/output',
  arguments: {
    'username': _username,
    'password': _password,
    'email': _email,
    'rememberMe': _rememberMe,
    'gender': _gender,
    'country': _country,
    'age': _age,
    'selectedDate': _selectedDate,
  },
);
```

### 3. Receiving Data in the Output Screen
The output screen retrieves the arguments using `ModalRoute.of(context)?.settings.arguments` and displays the data:

```dart
final args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
final username = args != null ? args['username'] as String? : null;
// ... (other fields)
```

### 4. Why Use Named Routing?
- **Maintainability:** Easily manage navigation as your app grows.
- **Separation of Concerns:** Screens are decoupled and reusable.
- **Data Passing:** Arguments can be sent between screens in a structured way.

---

## Summary
- **Routes** are defined in `MaterialApp`.
- **Navigation** uses `Navigator.pushNamed` with arguments.
- **Arguments** are received using `ModalRoute.of(context)?.settings.arguments`.

This approach is recommended by the Flutter team and is widely used in production apps for its clarity and scalability.
