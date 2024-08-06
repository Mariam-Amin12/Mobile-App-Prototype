import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:getpayin_task/feature/profile/presentaion/view__model/profile_view_model.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileState());

  void setGender(bool isMan) {
    emit(state.copyWith(isMan: isMan));
  }



  void updateName(String name) {
    emit(state.copyWith(name: name));
  }

  void updateAge(String age) {
    emit(state.copyWith(age: age));
  }

  void updateEmail(String email) {
    emit(state.copyWith(email: email));
  }

  void saveProfile(String name, String age, String email, ProfileViewModel profileViewModel) {

    updateName(state.name);
    updateAge(state.age);
    updateEmail(state.email);
    profileViewModel.nameValue = name;
    profileViewModel.ageValue = age;
    profileViewModel.emailValue = email;
    profileViewModel.gendeValue = state.isMan;

  }
}