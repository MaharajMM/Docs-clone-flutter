import 'package:docs_clone_flutter/colors.dart';
import 'package:docs_clone_flutter/repository/auth.repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  void signInWithGoogle(WidgetRef ref) {
    ref.read(authRepositoryProvider).signWithGoogle();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () => signInWithGoogle(ref),
          icon: Image.asset(
            'images/g-logo-2.png',
            height: 20,
          ),
          label: const Text(
            'Sign in With Google',
            style: TextStyle(
              color: kBlack,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: kWhite,
            minimumSize: const Size(150, 50),
          ),
        ),
      ),
    );
  }
}
