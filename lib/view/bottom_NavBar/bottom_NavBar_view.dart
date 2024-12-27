import 'package:eng_learning_app/view/Quiz/quizes_view/quizes_view.dart';
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
            backgroundColor: Colors.deepPurple,
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
        QuizesView(),
      ];

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home_outlined),
        title: "Home",
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.cyanAccent,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.person_outline),
        title: "Profile",
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.cyanAccent,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.chat),
        title: "Chat",
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.cyanAccent,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.safety_check),
        title: "Teacher",
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.cyanAccent,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.quiz_outlined),
        title: "quizes",
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.cyanAccent,
      ),
    ];
  }
}
