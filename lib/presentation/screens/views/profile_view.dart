import 'package:flutter/material.dart';
import 'package:social_app/data/mock/mock_data.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                child: Image(image: NetworkImage(users[0].profileImage)),
              ),
              Text(
                users.first.alias,
                style:
                    const TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
              ),
              Text(
                users.first.fullName,
                style: const TextStyle(fontSize: 20),
              ),
              Text(users.first.email),
              const SizedBox(height: 10),
              const Text(
                'My Friends',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                height: 250,
                child: ListView.builder(
                  itemCount: users.first.friends.length,
                  itemBuilder: (context, index) {
                    final friend = users.first.friends[index];

                    return ListTile(
                      leading: CircleAvatar(
                        child: Image(image: NetworkImage(friend.profileImage)),
                      ),
                      title: Text(friend.alias),
                    );
                  },
                ),
              ),
              const Text(
                'My Posts',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                height: 300,
                child: ListView.builder(
                  itemCount: users.first.posts.length,
                  itemBuilder: (context, index) {
                    final post = users.first.posts[index];

                    return Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(0, 0, 0, 0.05),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            post.title,
                            style: const TextStyle(fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 10),
                          Text(post.body),
                          Image(image: NetworkImage(post.postImage))
                        ],
                      ),
                      // onItemTap: () => context.push('/posts/${post.id}'),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
