import 'package:flutter/material.dart';

import 'Pages/Splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      //debugShowMaterialGrid: true,
      theme: ThemeData(
        fontFamily: 'Tajawal',
        scaffoldBackgroundColor: Colors.grey[50],
        primarySwatch: Colors.purple,
        accentColor: Colors.purple,
        brightness: Brightness.light,
        buttonColor: Color.fromRGBO(48, 133, 62, 1),
      ), // home: AuthPage(),
      routes:
      {
        '/': (BuildContext context) => Splash(),
      },
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElements = settings.name.split('/');
        if (pathElements[0] != '') {
          return null;
        }


        return null;
      },
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext context) => Splash());
      },
    );

  }
}




