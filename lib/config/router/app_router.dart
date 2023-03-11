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
        name: CardsScreen.name,
        builder: (context, state) => CardsScreen(),
      ),
      GoRoute(
        path: '/animated',
        // name: CardsScreen.name,
        builder: (context, state) => AnimatedScreen(),
      ),
      GoRoute(
        path: '/app_tutorial',
        // name: CardsScreen.name,
        builder: (context, state) => AppTutorialScreen(),
      ),
      GoRoute(
        path: '/infiniti',
        // name: CardsScreen.name,
        builder: (context, state) => InfinitiScrollScreen(),
      ),
      GoRoute(
        path: '/progress',
        // name: CardsScreen.name,
        builder: (context, state) => ProgressScreen(),
      ),
      GoRoute(
        path: '/snackbar',
        // name: CardsScreen.name,
        builder: (context, state) => SnackbarScreen(),
      ),
      GoRoute(
        path: '/ui',
        // name: CardsScreen.name,
        builder: (context, state) => UiControlsScreen(),
      ),
      
    ]);
