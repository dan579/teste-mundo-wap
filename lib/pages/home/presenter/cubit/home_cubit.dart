import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive/hive.dart';


class SplashCubit extends Cubit<SplashState>{
  SplashCubit() : super(const SearchConfigurationsState());

  void getConfigurations(LoginCubit cubit) async{
    var box = await Hive.openBox('tokenBox');
    var token =  box.get('token');
    if(token != null && token.toString().isNotEmpty){
      await cubit.logarToken();
    }else{
      Modular.to.pushReplacementNamed(Modular.initialRoute + "login", forRoot: true);
    }
    Timer(const Duration(seconds: 2), () =>  emit(const SuccessSplashState()));
  }
}