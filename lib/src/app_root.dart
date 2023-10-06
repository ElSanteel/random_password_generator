import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/password_cubit/password_cubit.dart';
import '../screens/password_generator_home_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => PasswordCubit())
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: PasswordGeneratorHomeScreen(),
      ),
    );
  }
}
