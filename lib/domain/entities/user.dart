import 'package:social_app/domain/entities/post.dart';

class User {
  final String id;
  final String fullName;
  final String alias;
  final String email;
  final String profileImage;

  final List<User> friends;
  final List<Post> posts;

  User(
      {required this.id,
      required this.fullName,
      required this.alias,
      required this.email,
      required this.profileImage,
      required this.friends,
      required this.posts});
}
