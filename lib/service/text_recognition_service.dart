import 'package:google_ml_kit/google_ml_kit.dart';

// todo-02: create a class
class TextRecognitionService {
  // todo-03: add function to recognized a text from image
  Future<String> runRecognizedText(String path) async {
    final InputImage inputImage = InputImage.fromFilePath(path);

    final textRecognizer = TextRecognizer(
      script: TextRecognitionScript.latin,
    );

    final RecognizedText recognizedText =
        await textRecognizer.processImage(inputImage);

    textRecognizer.close();

    return recognizedText.text;
  }
}
