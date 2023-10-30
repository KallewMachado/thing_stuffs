import 'package:flutter_modular/flutter_modular.dart';
import 'package:thing_stuffs/src/features/auth/data/services/firebase_auth_service.dart';
import 'package:thing_stuffs/src/features/auth/interactor/reducers/auth_reducer.dart';
import 'package:thing_stuffs/src/features/auth/ui/pages/login_page.dart';

import 'interactor/services/auth_service.dart';

class AuthModule extends Module {
  @override
  void exportedBinds(Injector i) {
    i.add<AuthService>(FirebaseAuthService.new);
    i.add(AuthReduce.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      '/login',
      child: (_) => const LoginPage(),
    );
  }
}
