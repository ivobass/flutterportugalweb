import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  /// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Portugal Workshop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(title: 'Flutter Portugal'),
    );
  }
}

/// This is another widget, called `MyHomePage` which does nothing but showing our amazing logo :)
class HomeScreen extends StatelessWidget {
  HomeScreen({Key key, this.title}) : super(key: key);
  final String title;

  /// This is where all the magic (rendering) happens within each Widget and where you are going to
  /// compose your widget tree
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: <Widget>[
          Card(
            margin: const EdgeInsets.symmetric(
              horizontal: 2.0,
              vertical: 2.0,
            ),
            color: Colors.white12,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image.network(
                          'https://secure.meetupstatic.com/photos/event/a/b/7/2/600_479443890.jpeg',
                          height: 70.0,
                          width: 70.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              height: 300.0,
              width: 600.0,
              child: Image.network(
                  'https://secure.meetupstatic.com/photos/event/a/b/7/2/600_479443890.jpeg'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Join the community',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 30,
                ),
              ),
            ],
          ),
          new Divider(
            color: Colors.white12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Discord',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 20,
                ),
              ),
              Text(
                'Twitter',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 20,
                ),
              ),
              Text(
                'Meetup',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                  child: Text(
                    'Chat with community.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  alignment: Alignment.center),
              Text(
                'For all and the latest news and articles.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              Text(
                'Know when is our next event and where.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                color: Colors.blueAccent,
                onPressed: () async {
                  const url = 'https://discord.gg/trEcse';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: Text(
                  '     Join Chat     ',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              RaisedButton(
                color: Colors.blueAccent,
                onPressed: () async {
                  const url = 'https://twitter.com/FlutterPortugal';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: Text(
                  '     Join Twitter     ',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              RaisedButton(
                color: Colors.blueAccent,
                onPressed: () async {
                  const url = 'https://www.meetup.com/pt-BR/FlutterPortugal/';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: Text(
                  '     Join Meetup     ',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
