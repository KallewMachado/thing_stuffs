import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:thing_stuffs/src/features/auth/auth_module.dart';

import 'features/things/things_module.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [
        AuthModule(),
      ];

  @override
  void binds(i) {
    i.addInstance<FirebaseAuth>(FirebaseAuth.instance);
  }

  @override
  void routes(RouteManager r) {
    r.module(
      '/things',
      module: ThingsModule(),
    );
    r.module(
      '/auth',
      module: AuthModule(),
    );
  }
}
