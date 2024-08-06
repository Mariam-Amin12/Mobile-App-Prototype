import 'package:get_it/get_it.dart';
import 'package:getpayin_task/feature/app/controller/app_controller.dart';
import 'package:getpayin_task/feature/home/presentation/view_model/home_controller.dart';
import 'package:getpayin_task/feature/profile/presentaion/state_managment/cubit/profile_cubit.dart';
import 'package:getpayin_task/feature/profile/presentaion/view__model/profile_view_model.dart';
import 'package:getpayin_task/feature/wallet/presentation/view_model/wallet_view_model.dart';

final GetIt sl = GetIt.instance;

class ServicesLocator {
  void init() {
    sl.registerLazySingleton(() => AppController());
    sl.registerLazySingleton(() => HomeViewModel());
    sl.registerLazySingleton(() => WalletViewModel());
       sl.registerLazySingleton(() => ProfileViewModel());
       sl.registerLazySingleton<ProfileCubit>(() => ProfileCubit());
  } 
}
