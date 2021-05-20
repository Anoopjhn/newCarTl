import 'package:equatable/equatable.dart';
import 'package:evalutor_app/src/models/user_model.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();
}

class AuthenticationInitial extends AuthenticationState {
  @override
  List<Object> get props => [];
}

class AuthenticationLoading extends AuthenticationState {
  @override
  List<Object> get props => [];
}

class AuthenticationSuccess extends AuthenticationState {
  final UserModel userModel;

  AuthenticationSuccess(this.userModel);

  @override
  List<Object> get props => [userModel];
}

class AuthenticationError extends AuthenticationState {
  @override
  List<Object> get props => [];
}
class AuthenticationCleared extends AuthenticationState {
  @override
  List<Object> get props => [];
}