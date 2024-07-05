import 'package:flutter/material.dart';
import 'package:users_list/widgets/user_list_item.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List users = [
    {
      "id": "u1",
      "title": "foydalanuvchi nomi 1",
      "subtitle": "+98655546",
      "image":
          "https://images.unsplash.com/photo-1719813916163-ada504fd9660?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw2fHx8ZW58MHx8fHx8"
    },
    {
      "id": "u2",
      "title": "foydalanuvchi nomi 2",
      "subtitle": "+7857857785",
      "image":
          "https://images.unsplash.com/photo-1719917224844-d657bc9b8d3e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwyNHx8fGVufDB8fHx8fA%3D%3D"
    },
    {
      "id": "u3",
      "title": "foydalanuvchi nomi 3",
      "subtitle": "+567878575",
      "image":
          "https://images.unsplash.com/photo-1719209618812-a11aea8d1a32?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwyNnx8fGVufDB8fHx8fA%3D%3D"
    },
    {
      "id": "u4",
      "title": "foydalanuvchi nomi 4",
      "subtitle": "+78788575",
      "image":
          "https://images.unsplash.com/photo-1719822077838-b48bf2c7903d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwzMXx8fGVufDB8fHx8fA%3D%3D"
    },
  ];

  void deleteUser(String id) {
    print(id);

    setState(() {
      users.removeWhere((user) {
        return user["id"] == id;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  "Users list",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView(
                itemExtent: 80,
                children: users.map(
                  (user) {
                    return UserListItem(
                        id: user["id"],
                        title: user["title"],
                        subtitle: user["subtitle"],
                        image: user["image"],
                        deleteUser: deleteUser);
                  },
                ).toList(),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.search),
      ),
    );
  }
}
