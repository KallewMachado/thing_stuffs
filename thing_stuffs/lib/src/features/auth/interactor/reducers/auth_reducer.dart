// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:asp/asp.dart';

import 'package:thing_stuffs/src/features/auth/interactor/atoms/auth_atom.dart';
import 'package:thing_stuffs/src/features/auth/interactor/services/auth_service.dart';
import 'package:thing_stuffs/src/features/auth/interactor/states/auth_state.dart';

class AuthReduce extends Reducer {
  final AuthService service;

  AuthReduce(this.service) {
    on(() => [checkAuthAction], _checkAuth);
    on(() => [loginWithEmailAction], _loginWithEmail);
    on(() => [logoutAction], _logout);
  }

  _checkAuth() {
    authState.value = LoadingAuth();

    service.checkAuth().then(authState.setValue);
  }

  _loginWithEmail() {
    authState.value = LoadingAuth();

    final dto = loginWithEmailAction.value;
    service.loginWithEmail(dto).then(authState.setValue);
  }

  _logout() {
    authState.value = LoadingAuth();

    service.logout().then(authState.setValue);
  }
}
