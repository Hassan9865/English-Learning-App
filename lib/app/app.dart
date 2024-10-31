import 'package:eng_learning_app/view/Login%20view/login_view.dart';
import 'package:eng_learning_app/view/Quiz/basic_quiz/basic_quiz_view.dart';
import 'package:eng_learning_app/view/Quiz/modal_quiz/modalQuiz_view.dart';
import 'package:eng_learning_app/view/Quiz/tense_quiz/tenseQuiz_view.dart';
import 'package:eng_learning_app/view/Splash%20view/splash_view.dart';
import 'package:eng_learning_app/view/bottom_NavBar/bottom_NavBar_view.dart';
import 'package:eng_learning_app/view/chats/chats_view.dart';
import 'package:eng_learning_app/view/chatting%20view/chatting_view.dart';
import 'package:eng_learning_app/view/home/home_view.dart';
import 'package:eng_learning_app/view/profile%20view/profile_view.dart';
import 'package:eng_learning_app/view/register%20view/register_view.dart';
import 'package:eng_learning_app/view/teachers_view/teachers_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes: [
  MaterialRoute(
    initial: true,
    page: SplashView,
  ),
  MaterialRoute(page: LoginView),
  MaterialRoute(page: RegisterView),
  MaterialRoute(page: HomeView),
  MaterialRoute(page: ProfileView),
  MaterialRoute(page: ChatsView),
  MaterialRoute(page: TeachersView),
  MaterialRoute(page: BottomNavbarView),
  MaterialRoute(page: BasicQuizView),
  MaterialRoute(page: ChattingView),
  MaterialRoute(page: ModalquizView),
  MaterialRoute(page: TensequizView),
], dependencies: [
  Singleton(classType: NavigationService)
])
class App {}
