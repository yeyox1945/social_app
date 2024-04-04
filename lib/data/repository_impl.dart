import 'package:social_app/domain/datasource.dart';
import 'package:social_app/domain/entities/post.dart';
import 'package:social_app/domain/entities/user.dart';
import 'package:social_app/domain/repository.dart';

class RepositoryImpl implements Repository {
  final Datasource datasource;

  RepositoryImpl({required this.datasource});

  @override
  Future<User> getUser(String id) => datasource.getUser(id);

  @override
  Future<List<Post>> getAllPosts() => datasource.getAllPosts();
  
  @override
  Future<Post> getPostById(String id) => datasource.getPostById(id);

}
