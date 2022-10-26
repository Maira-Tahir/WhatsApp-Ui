import 'package:camera/camera.dart';
import 'package:whatsapp/Screeens/CameraScreen.dart';
import 'package:whatsapp/Screeens/Homescreen.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  cameras = await availableCameras();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "OpenSans",
          appBarTheme: AppBarTheme(
            color: Color(0xFF075E54),
          ),
          primaryColor: Color(0xFF075E54),
          accentColor: Color(0xFF128C7E)),
      home: Homescreen(),
    );
  }
}
