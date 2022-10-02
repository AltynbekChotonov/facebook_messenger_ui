import 'package:facebookredesign_ui/posts.dart';
import 'package:flutter/material.dart';

import 'neumorphic.dart';
import 'newpost.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: Container(
          color: Colors.blue[700],
        ),
      ),
      endDrawer: Drawer(
        child: Container(
          color: Colors.blue[700],
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            color: Colors.blue[700],
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 30, left: 24, right: 24, bottom: 24),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyButton(
                      function: () {
                        _scaffoldKey.currentState?.openDrawer();
                      },
                      child: Icon(
                        Icons.settings,
                        color: Colors.blue[100],
                      ),
                      color: Colors.blue,
                    ),
                    Text('f a c e b o o k',
                        style: TextStyle(color: Colors.white, fontSize: 16)),
                    MyButton(
                      function: () {
                        _scaffoldKey.currentState!.openEndDrawer();
                      },
                      child: Container(
                        height: 25,
                        width: 25,
                        child: Image.asset(
                          'lib/images/messengericon.png',
                          color: Colors.blue[100],
                        ),
                      ),
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 24),
            color: Colors.blue[800],
            child: NewPost(
              message: 'Эмнени ойлонуп жатасың?',
              imageLink: 'lib/images/profilepic.jpg',
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                MyPost(
                  name: 'Турат Алыбаев',
                  message:
                      '2022-жылда it тармагы кыйла өнүгүп жатат десем жанылышпайм',
                  time: 'азыр эле',
                  imageLink: 'lib/images/zuckerberg.jpeg',
                ),
                MyPost(
                  name: 'Элонора Абраева',
                  message: 'Мен Flutter Devoleper мин окунуздар достор',
                  time: '32 мин',
                  imageLink: 'lib/images/profilepic2.png',
                ),
                MyPost(
                  name: 'Алтынбек Бекмолдо уулу',
                  message:
                      '2022-жылында баарына ийгилик каалайм, it программист болгула. ',
                  time: '2 с',
                  imageLink: 'lib/images/profilepic.jpg',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
