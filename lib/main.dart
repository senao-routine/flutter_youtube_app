import 'package:flutter/material.dart';
import 'package:youtube_app/video_detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => 'Item $i');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: Icon(Icons.videocam),
          title: const Text(
              'Youtubeアプリ',
          ),
          actions: <Widget>[
            SizedBox(
              width:44,
              child: FlatButton(
                onPressed: () {
                  // TODO
                },
                child: Icon(Icons.search),
              ),
            ),
            SizedBox(
              width:44,
              child: FlatButton(
                onPressed: () {
                  // TODO
                },
                child: Icon(Icons.more_vert),
              ),
            ),
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.network("https://pbs.twimg.com/profile_images/1425679400670879748/X5i4UI4p_400x400.jpg",
                  width: 100,
                  height: 100,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: const [
                      Text(
                        'KBOYのFlutter大学'
                      ),
                    ],
                  ),
                  FlatButton(onPressed: () {},
                      child: Row(
                        children: const <Widget>[
                          Icon(
                              Icons.video_call,
                              color: Colors.red,
                          ),
                          Text('登録する'),
                        ],
                      ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          onTap: () async {
                            //TODO
                            await Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => VideoDetailPage(),
                            ),
                            );
                          },
                          leading: Image.network(
                            "https://pbs.twimg.com/profile_images/1425679400670879748/X5i4UI4p_400x400.jpg"
                          ),
                          title: Column(
                            children: [
                              Text(
                                  '【Flutter超入門】リストを作る方法',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                  ),
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    '267回再生',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  Text(
                                      '5日前',
                                    style: TextStyle(fontSize: 13),
                                  )
                                ],
                              )
                            ],
                          ),
                          trailing: Icon(Icons.more_vert),
                        );
                       },
                 ),
                  )
               ]
            ),
          ),
        ),
      );
  }
}