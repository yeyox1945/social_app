import 'package:social_app/domain/entities/entities.dart';

abstract class Repository {
  Future<User> getUser(String id);
  Future<List<Post>> getAllPosts();
  Future<Post> getPostById(String id);
}
