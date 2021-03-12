import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_youtube/Video_detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final items = List<String>.generate(10, (i) => "Item $i");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: Icon(Icons.slow_motion_video),
        title: Text(
          "Hello-youtube",
          textAlign: TextAlign.start,
        ),
        actions: <Widget>[
          Container(
            width: 36,
            margin: EdgeInsets.only(
              right: 20,
            ),
            child: FlatButton(
              child: Icon(Icons.search),
              onPressed: () {},
            ),
          ),
          Container(
            width: 44,
            margin: EdgeInsets.only(
              right: 16,
            ),
            child: FlatButton(
              color: Colors.white60,
              child: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  width: 100,
                  child: Image.network(
                      "https://lab.topica-works.com/wp-content/uploads/2018/02/youtube_social_squircle_white.png"),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Musickappaのちゃんねる",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.slow_motion_video_rounded),
                        Text("登録済み　チャンネル登録者数OOO人"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.movie),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Flutterについて勉強中であります",
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("246回再生5日前",
                            style: TextStyle(
                              color: Colors.black45,
                              fontSize: 12,
                            )),
                      ],
                    ),
                    contentPadding: EdgeInsets.only(
                      left: 30,
                      top: 15,
                      right: 20,
                    ),
                    trailing: Icon(Icons.more_vert),
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Video_detail_page()),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
