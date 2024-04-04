import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_app/presentation/providers/providers.dart';
import 'package:social_app/presentation/screens/views/views.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  void onItemTap(int value) {

  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentTab = ref.watch(currentTabProvider);

    final List<Widget> views = [
      const ProfileView(),
      const PostsView(),
    ];

    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: views[currentTab]),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentTab,
          onTap: (value) => ref.read(currentTabProvider.notifier).changeTab(value),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.post_add_sharp),
              label: 'Posts',
            ),
          ],
        ));
  }
}
