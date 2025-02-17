import 'package:flutter/material.dart';
import 'package:sixlab/eightthlab/birthdaycard.dart';
import 'package:sixlab/eightthlab/imageasset.dart';
import 'package:sixlab/eightthlab/stackwidget.dart';
import 'package:sixlab/ninthlab/practicalone/tabview.dart';
import 'package:sixlab/seventhlab/secondtextfield.dart';
import 'package:sixlab/seventhlab/textfieldwidget.dart';
import 'layout/firstlayout.dart';
import 'layout/secondlayout.dart';
import 'layout/vertical.dart';
import 'layout/horizontal.dart';
import 'ninthlab/practicalseven/navigator.dart';
import 'ninthlab/practicalthree/actionbar.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      // home: BirthdayCard(),
      home:  Nevigator(),
        // home: const Vertical()
        // home: const FirstLayout()
      // home: const SecondLayout(),
      // home: const Horizontal()
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
