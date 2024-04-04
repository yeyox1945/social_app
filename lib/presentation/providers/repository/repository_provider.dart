import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:social_app/data/datasource_impl.dart';
import 'package:social_app/data/repository_impl.dart';
import 'package:social_app/domain/repository.dart';

part 'repository_provider.g.dart';

@riverpod
Repository repository(RepositoryRef ref) {
  return RepositoryImpl(datasource: DatasourceImpl());
}
