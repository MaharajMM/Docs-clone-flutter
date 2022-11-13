import 'package:docs_clone_flutter/colors.dart';
import 'package:docs_clone_flutter/repository/auth.repository.dart';
import 'package:docs_clone_flutter/screens/home_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  void signInWithGoogle(WidgetRef ref, BuildContext context) async {
    final sMessanger = ScaffoldMessenger.of(context);
    final navigator = Navigator.of(context);
    final errorModel = await ref.read(authRepositoryProvider).signWithGoogle();
    if (errorModel.error == null) {
      ref.read(userProvider.notifier).update((state) => errorModel.data);
      navigator.push(
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );
    } else {
      sMessanger.showSnackBar(
        SnackBar(
          content: Text(errorModel.error!),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () => signInWithGoogle(ref, context),
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
