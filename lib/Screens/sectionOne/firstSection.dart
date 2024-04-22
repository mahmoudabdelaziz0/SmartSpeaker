import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class SpeechScreen extends StatefulWidget {
  @override
  _SpeechScreenState createState() => _SpeechScreenState();
  static String routeName = "/Speachscreen";
}

class _SpeechScreenState extends State<SpeechScreen> {
  late List<CameraDescription> cameras;
  late CameraController cameraController;
  int direction = 1; // Change to 1 to use the front camera
  String translatedWord = ''; // Variable to store the translated word
  TextEditingController textController = TextEditingController(); // Controller for the text field

  @override
  void initState() {
    startCamera(direction);
    super.initState();
  }

  void startCamera(int direction) async {
    cameras = await availableCameras();
    cameraController = CameraController(cameras[direction], ResolutionPreset.medium);
    cameraController.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          CameraPreview(cameraController), // Display the camera preview
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: TextField(
              controller: textController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter text',
              ),
            ),
          ),
        ],
      ),
    );
  }
}