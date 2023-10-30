import 'package:thing_stuffs/src/features/auth/interactor/dtos/email_credential_dto.dart';
import 'package:thing_stuffs/src/features/auth/interactor/states/auth_state.dart';

abstract class AuthService {
  Future<AuthState> loginWithEmail(EmailCredentialDTO dto);

  Future<AuthState> logout();

  Future<AuthState> checkAuth();
}
