import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';

class ProfileViewmodel extends BaseViewModel {
  String name = '';
  String email = '';
  String proficiency = '';
  String country = '';
  String gender = '';
  String learnGoal = '';
  String interest = '';

  Future<void> loadData() async {
    final pref = await SharedPreferences.getInstance();
    name = pref.getString('name') ?? '';
    email = pref.getString('email') ?? '';
    proficiency = pref.getString('proficiency') ?? '';
    country = pref.getString("country") ?? '';
    gender = pref.getString('gender') ?? '';
    learnGoal = pref.getString('learnGoal') ?? '';
    interest = pref.getString('interest') ?? "";
    notifyListeners();
  }
}
