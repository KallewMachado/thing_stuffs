import 'package:asp/asp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:thing_stuffs/src/features/auth/interactor/atoms/auth_atom.dart';
import 'package:thing_stuffs/src/features/auth/interactor/states/auth_state.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  void initState() {
    rxObserver(
      () => authState.value,
      effect: (state) {
        if (state is Unlogged) {
          Modular.to.navigate('/auth/login');
        } else if (state is Logged) {
          Modular.to.navigate('/things/');
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/auth/login');

    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: Modular.routerConfig,
    );
  }
}
