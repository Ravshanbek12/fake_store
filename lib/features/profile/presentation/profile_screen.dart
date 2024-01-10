import 'package:fake_store/features/auth/presentation/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../auth/data/bloc/auth/authentication_bloc.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (contextProvider) => AuthenticationBloc(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          elevation: 1,
          title: const Text("Profile Screen"),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 300,
            ),
            Center(
              child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
                builder: (context, state) {
                  return TextButton(
                      onPressed: () {
                        context.read<AuthenticationBloc>().add(const AuthenticationEvent.logout());
                        Navigator.of(context).pushAndRemoveUntil(
                            CupertinoPageRoute(builder: (_) => const LoginScreen()),
                                (route) => false);
                      }, child: const Text("Logout",style: TextStyle(color: Colors.red),));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
