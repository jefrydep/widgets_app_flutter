import 'package:buttons_app/presentation/screens/screens.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
    // initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: HomeScreen.name,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/buttons',
        name: ButtonsScreen.name,
        builder: (context, state) => const ButtonsScreen(),
      ),
      GoRoute(
        path: '/card',
        name: CardsScreen.name,
        builder: (context, state) => const CardsScreen(),
      ),
      GoRoute(
        path: '/animated',
        // name: CardsScreen.name,
        builder: (context, state) => const AnimatedScreen(),
      ),
      GoRoute(
        path: '/app_tutorial',
        // name: CardsScreen.name,
        builder: (context, state) => const AppTutorialScreen(),
      ),
      GoRoute(
        path: '/infiniti',
        // name: CardsScreen.name,
      ),
      GoRoute(
        path: '/progress',
        // name: CardsScreen.name,
        builder: (context, state) => const ProgressScreen(),
      ),
      GoRoute(
        path: '/snackbar',
        // name: CardsScreen.name,
        builder: (context, state) => const SnackbarScreen(),
      ),
      GoRoute(
        path: '/ui',
        // name: CardsScreen.name,
        builder: (context, state) => const UiControlsScreen(),
      ),
    ]);
