import 'package:chat_screen/entities/user.dart';

class UsersList {
  final List<User> chatUsers = [
    User(
        id: 0,
        name: 'Bruce Willis',
        avatar: 'assets/images/b_uil.jpg',
        profession: 'Actor'),
    User(
        id: 1,
        name: 'Bradley Cooper',
        avatar: 'assets/images/b_kuper.jpg',
        profession: 'Challenge'),
    User(
      id: 2,
      name: 'Demi Moore',
      avatar: 'assets/images/d_mur.jpg',
    ),
    User(
        id: 3,
        name: 'Carmen Electra',
        avatar: 'assets/images/k_elect.jpeg',
        profession: 'Engagement Partner'),
    User(
        id: 4,
        name: 'Natalie Portman',
        avatar: 'assets/images/k_elect.jpeg',
        profession: 'Help Req.'),
  ];
}
