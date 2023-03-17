import 'package:buttons_app/presentation/screens/counter/counter_screen.dart';
import 'package:buttons_app/presentation/screens/screens.dart';
import 'package:buttons_app/presentation/screens/theme_changer/theme_changer_screen.dart';
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
        name: InfiniteScrollScreen.name,
        builder: (context, state) => InfiniteScrollScreen(),
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
      GoRoute(
        path: '/counter',
        // name: CardsScreen.name,
        builder: (context, state) => const CounterScreen(),
      ),
      GoRoute(
        path: '/theme_changer',
        // name: CardsScreen.name,
        builder: (context, state) => const ThemeChangerScreen(),
      ),
    ]);
