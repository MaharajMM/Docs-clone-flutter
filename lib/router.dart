import 'package:docs_clone_flutter/constant/import.dart';
import 'package:docs_clone_flutter/screens/document_screen.dart';

final loggedOutRout = RouteMap(routes: {
  '/': (route) => const MaterialPage(
        child: LoginScreen(),
      ),
});

final loggedInRout = RouteMap(routes: {
  '/': (route) => const MaterialPage(
        child: HomeScreen(),
      ),
  '/document/:id': (route) => MaterialPage(
        child: DocumentScreen(
          id: route.pathParameters['id']!,
        ),
      ),
});
