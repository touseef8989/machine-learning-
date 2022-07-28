import 'package:flutter/material.dart';
import 'package:tflite_image_classification/splash_screen.dart';

// List<CameraDescription>? cameras;
main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dogs-Breed',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.white,
      ),
      home: const SplashScreen(),
    );
  }
}
