import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'login.dart';
import 'postings.dart';
import 'upload.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: new Scaffold(
          body: TabBarView(
            children: <Widget>[
              new Container(
                padding: EdgeInsets.all(10),
                color: Colors.cyan,
                child: new Scaffold(
                  appBar: AppBar(
                      title: Text('FreeBee: Postings'), centerTitle: true),
                  body: new ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(20.0),
                    children: List.generate(choices.length, (index) {
                      return Center(
                        child: ChoiceCard(
                            choice: choices[index], item: choices[index]),
                      );
                    }),
                  ),
                ),
              ),
              new Container(
                padding: EdgeInsets.all(10),
                color: Colors.cyan,
                child: Scaffold(
                  appBar: AppBar(
                    title: Text('FreeBee: Map View'),
                    centerTitle: true,
                  ),
                  body: Container(
                    color: Colors.cyan,
                    child: Column(children: <Widget>[
                      Image.asset('assets/images/Miramar_part.jpg'),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Align(
                                alignment: Alignment.center,
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  child: FlatButton(
                                    color: Colors.blueAccent,
                                    textColor: Colors.white,
                                    disabledColor: Colors.grey,
                                    disabledTextColor: Colors.black,
                                    padding: EdgeInsets.all(10.0),
                                    splashColor: Colors.amberAccent,
                                    onPressed: () {},
                                    child: Text(
                                      "Event Details",
                                      style: TextStyle(fontSize: 20.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.center,
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  child: FlatButton(
                                    color: Colors.blueAccent,
                                    textColor: Colors.white,
                                    disabledColor: Colors.grey,
                                    disabledTextColor: Colors.black,
                                    padding: EdgeInsets.all(10.0),
                                    splashColor: Colors.amberAccent,
                                    onPressed: () {},
                                    child: Text(
                                      "Use Location",
                                      style: TextStyle(fontSize: 20.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
              new Container(
                padding: EdgeInsets.all(10),
                color: Colors.cyan,
                child: new Scaffold(
                  resizeToAvoidBottomPadding: true,
                  appBar: AppBar(
                      title: Text('FreeBee: Sign-In'), centerTitle: true),
                  body: LoginPage(),
                ),
              ),
              new Container(
                padding: EdgeInsets.all(10),
                color: Colors.cyan,
                child: new Scaffold(
                  resizeToAvoidBottomPadding: true,
                  appBar:
                      AppBar(title: Text('FreeBee: Upload'), centerTitle: true),
                  body: UploadPage(),
                ),
              ),
            ],
          ),
          bottomNavigationBar: new TabBar(
            tabs: [
              Tab(
                icon: new Icon(Icons.rss_feed),
              ),
              Tab(
                icon: new Icon(Icons.satellite),
              ),
              Tab(
                icon: new Icon(Icons.account_circle),
              ),
              Tab(
                icon: new Icon(Icons.cloud_upload),
              ),
            ],
            labelColor: Colors.yellow,
            unselectedLabelColor: Colors.blue,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.all(5.0),
            indicatorColor: Colors.red,
          ),
          backgroundColor: Colors.black54,
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(),
    );
  }
}
