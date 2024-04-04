import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:social_app/domain/entities/entities.dart';
import 'package:social_app/presentation/providers/repository/repository_provider.dart';

class PostsView extends ConsumerWidget {
  const PostsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Post> allPosts = ref.watch(repositoryProvider).getAllPosts();

    return SafeArea(
      child: Column(
        children: [
          const Text(
            'Latest Posts',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 30),
          Expanded(
              child: ListView.builder(
            itemCount: allPosts.length,
            itemBuilder: (context, index) {
              final post = allPosts[index];

              return ListTile(
                tileColor: const Color.fromRGBO(0, 0, 0, 0.05),
                contentPadding: const EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                leading: Image(
                  image: NetworkImage(post.postImage),
                  width: 50,
                  height: 50,
                ),
                trailing: const Icon(Icons.chevron_right_rounded),
                title: Text(
                  post.title,
                  style: const TextStyle(fontSize: 20),
                ),
                onTap: () => context.push('/posts/${post.id}'),
              );
            },
          )),
        ],
      ),
    );
  }
}
