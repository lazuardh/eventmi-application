import 'package:eventmi_application/presentation/page/navigation/navigation.dart';
import 'package:eventmi_application/presentation/routing/route_name.dart';

class AppPage {
  static final pages = {
    RouteName.navigation: (contex) => const Navigation(),
  };
}
