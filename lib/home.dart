import 'package:camscanner_app/Screens/firstpage.dart';
import 'package:camscanner_app/Screens/secondpage.dart';
import 'package:camscanner_app/Screens/thirdpage.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
     return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Original  \nimage",
              ),
              Tab(
                text: "Scan \nimage",
              ),
              Tab(
                text: "Draw \nimage",
              ),
            ],
          ),
          title: Text(
            'CamScanner App',style: TextStyle(fontSize: 30,color: Colors.purple),
          ),
        ),
        body: TabBarView(
          children: [
            FirstPage(),
            SecondPage(),
            ThirdPage(),
          ],
        ),
      ),
    );
  }
}