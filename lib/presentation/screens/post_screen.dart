import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:social_app/domain/entities/entities.dart';
import 'package:social_app/presentation/providers/providers.dart';
import 'package:social_app/presentation/widgets/error.dart';
import 'package:social_app/presentation/widgets/loading.dart';

class PostDetailScreen extends ConsumerWidget {
  const PostDetailScreen({super.key, required this.postId});
  final String postId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postInfo = ref.watch(postProvider(postId));
    var sizedBox = const SizedBox(height: 20);

    return switch (postInfo) {
      AsyncError() => const ErrorView(),
      AsyncData(:final value) => Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.chevron_left_rounded),
              onPressed: () => context.pop(),
            ),
            title: Text(
              value.title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Image(image: NetworkImage(value.postImage)),
                sizedBox,
                Author(
                  author: value.author,
                ),
                sizedBox,
                Text(value.body),
              ],
            ),
          ),
        ),
      _ => const LoadingView(),
    };
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
