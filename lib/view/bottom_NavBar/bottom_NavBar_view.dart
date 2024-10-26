import 'package:eng_learning_app/view/bottom_NavBar/bottom_NavBar_viewModel.dart';
import 'package:eng_learning_app/view/chats/chats_view.dart';
import 'package:eng_learning_app/view/home/home_view.dart';
import 'package:eng_learning_app/view/profile%20view/profile_view.dart';
import 'package:eng_learning_app/view/teachers_view/teachers_view.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:stacked/stacked.dart';

class BottomNavbarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BottomNavViewModel>.reactive(
      viewModelBuilder: () => BottomNavViewModel(),
      builder: (context, model, child) {
        PersistentTabController _controller =
            PersistentTabController(initialIndex: model.currentIndex);

        return Scaffold(
          // appBar: AppBar(
          //   title: const Text("Navigation Bar with Stacked"),
          // ),
          body: PersistentTabView(
            context,
            controller: _controller,
            screens: _buildScreens(),
            items: _navBarsItems(),
            handleAndroidBackButtonPress: true,
            resizeToAvoidBottomInset: false,
            stateManagement: true,
            hideNavigationBarWhenKeyboardAppears: true,
            onItemSelected: model.setIndex,
            backgroundColor: Colors.white,
            hideOnScrollSettings:
                HideOnScrollSettings(hideNavBarOnScroll: false),
            // hideNavigationBar: model.isNavBarHidden,
          ),
          // floatingActionButton: FloatingActionButton(
          //   onPressed: model.toggleNavBarVisibility,
          //   child: Icon(Icons.toggle_on),
          // ),
        );
      },
    );
  }

  List<Widget> _buildScreens() => [
        HomeView(),
        ProfileView(),
        ChatsView(),
        TeachersView(),
      ];

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home_outlined),
        title: "Home",
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.person_outline),
        title: "Profile",
        activeColorPrimary: Colors.teal,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.chat),
        title: "Chat",
        activeColorPrimary: Colors.blueAccent,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.safety_check),
        title: "Teacher",
        activeColorPrimary: Colors.deepOrange,
        inactiveColorPrimary: Colors.grey,
      ),
      // PersistentBottomNavBarItem(
      //   icon: Icon(Icons.settings),
      //   title: "Settings",
      //   activeColorPrimary: Colors.indigo,
      //   inactiveColorPrimary: Colors.grey,
      // ),
    ];
  }
}
