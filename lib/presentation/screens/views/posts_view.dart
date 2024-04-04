import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:social_app/data/mock/mock_data.dart';

class PostsView extends StatelessWidget {
  const PostsView({super.key});

  @override
  Widget build(BuildContext context) {
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
