import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../auth/interactor/atoms/auth_atom.dart';

class ThingsPage extends StatefulWidget {
  const ThingsPage({super.key});

  @override
  State<ThingsPage> createState() => _ThingsPageState();
}

class _ThingsPageState extends State<ThingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            const SizedBox(height: 40),
            ListTile(
              title: const Text('Logout'),
              onTap: () {
                Modular.to.pop();
                logoutAction();
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('things'),
      ),
    );
  }
}
