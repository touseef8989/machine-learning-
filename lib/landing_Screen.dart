import 'package:flutter/material.dart';
import 'package:tflite_image_classification/TfliteModel.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Dogs Breed  Identification",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.asset("assets/landing_dog.png"),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                    "Machine learning models are trained on examples (images) gathered by the creator."
                    " Their results depend on the data they’ve been trained on"),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => TfliteModel()));
              },
              child: Container(
                color: Colors.red.withOpacity(
                  0.8,
                ),
                width: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Press here",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.forward,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
