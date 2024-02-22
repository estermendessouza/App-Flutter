import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login.page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:audioplayers/audioplayers.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
            child: SizedBox(
                width: 100, child: Image.asset("assets/app-logo.png"))),
        leading: Container(
          height: 40,
          width: 40,
          decoration: new BoxDecoration(
              image: new DecorationImage(
            image: AssetImage("assets/user-picture.png"),
            fit: BoxFit.fitHeight,
          )),
        ),
        actions: <Widget>[
          Container(
            width: 60,
            child: TextButton(
              child: Icon(
                Icons.search,
                color: Color(0xFFBABABA),
              ),
              onPressed: () => {},
            ),
          )
        ],
      ),
      body: Container(
        color: Color(0xFFF2F3F6),
        child: ListView(
          children: <Widget>[
            cardItem(),
            cardItem(),
            cardItem(),
            cardItem(),
          ],
        ),
      ),
    );
  }
}

Widget cardItem() {
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const ListTile(
          leading: CircleAvatar(
            backgroundColor: Color(0xFFBABABA),
          ),
          title: Text("Fredinho Feliz"),
          subtitle: Text("08/12/2023"),
          trailing: Icon(Icons.more_vert),
        ),
        Container(
          child: Image.asset("assets/post-picture-001.png"),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text("Momentos felizes"),
        ),
        ButtonTheme(
            child: ButtonBar(
          children: <Widget>[
            TextButton(
              child: Icon(Icons.favorite),
              onPressed: () async {
                final player = AudioPlayer();
                final audioCache = AudioCache();
                await audioCache.load('like.mp3');
                await player.play(AssetSource('like.mp3'));
              },
            ),
            TextButton(
              child: Icon(Icons.share),
              onPressed: () {},
            ),
          ],
        ))
      ],
    ),
  );
}
