// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:thing_stuffs/src/features/auth/interactor/entities/tokenization.dart';

sealed class AuthState {}

class InitAuth implements AuthState {}

class LoadingAuth implements AuthState {}

class Logged implements AuthState {
  final Tokenization token;

  Logged(this.token);
}

class Unlogged implements AuthState {}
