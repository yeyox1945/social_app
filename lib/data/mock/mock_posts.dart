import 'dart:core';

import 'package:social_app/domain/entities/post.dart';
import 'package:social_app/domain/entities/user.dart';

List<String> names = [
  'Juan Perez',
  'Maria Rodriguez',
  'Carlos Gomez',
  'Ana Torres',
  'Luis Morales',
  'Sofia Guzman',
  'Pedro Ramirez',
  'Isabel Castro',
  'Jose Hernandez',
  'Laura Lopez'
];
List<String> aliases = [
  'JPerez',
  'MRodriguez',
  'CGomez',
  'ATorres',
  'LMorales',
  'SGuzman',
  'PRamirez',
  'ICastro',
  'JHernandez',
  'LLopez'
];
List<String> emails = [
  'jperez@mail.com',
  'mrodriguez@mail.com',
  'cgomez@mail.com',
  'atorres@mail.com',
  'lmorales@mail.com',
  'sguzman@mail.com',
  'pramirez@mail.com',
  'icastro@mail.com',
  'jhernandez@mail.com',
  'llopez@mail.com'
];
List<String> titles = [
  'Mira esto!',
  'Noticias de última hora',
  'Mi último viaje',
  'Receta del día',
  'Mi opinión sobre...',
  'Reseña de libro',
  'Consejos de salud',
  'Mi rutina de ejercicio',
  'Fotos de mi jardín',
  'Mi receta de cocina favorita'
];
List<String> bodies = [
  'Este es el cuerpo del post 1',
  'Este es el cuerpo del post 2',
  'Este es el cuerpo del post 3',
  'Este es el cuerpo del post 4',
  'Este es el cuerpo del post 5',
  'Este es el cuerpo del post 6',
  'Este es el cuerpo del post 7',
  'Este es el cuerpo del post 8',
  'Este es el cuerpo del post 9',
  'Este es el cuerpo del post 10'
];

List<Post> allPosts = List<Post>.generate(
  10,
  (i) => Post(
    id: '${i + 1}',
    title: titles[i],
    body: bodies[i],
    author: User(
      id: '${i + 1}',
      fullName: names[i],
      alias: aliases[i],
      email: emails[i],
      profileImage:
          'https://wac-cdn.atlassian.com/es/dam/jcr:ba03a215-2f45-40f5-8540-b2015223c918/Max-R_Headshot%20(1).jpg?cdnVersion=1529',
      friends: [],
      posts: [],
    ),
    postImage: 'https://s1.significados.com/foto/random-og.jpg',
  ),
);
