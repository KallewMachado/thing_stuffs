import 'package:flutter_modular/flutter_modular.dart';

import 'ui/things_page.dart';

class ThingsModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child('/', child: (_) => const ThingsPage());
    super.routes(r);
  }
}
