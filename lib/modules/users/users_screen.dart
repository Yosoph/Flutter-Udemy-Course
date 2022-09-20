import 'package:flutter/material.dart';
import '../../models/user/user_model.dart';

class UsersScreen extends StatelessWidget {

  List<UserModel> users = [
    UserModel(
      id: 1,
      name: 'Yosoph Ahmed',
      phone: '01145080548',
    ),
    UserModel(
      id: 2,
      name: 'Ahmed Ramy',
      phone: '0115464680548',
    ),
    UserModel(
      id: 3,
      name: 'Yosoph Hesham',
      phone: '011497654146',
    ),
    UserModel(
      id: 1,
      name: 'Yosoph Ahmed',
      phone: '01145080548',
    ),
    UserModel(
      id: 2,
      name: 'Ahmed Ramy',
      phone: '0115464680548',
    ),
    UserModel(
      id: 3,
      name: 'Yosoph Hesham',
      phone: '011497654146',
    ),
    UserModel(
      id: 1,
      name: 'Yosoph Ahmed',
      phone: '01145080548',
    ),
    UserModel(
      id: 2,
      name: 'Ahmed Ramy',
      phone: '0115464680548',
    ),
    UserModel(
      id: 3,
      name: 'Yosoph Hesham',
      phone: '011497654146',
    ),
    UserModel(
      id: 1,
      name: 'Yosoph Ahmed',
      phone: '01145080548',
    ),
    UserModel(
      id: 2,
      name: 'Ahmed Ramy',
      phone: '0115464680548',
    ),
    UserModel(
      id: 3,
      name: 'Yosoph Hesham',
      phone: '011497654146',
    ),
    UserModel(
      id: 1,
      name: 'Yosoph Ahmed',
      phone: '01145080548',
    ),
    UserModel(
      id: 2,
      name: 'Ahmed Ramy',
      phone: '0115464680548',
    ),
    UserModel(
      id: 3,
      name: 'Yosoph Hesham',
      phone: '011497654146',
    ),
    UserModel(
      id: 1,
      name: 'Yosoph Ahmed',
      phone: '01145080548',
    ),
    UserModel(
      id: 2,
      name: 'Ahmed Ramy',
      phone: '0115464680548',
    ),
    UserModel(
      id: 3,
      name: 'Yosoph Hesham',
      phone: '011497654146',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users',
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => buildUserItem(users[index]),
          separatorBuilder: (context, index) => Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 20.0,
            ),
            child: Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey[300],
            ),
          ),
          itemCount: users.length),
    );
  }
  Widget buildUserItem(UserModel user) => Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 20.0,
          child: Text(
            '${user.id}',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${user.name}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${user.phone}',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
