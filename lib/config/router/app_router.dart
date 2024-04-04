import 'package:go_router/go_router.dart';
import 'package:social_app/presentation/screens/views/views.dart';
import '../../presentation/screens/screens.dart';

final appRouter = GoRouter(
  routes: [
    // ShellRoute(
    //   routes: [
    //     GoRoute(
    //       path: '/profile',
    //       builder: (context, state) => const ProfileView(),
    //     ),
    //     GoRoute(
    //       path: '/posts',
    //       builder: (context, state) => const PostsView(),
    //     ),
    //   ],
    //   builder: (context, state, child) => HomeScreen(child: child),
    // ),
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
