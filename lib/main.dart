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
            // _getSkillLables(),
            _getCardsRow(),
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

  Widget _getCardsRow() {
    var skill_names = ['Android', 'Dart', 'Flutter', 'Java', 'Kotlin', 'C++'];
    return Padding(
      padding: EdgeInsets.all(4),
      child: Wrap(
          spacing: 12,
          runSpacing: 15,
          alignment: WrapAlignment.start,
          children: [
            for (var skill in skill_names)
              Card(
                color: Colors.purple[50],
                elevation: 6,
                shadowColor: Colors.red,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(6),
                      width: 70,
                      height: 70,
                      child: Image(
                        image: AssetImage('images/${skill.toLowerCase()}.png'),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(8), child: Text('$skill')),
                  ],
                ),
              ),
          ]),
    );
  }

  Widget _getSkillLables() {
    return Wrap(
      spacing: 10,
      runSpacing: 15,
      children: [
        Card(
          elevation: 6,
          shadowColor: Colors.red,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                width: 80,
                height: 80,
                child: Image(
                  image: AssetImage('images/android.png'),
                ),
              ),
              Padding(padding: EdgeInsets.all(8), child: Text('Android')),
            ],
          ),
        ),
        Card(
          elevation: 6,
          shadowColor: Colors.red,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                width: 80,
                height: 80,
                child: Image(
                  image: AssetImage('images/dart.png'),
                ),
              ),
              Padding(padding: EdgeInsets.all(8), child: Text('Dart')),
            ],
          ),
        ),
        Card(
          elevation: 6,
          shadowColor: Colors.red,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                width: 80,
                height: 80,
                child: Image(
                  image: AssetImage('images/flutter.png'),
                ),
              ),
              Padding(padding: EdgeInsets.all(8), child: Text('Flutter')),
            ],
          ),
        ),
        Card(
          elevation: 6,
          shadowColor: Colors.red,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                width: 80,
                height: 80,
                child: Image(
                  image: AssetImage('images/java.png'),
                ),
              ),
              Padding(padding: EdgeInsets.all(8), child: Text('Java')),
            ],
          ),
        ),
        Card(
          elevation: 6,
          shadowColor: Colors.red,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                width: 80,
                height: 80,
                child: Image(
                  image: AssetImage('images/kotlin.png'),
                ),
              ),
              Padding(padding: EdgeInsets.all(8), child: Text('Kotlin')),
            ],
          ),
        ),
        Card(
          elevation: 6,
          shadowColor: Colors.red,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                width: 80,
                height: 80,
                child: Image(
                  image: AssetImage('images/c++.png'),
                ),
              ),
              Padding(padding: EdgeInsets.all(8), child: Text('C++')),
            ],
          ),
        ),
      ],
    );
  }
}
