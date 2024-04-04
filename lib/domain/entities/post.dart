import 'package:social_app/domain/entities/user.dart';

class Post {
  final String id;
  final String title;
  final String body;
  final User author;
  final String postImage;

  Post(
      {required this.id,
      required this.title,
      required this.body,
      required this.author,
      required this.postImage});
}
