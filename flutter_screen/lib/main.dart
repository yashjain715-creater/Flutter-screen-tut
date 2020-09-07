import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  BorderRadiusGeometry radius = BorderRadius.only(
      topLeft: Radius.circular(30), topRight: Radius.circular(30));

  final string =
      "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeb8071),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(),
              Container(
                margin: EdgeInsets.only(top: 40, left: 35),
                child: Text(
                  'Library',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Icon(
                  Icons.sort,
                  size: 40,
                  color: Colors.green,
                ),
              )
            ],
          ),
          Expanded(
              child: Container(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 140),
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: radius,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 10,
                            blurRadius: 10,
                            offset: Offset(0, 3))
                      ]),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 120),
                    child: Column(
                      children: [
                        Text(
                          'The Subtle Art of Not\n      Giving a F*uck',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            'by Mark Manson',
                            style: TextStyle(
                                fontSize: 13, fontStyle: FontStyle.italic),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 130,
                                height: 38,
                                child: RaisedButton(
                                  textColor: Colors.green,
                                  color: Colors.white,
                                  onPressed: () {},
                                  elevation: 10,
                                  child: Text(
                                    'Preview',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                ),
                              ),
                              Container(
                                width: 130,
                                height: 38,
                                child: RaisedButton(
                                  onPressed: () {},
                                  elevation: 10,
                                  child: Text(
                                    'Download',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Text(
                            'Description',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            string,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text.rich(TextSpan(children: <TextSpan>[
                            TextSpan(
                                text: 'Size',
                                style: TextStyle(color: Colors.green)),
                            TextSpan(text: ' - 26.3mb')
                          ])),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(top: 20),
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_back,
                                color: Colors.green,
                              ),
                              Text(
                                'Back',
                                style: TextStyle(color: Colors.green),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  alignment: Alignment.topCenter,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    child: Image.asset(
                      'assets/subtle.jpg',
                      fit: BoxFit.fill,
                      width: 150,
                      height: 200,
                    ),
                  ),
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}
