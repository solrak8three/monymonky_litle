import 'package:go_router/go_router.dart';
import 'package:monymonky_litle/features/features.dart';

List<GoRoute> getSpashRoutes() => [
  GoRoute(
    path: SplashRoutes.splash,
    builder: (context, state) => const SplashScreen(),
  ),
];