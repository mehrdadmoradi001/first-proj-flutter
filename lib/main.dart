import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _getMaterialApp();
  }

  Widget _getMaterialApp() {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vazir'),
      home: Scaffold(
        appBar: _getAppBar(),
        body: SafeArea(
          child: _getMainBody(),
        ),
      ),
    );
  }

  PreferredSizeWidget _getAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.lightBlue,
      title: Text('In God We Trust'),
      centerTitle: true,
    );
  }

  Widget _getMainBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _getMainContent(),
        ],
      ),
    );
  }

  Widget _getMainContent() {
    return Column(
      children: [
        _getHeader(),
        SizedBox(height: 12.0),
        _getRowIcons(),
        SizedBox(height: 12),
        _getSkillCards(),
        SizedBox(height: 12),
        _getResume(),
        _getRowIcons(),
        SizedBox(height: 12),
        _getSkillCards(),
        SizedBox(height: 12),
        _getResume(),_getRowIcons(),
        SizedBox(height: 12),
        _getSkillCards(),
        SizedBox(height: 12),
        _getResume(),_getRowIcons(),
        SizedBox(height: 12),
        _getSkillCards(),
        SizedBox(height: 12),
        _getResume(),_getRowIcons(),
        SizedBox(height: 12),
        _getSkillCards(),
        SizedBox(height: 12),
        _getResume(),_getRowIcons(),
        SizedBox(height: 12),
        _getSkillCards(),
        SizedBox(height: 12),
        _getResume(),_getRowIcons(),
        SizedBox(height: 12),
        _getSkillCards(),
        SizedBox(height: 12),
        _getResume(),_getRowIcons(),
        SizedBox(height: 12),
        _getSkillCards(),
        SizedBox(height: 12),
        _getResume(),_getRowIcons(),
        SizedBox(height: 12),
        _getSkillCards(),
        SizedBox(height: 12),
        _getResume(),_getRowIcons(),
        SizedBox(height: 12),
        _getSkillCards(),
        SizedBox(height: 12),
        _getResume(),
      ],
    );
  }

  Widget _getHeader() {
    return Column(
      children: [
        SizedBox(height: 20.0),
        CircleAvatar(
          backgroundImage: AssetImage('images/user.png'),
          radius: 70.0,
        ),
        SizedBox(height: 15.0),
        Text(
          'مهرداد مرادی نظیف هستم',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w900,
          ),
        ),
        SizedBox(height: 12.0),
        Text('عاشق برنامه نویسی مخصوصا دنیای فلاتر هستم'),
        SizedBox(height: 12.0),
        Text(
          'دلم میخواد اینجا هرچی رو که بلدم باهاتون تقسیم کنم تا باهم بترکونیم',
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _getRowIcons() {
    return Wrap(
      runSpacing: 20.0,
      spacing: 20.0,
      alignment: WrapAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.linkedin),
          color: Colors.blueGrey,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.instagramSquare),
          color: Colors.blueGrey,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.telegram),
          color: Colors.blueGrey,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.githubSquare),
          color: Colors.blueGrey,
        ),
      ],
    );
  }

  Widget _getSkillCards() {
    var list = ['android', 'dart', 'flutter', 'java', 'kotlin'];
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        for (var skill in list)
          Card(
            elevation: 6.0,
            shadowColor: Colors.black,
            child: Column(
              children: [
                Container(
                  height: 80.0,
                  child: Image(
                    image: AssetImage('images/$skill.png'),
                    width: 60.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('$skill'),
                ),
              ],
            ),
          )
      ],
    );
  }

  Widget _getResume() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      margin: EdgeInsets.only(bottom: 16),
      width: double.infinity,
      color: Colors.grey[200],
      child: Column(
        children: [
          Text(
            'سابقه کاری من',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          _getHistoryColumn(),
        ],
      ),
    );
  }

  Widget _getHistoryColumn() {
    var listResume = [
      'برنامه نویس اندروید از سال 1399',
      'سازنده اپلیکیشن "سرزمین سپاسگزاری"  در کافه بازار',
      'در حال یادگیری عشقم، "فلاتر"، از امیر احمد ادیبی عزیزم👇🏼',
      'سایت: FlutterExpert - اینستا: amirahmadadibi@',
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          width: double.infinity,
          height: 12,
        ),
        for (var title in listResume)
          Text(
            '$title',
            textDirection: TextDirection.rtl,
          ),
      ],
    );
  }
}
