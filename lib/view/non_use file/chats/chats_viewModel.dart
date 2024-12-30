import 'package:flutter/material.dart';
import 'package:learn_eng/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ChatsViewmodel extends BaseViewModel {
  NavigationService navigationService = NavigationService();

  navigateToChattigView() {
    navigationService.navigateToChattingView();
  }

  TextEditingController searchController = TextEditingController();
}
