import 'package:buttons_app/presentation/screens/screens.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
    // initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: HomeScreen.name,
        builder: (context, state) => HomeScreen(),
      ),
      GoRoute(
        path: '/buttons',
        name: ButtonsScreen.name,
        builder: (context, state) => ButtonsScreen(),
      ),
      GoRoute(
        path: '/card',
        name: CardScreen.name,
        builder: (context, state) => CardScreen(),
      ),
    ]);
