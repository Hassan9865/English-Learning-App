import 'package:eng_learning_app/view/Login%20view/login_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes: [
  MaterialRoute(initial: true, page: LoginView),
], dependencies: [
  Singleton(classType: NavigationService)
])
class App {}
