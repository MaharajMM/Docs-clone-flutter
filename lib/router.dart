import 'package:docs_clone_flutter/screens/home_Screen.dart';
import 'package:docs_clone_flutter/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

final loggedOutRout = RouteMap(routes: {
  '/': (route) => const MaterialPage(
        child: LoginScreen(),
      ),
});

final loggedInRout = RouteMap(routes: {
  '/': (route) => const MaterialPage(
        child: HomeScreen(),
      ),
});
