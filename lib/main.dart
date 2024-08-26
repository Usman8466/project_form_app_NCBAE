import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:part_login_1/login%20page.dart';
import 'package:part_login_1/form%20df.dart';
import 'package:part_login_1/selectformpage.dart';
import 'package:part_login_1/Form.dart';
import 'package:part_login_1/secondform.dart';
import 'package:part_login_1/thirdform.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Add this line
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => Mylogin(),
      'Select form page': (context) => Myselectformpage(),
      'form df': (context) => MYformdf(),
      'form': (context) => MyForm(),
      'secondform': (context) => Mysecondform(),
      'thirdform': (context) => Mythirdform(),
    },
  ));
}
