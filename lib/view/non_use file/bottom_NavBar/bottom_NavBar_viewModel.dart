import 'package:stacked/stacked.dart';

class BottomNavViewModel extends BaseViewModel {
  int _currentIndex = 0;
  bool _isNavBarHidden = false;

  int get currentIndex => _currentIndex;
  bool get isNavBarHidden => _isNavBarHidden;

  void setIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  void toggleNavBarVisibility() {
    _isNavBarHidden = !_isNavBarHidden;
    notifyListeners();
  }
}
