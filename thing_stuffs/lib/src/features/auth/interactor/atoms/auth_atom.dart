import 'package:asp/asp.dart';
import 'package:thing_stuffs/src/features/auth/interactor/states/auth_state.dart';

import '../dtos/email_credential_dto.dart';

final authState = Atom<AuthState>(InitAuth(), key: 'authState');

final checkAuthAction = Atom.action(key: 'checkAuthAction');

final loginWithEmailAction = Atom<EmailCredentialDTO>(
  EmailCredentialDTO(),
  key: 'loginWithEmailAction',
);
final logoutAction = Atom.action(
  key: 'logoutAction',
);
