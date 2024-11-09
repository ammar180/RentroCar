import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentro_car/core/api/dio_consumer.dart';
import 'package:rentro_car/core/cache/cache_helper.dart';
import 'package:rentro_car/features/authentication/providers/user_cubit.dart';
import 'package:rentro_car/features/authentication/services/user_service.dart';

import 'features/authentication/screens/onboarding_page_widget.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  CacheHelper().init();
  runApp(MultiBlocProvider(providers: [
    BlocProvider<UserCubit>(
        create: (context) =>
            UserCubit(UserService(api: DioConsumer(dio: Dio()))))
  ], child: const App()));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'RentroCar',
      themeMode: ThemeMode.light,
      home: OnboardingWidget(),
    );
  }
}
