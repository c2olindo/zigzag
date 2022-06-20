import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zigzag/views/login_view.dart';
import 'package:zigzag/views/signup_details_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Opensans',
      ),
      home: const SignUpDetails(),
    );
  }
}
