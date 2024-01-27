import 'package:go_router/go_router.dart';
import 'package:monymonky_litle/features/features.dart';

final appRouter = GoRouter(
    initialLocation: SplashRoutes.splash,
    routes: [
      ...getSpashRoutes(),
      ...getExpensesRoutes()
    ]
);