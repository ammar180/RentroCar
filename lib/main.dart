import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentro_car/core/api/dio_consumer.dart';
import 'package:rentro_car/features/authentication/providers/auth_cubit.dart';
import 'package:rentro_car/features/authentication/services/user_service.dart';

import 'features/authentication/screens/onboarding_page_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(UserService(api: DioConsumer(dio: Dio()))),
      child: const MaterialApp(
        title: 'RentroCar',
        themeMode: ThemeMode.light,
        home: OnboardingWidget(),
      ),
    );
  }
}
