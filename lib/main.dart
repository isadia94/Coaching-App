import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(title: 'Product Layout Demo Page'),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const FlutterLogo(
          textColor: Colors.green,
          size: 25.0,
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.grey,
            )),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.grey,
              ))
        ],
      ),
      body: ListView(shrinkWrap: true, children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
                alignment: const Alignment(0.0, -0.40),
                height: 100.0,
                color: Colors.white,
                child: const Text(
                  'Get Coaching',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                )),
            Container(
                margin: const EdgeInsets.fromLTRB(25.0, 90.0, 25.0, 0.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25.0),
                  boxShadow: const [
                    BoxShadow(blurRadius: 2.0, color: Colors.grey),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          padding:
                              const EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 5.0),
                          child: const Text(
                            "YOU HAVE",
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Poppins',
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding:
                              const EdgeInsets.fromLTRB(25.0, 40.0, 5.0, 15.0),
                          child: const Text(
                            "206",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Poppins',
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 60.0),
                    Container(
                      height: 50.0,
                      width: 125.0,
                      decoration: BoxDecoration(
                          color: Colors.greenAccent[100],
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Center(
                        child: Text('BUY NOW'),
                      ),
                    )
                  ],
                ))
          ],
        )
      ]),
    );
  }
}
