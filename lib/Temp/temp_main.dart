import 'dart:developer';

import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_app/Temp/Second.dart';


class TestApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: testActionBody()
      ),
    );
  }
}

class testStackView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(0.6, 0.6),
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('images/1024.png'),
          radius: 100,
        ),
        Container(
          decoration: BoxDecoration(color: Colors.black38),
          child: Text("fox", style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),)
        )
      ],
    );
  }
}

class testGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    List<Container> _buildGridTileList(int count) => List.generate(
        count, (i) => Container(child: Image.asset('images/avater.jpg')));

    return GridView.extent(
      maxCrossAxisExtent: 150,
      padding: const EdgeInsets.all(4),
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: _buildGridTileList(100),
    );
  }
}

class testListView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    ListTile _tile(String title, String subtitle, IconData icon) => ListTile(
      title: Text(title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          )),
      subtitle: Text(subtitle),
      leading: Icon(
        icon,
        color: Colors.blue[500],
      ),
    );

    return ListView(
      children: [
        _tile('CineArts at the Empire', '85 W Portal Ave', Icons.theaters),
        _tile('The Castro Theater', '429 Castro St', Icons.theaters),
        _tile('Alamo Drafthouse Cinema', '2550 Mission St', Icons.theaters),
        _tile('Roxie Theater', '3117 16th St', Icons.theaters),
        _tile('United Artists Stonestown Twin', '501 Buckingham Way',
            Icons.theaters),
        _tile('AMC Metreon 16', '135 4th St #3000', Icons.theaters),
        Divider(),
        _tile('K\'s Kitchen', '757 Monterey Blvd', Icons.restaurant),
        _tile('Emmy\'s Restaurant', '1923 Ocean Ave', Icons.restaurant),
        _tile(
            'Chaiya Thai Restaurant', '272 Claremont Blvd', Icons.restaurant),
        _tile('La Ciccia', '291 30th St', Icons.restaurant),
      ],
    );
  }
}

class testActionBody extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _testActionBody();
  }
}

class _testActionBody extends State<testActionBody> {
  int _counter = 0;
  String _ipAddress = "no ip";

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  _getIPAddress() async {
    var url = 'https://httpbin.org/ip';
    var httpClient = new HttpClient();

    String result;
    try {
      var request = await httpClient.getUrl(Uri.parse(url));
      var response = await request.close();
      if (response.statusCode == HttpStatus.OK) {
        var json = await response.transform(utf8.decoder).join();
        var data = jsonDecode(json);
        result = data['origin'];
      } else {
        result =
        'Error getting IP address:\nHttp status ${response.statusCode}';
      }
    } catch (exception) {
      result = 'Failed getting IP address';
    }

    // If the widget was removed from the tree while the message was in flight,
    // we want to discard the reply rather than calling setState to update our
    // non-existent appearance.
    if (!mounted) return;

    setState(() {
      _ipAddress = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('images/1024.png', width: 100, height: 100,),
            Image.asset('images/icon.png', width: 100, height: 100,),
            Image.asset('images/avater.jpg', width: 100, height: 100,),
            Image.asset('images/bottom.png', width: 100, height: 100,),
          ],
        ),
        Text(
          '你好',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 32,
            color: Colors.black87,
          ),
        ),
        Text(
          'Hello',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 32,
            color: Colors.black87,
          ),
        ),
        Text(
          'World',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 32,
            color: Colors.black87,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.red,),
                Icon(Icons.star, color: Colors.red,),
                Icon(Icons.star, color: Colors.red,),
                Icon(Icons.star, color: Colors.black,),
                Icon(Icons.star, color: Colors.black,)
              ],
            ),
            Text("12345")
          ],
        ),
        FloatingActionButton(
          onPressed: _incrementCounter,
          child: Icon(Icons.add),
        ),
        FloatingActionButton(
          onPressed: () {
            _getIPAddress();
            Navigator.push(context, MaterialPageRoute(builder: (context) => new SecondVC()));
          },
          child: Icon(Icons.add_alert_sharp),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("点击次数"),
            Text('$_counter'),

          ],
        ),
        Text('IP $_ipAddress')
      ],
    );
  }
// return Container();

}

class testBody extends StatelessWidget {
  int _counter = 0;

  void _incrementCounter() {
    print('begin cnt => $_counter');
    _counter++;
    print('end cnt => $_counter');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('images/1024.png', width: 100, height: 100,),
            Image.asset('images/icon.png', width: 100, height: 100,),
            Image.asset('images/avater.jpg', width: 100, height: 100,),
            Image.asset('images/bottom.png', width: 100, height: 100,),
          ],
        ),
        Text(
          '你好',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 32,
            color: Colors.black87,
          ),
        ),
        Text(
          'Hello',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 32,
            color: Colors.black87,
          ),
        ),
        Text(
          'World',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 32,
            color: Colors.black87,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.red,),
                Icon(Icons.star, color: Colors.red,),
                Icon(Icons.star, color: Colors.red,),
                Icon(Icons.star, color: Colors.black,),
                Icon(Icons.star, color: Colors.black,)
              ],
            ),
            Text("12345")
          ],
        ),
        FloatingActionButton(
          onPressed: _incrementCounter,
          child: Icon(Icons.add),
        ),
        Row(
          children: [
            Text("点击次数"),
            Text('$_counter'),
          ],
        )

      ],
    );
  }
  // return Container();

}

class bak1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: Center(
          child: Text(
            'Hello World',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 32,
              color: Colors.black87,
            ),
          ),
        ),
      ),
    );
  }

}

class bakApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Center(
        child: Text(
          'Hello World',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 32,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }

}