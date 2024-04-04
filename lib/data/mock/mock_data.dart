import 'dart:core';

import '../../domain/entities/entities.dart';

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

List<User> friends = [
  User(
    id: '2',
    fullName: 'Diego Yael Vargas Becerra',
    alias: 'Yeyo',
    email: 'yeyo@mail.com',
    profileImage:
        'https://wac-cdn.atlassian.com/es/dam/jcr:ba03a215-2f45-40f5-8540-b2015223c918/Max-R_Headshot%20(1).jpg?cdnVersion=1529',
    friends: [],
    posts: [],
  ),
  User(
    id: '3',
    fullName: 'Diego Yael Vargas Becerra',
    alias: 'Yeyo',
    email: 'yeyo@mail.com',
    profileImage:
        'https://wac-cdn.atlassian.com/es/dam/jcr:ba03a215-2f45-40f5-8540-b2015223c918/Max-R_Headshot%20(1).jpg?cdnVersion=1529',
    friends: [],
    posts: [],
  ),
  User(
    id: '4',
    fullName: 'Diego Yael Vargas Becerra',
    alias: 'Yeyo',
    email: 'yeyo@mail.com',
    profileImage:
        'https://wac-cdn.atlassian.com/es/dam/jcr:ba03a215-2f45-40f5-8540-b2015223c918/Max-R_Headshot%20(1).jpg?cdnVersion=1529',
    friends: [],
    posts: [],
  ),
  User(
    id: '5',
    fullName: 'Diego Yael Vargas Becerra',
    alias: 'Yeyo',
    email: 'yeyo@mail.com',
    profileImage:
        'https://wac-cdn.atlassian.com/es/dam/jcr:ba03a215-2f45-40f5-8540-b2015223c918/Max-R_Headshot%20(1).jpg?cdnVersion=1529',
    friends: [],
    posts: [],
  ),
];

List<Post> posts = [
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
      friends: friends,
      posts: posts,
    ),
    postImage: 'https://s1.significados.com/foto/random-og.jpg',
  ),
];

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
      friends: friends,
      posts: posts,
    ),
    postImage: 'https://s1.significados.com/foto/random-og.jpg',
  ),
];
