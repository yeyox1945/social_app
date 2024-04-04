import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:social_app/presentation/providers/repository/repository_provider.dart';

import '../../domain/entities/entities.dart';

class PostDetailScreen extends ConsumerWidget {
  const PostDetailScreen({super.key, required this.postId});
  final String postId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Post post = ref.watch(repositoryProvider).getPostById(postId);

    var sizedBox = const SizedBox(height: 20);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.chevron_left_rounded),
          onPressed: () => context.pop(),
        ),
        title: Text(
          post.title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image(image: NetworkImage(post.postImage)),
            sizedBox,
            Author(
              author: post.author,
            ),
            sizedBox,
            Text(post.body),
          ],
        ),
      ),
    );
  }
}

class Author extends StatelessWidget {
  const Author({
    super.key,
    required this.author,
  });

  final User author;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 40,
          child: Image(
            image: NetworkImage(author.profileImage),
          ),
        ),
        const SizedBox(width: 10),
        Column(
          children: [
            Text(
              author.alias,
              style: const TextStyle(fontSize: 20),
            ),
            Text(author.fullName),
          ],
        ),
      ],
    );
  }
}
