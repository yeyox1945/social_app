import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_app/data/datasource_impl.dart';
import 'package:social_app/data/repository_impl.dart';
import 'package:social_app/domain/entities/entities.dart';
import 'package:social_app/domain/repository.dart';

part 'repository_provider.g.dart';

@riverpod
Repository repository(RepositoryRef ref) {
  return RepositoryImpl(datasource: DatasourceImpl());
}

@riverpod
Future<User> user(UserRef ref) async {
  // return await Future.delayed(
  //     const Duration(seconds: 2),
  //     () => User(
  //         id: 'id',
  //         fullName: 'fullName',
  //         alias: 'alias',
  //         email: 'email',
  //         profileImage: 'profileImage',
  //         friends: [],
  //         posts: []));
  return await ref.read(repositoryProvider).getUser('1');
}

@riverpod
Future<List<Post>> allPosts(AllPostsRef ref) async {
  return await ref.watch(repositoryProvider).getAllPosts();
}

@riverpod
Future<Post> post(PostRef ref, String id) async {
  return await ref.watch(repositoryProvider).getPostById(id);
}
