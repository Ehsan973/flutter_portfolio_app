import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Vazir',
      ),
      home: Scaffold(
        appBar: _getAppBar(),
        backgroundColor: Colors.amber,
        body: _getBody(),
      ),
    );
  }

  PreferredSizeWidget _getAppBar() {
    return AppBar(
      backgroundColor: Colors.red,
      elevation: 0,
      title: Text("احسان صالحی"),
    );
  }

  Widget _getBody() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
            ),
            _getHeader(),
          ],
        ),
      ),
    );
  }

  Widget _getHeader() {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        CircleAvatar(
          backgroundImage: AssetImage('images/bill.jpg'),
          radius: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          'من موسس شرکت مایکرسافت هستم',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w900,
          ),
        ),
        Text(
          'من یکی از ثروتمند ترین افراد دنیا هستم و یکی از بزرگترین خیریه های دنیا رو دارم',
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 12,
        ),
        _getRowIcons(),
      ],
    );
  }

  Widget _getRowIcons() {
    return Wrap(
      runSpacing: 20,
      spacing: 5,
      children: [
        IconButton(
          color: Colors.blueGrey,
          onPressed: () {},
          icon: FaIcon(
            FontAwesomeIcons.linkedin,
          ),
        ),
        IconButton(
          color: Colors.blueGrey,
          onPressed: () {},
          icon: FaIcon(
            FontAwesomeIcons.instagramSquare,
          ),
        ),
        IconButton(
          color: Colors.blueGrey,
          onPressed: () {},
          icon: FaIcon(
            FontAwesomeIcons.telegram,
          ),
        ),
        IconButton(
          color: Colors.blueGrey,
          onPressed: () {},
          icon: FaIcon(
            FontAwesomeIcons.github,
          ),
        ),
      ],
    );
  }
}
