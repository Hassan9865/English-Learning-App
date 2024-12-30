import 'package:flutter_tts/flutter_tts.dart';
import 'package:stacked/stacked.dart';

class StoryViewmodel extends BaseViewModel {
  final FlutterTts flutterTts = FlutterTts();
  bool isSpeaking = false;

  void initializedTts() async {
    try {
      await flutterTts.setLanguage("en-US");
      await flutterTts.setPitch(0.8);
      flutterTts.setStartHandler(() {
        isSpeaking = true;
        notifyListeners();
      });
      flutterTts.setCompletionHandler(() {
        isSpeaking = false;
        notifyListeners();
      });
      flutterTts.setErrorHandler((msg) {
        isSpeaking = false;
        notifyListeners();
      });
    } catch (e) {
      print("Error initializing TTS: $e");
    }
  }

  Future<void> speak(String text) async {
    try {
      await flutterTts.speak(text);
    } catch (e) {
      print("Error in speak: $e");
    }
  }

  Future<void> stop() async {
    await flutterTts.stop();
    isSpeaking = false;
    notifyListeners();
  }

  @override
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }
}
