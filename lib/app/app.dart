import 'package:eng_learning_app/view/Login%20view/login_view.dart';
import 'package:eng_learning_app/view/Splash%20view/splash_view.dart';
import 'package:eng_learning_app/view/home/home_view.dart';
import 'package:eng_learning_app/view/register%20view/register_view.dart';
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
], dependencies: [
  Singleton(classType: NavigationService)
])
class App {}
