import 'package:social_app/data/mock/mock_data.dart';
import 'package:social_app/domain/datasource.dart';
import 'package:social_app/domain/entities/post.dart';
import 'package:social_app/domain/entities/user.dart';

class DatasourceImpl implements Datasource {
  @override
  Future<User> getUser(String id) {
    return Future.delayed(const Duration(seconds: 2),
        () => users.where((user) => user.id == id).first);
  }

  @override
  Future<List<Post>> getAllPosts() {
    return Future.delayed(const Duration(seconds: 2), () => allPosts);
  }

  @override
  Future<Post> getPostById(String id) {
    return Future.delayed(const Duration(seconds: 2),
        () => allPosts.where((post) => post.id == id).first);
  }
}
