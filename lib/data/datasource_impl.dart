import 'package:social_app/data/mock/mock_data.dart';
import 'package:social_app/domain/datasource.dart';
import 'package:social_app/domain/entities/post.dart';
import 'package:social_app/domain/entities/user.dart';

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
