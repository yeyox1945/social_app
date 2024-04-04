import 'package:social_app/data/mock/mock_posts.dart';
import 'package:social_app/domain/entities/post.dart';
import 'package:social_app/domain/entities/user.dart';

List<User> users = [
  User(
    id: '1',
    fullName: 'Diego Yael Vargas Becerra',
    alias: 'Yeyo',
    email: 'yeyo@mail.com',
    profileImage:
        'https://wac-cdn.atlassian.com/es/dam/jcr:ba03a215-2f45-40f5-8540-b2015223c918/Max-R_Headshot%20(1).jpg?cdnVersion=1529',
    friends: friends,
    posts: posts,
  ),
];

List<User> friends = List<User>.generate(
  10,
  (i) => User(
    id: '${i + 1}',
    fullName: names[i],
    alias: aliases[i],
    email: emails[i],
    profileImage:
        'https://wac-cdn.atlassian.com/es/dam/jcr:ba03a215-2f45-40f5-8540-b2015223c918/Max-R_Headshot%20(1).jpg?cdnVersion=1529',
    friends: [],
    posts: [],
  ),
);

List<Post> posts = allPosts.where((post) => post.author.id == '1').toList();
