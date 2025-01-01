import 'package:flutter_tts/flutter_tts.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class VocabularyViewmodel extends BaseViewModel {
  NavigationService navigationService = NavigationService();
  final FlutterTts flutterTts = FlutterTts();
  bool isSpeaking = false;

  Future<void> initializedTts() async {
    try {
      await flutterTts.setLanguage("en-Us");
      await flutterTts.setPitch(1);
      // await flutterTts.setSpeechRate(0.5);
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
      print("Error speak : $e");
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
