import 'package:bloc/bloc.dart';
import 'package:evalutor_app/src/models/res_obj.dart';
import 'package:evalutor_app/src/models/user_model.dart';

import 'authentication_repository.dart';
import 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(AuthenticationInitial()){
    repository = AuthenticationRepository();
  }
  AuthenticationRepository repository;

  UserModel loggedInUser;

  login(String mobile, String password)async{
    emit(AuthenticationLoading());
    RespObj response = await repository.login(mobNo: mobile,password: password);
    if(response.getStatus()){
      dynamic data = response.data;
      UserModel userModel = UserModel.fromJson(data);
      loggedInUser = userModel;
      emit(AuthenticationSuccess(userModel));
    }
    else{
      emit(AuthenticationError());
    }
  }
  logout(String token)async{
    emit(AuthenticationLoading());
    RespObj response = await repository.logOut(token);
    if(response.getStatus()){
      emit(AuthenticationCleared());
    }
    else{
      emit(AuthenticationError());
    }
  }
}
