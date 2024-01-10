import 'package:fake_store/core/pages/splash_page.dart';
import 'package:fake_store/core/routs/app_routes.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/auth/data/bloc/auth/authentication_bloc.dart';



void main() {
  runApp(const FakeStoreApp());
}

class FakeStoreApp extends StatelessWidget {
  const FakeStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthenticationBloc(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        // onGenerateRoute: AppRouter.router,
      ),
    );
  }
}
