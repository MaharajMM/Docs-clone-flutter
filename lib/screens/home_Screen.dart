// ignore: file_names
import 'package:docs_clone_flutter/repository/auth.repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Text(
          ref.watch(userProvider)!.uid,
        ),
      ),
    );
  }
}
