import 'package:social_app/data/mock/mock_posts.dart';
import 'package:social_app/data/mock/mock_users.dart';
import 'package:social_app/domain/datasource.dart';
import 'package:social_app/domain/entities/entities.dart';

class DatasourceImpl implements Datasource {
  @override
  Future<User> getUser(String id) {
    return Future.delayed(const Duration(seconds: 2),
        () => users.firstWhere((user) => user.id == id));
  }

  @override
  Future<List<Post>> getAllPosts() {
    return Future.delayed(const Duration(seconds: 2), () => allPosts);
  }

  @override
  Future<Post> getPostById(String id) {
    return Future.delayed(const Duration(seconds: 2),
        () => allPosts.firstWhere((post) => post.id == id));
  }
}
