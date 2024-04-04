import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:social_app/data/mock/mock_data.dart';

class PostDetailScreen extends StatelessWidget {
  const PostDetailScreen({super.key, required this.postId});

  final String postId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.chevron_left_rounded),
          onPressed: () => context.pop(),
        ),
        title: Text(
          posts.where((element) => element.id == postId).toList().first.title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Placeholder(),
            SizedBox(height: 20),
            Author(),
            SizedBox(height: 20),
            Text('''
      Tempor culpa dolor id magna non do ut ad deserunt eiusmod dolore consequat qui esse. Et commodo elit nisi sint adipisicing dolore. Dolore fugiat est nostrud cillum anim adipisicing. Est pariatur qui amet quis reprehenderit excepteur magna. Voluptate dolor
      Cupidatat aute ut ad pariatur ipsum enim sint adipisicing fugiat. Tempor fugiat officia tempor pariatur cillum incididunt laboris a
      Duis voluptate sunt aliquip laboris nisi commodo est. Aliqua duis nisi commodo reprehenderit tempor laborum in ipsum consectetur deserunt. Lorem sunt dolor consectetur sint ullamco consequat aliqua fugiat sint.
      '''),
          ],
        ),
      ),
    );
  }
}

class Author extends StatelessWidget {
  const Author({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.red,
          radius: 40,
        ),
        SizedBox(width: 10),
        Column(
          children: [
            Text(
              'Author',
              style: TextStyle(fontSize: 20),
            ),
            Text('Fullname')
          ],
        ),
      ],
    );
  }
}
