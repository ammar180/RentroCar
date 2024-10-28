import 'package:rentro_car/features/authentication/screens/login_page_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'RentroCar',
      themeMode: ThemeMode.light,
      home: LoginPageWidget(),
    );
  }
}
