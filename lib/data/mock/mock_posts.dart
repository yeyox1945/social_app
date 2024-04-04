import 'dart:core';

import 'package:social_app/domain/entities/post.dart';
import 'package:social_app/domain/entities/user.dart';

List<Post> allPosts = [
  Post(
    id: '1',
    title: 'Check this out!',
    body:
        'Elit veniam ut officia sit nostrud. Dolore voluptate commodo occaecat eu Lorem anim sunt consectetur labore laborum ad ut dolore consequat. Adipisicing id voluptate et anim exercitation pariatur sit magna excepteur.',
    author: User(
      id: '1',
      fullName: 'Diego Yael Vargas Becerra',
      alias: 'Yeyo',
      email: 'yeyo@mail.com',
      profileImage:
          'https://wac-cdn.atlassian.com/es/dam/jcr:ba03a215-2f45-40f5-8540-b2015223c918/Max-R_Headshot%20(1).jpg?cdnVersion=1529',
      friends: [],
      posts: [],
    ),
    postImage: 'https://s1.significados.com/foto/random-og.jpg',
  ),
];
