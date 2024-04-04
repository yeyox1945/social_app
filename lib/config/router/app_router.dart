import 'package:go_router/go_router.dart';
import '../../presentation/screens/screens.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/posts/:id',
      builder: (context, state) => PostDetailScreen(
        postId: state.pathParameters['id'] as String,
      ),
    ),
  ],
);
