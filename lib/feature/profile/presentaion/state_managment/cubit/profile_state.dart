part of 'profile_cubit.dart';

class ProfileState extends Equatable {
    const ProfileState({
    this.isMan = true,
    this.name = '',
    this.age = '',
    this.email = '',
  });

  final bool isMan;
  final String name;
  final String age;
  final String email;

  ProfileState copyWith({
    bool? isMan,
    String? name,
    String? age,
    String? email,
  }) {
    return ProfileState(
      isMan: isMan ?? this.isMan,
      name: name ?? this.name,
      age: age ?? this.age,
      email: email ?? this.email,
    );
  }

  @override
  List<Object> get props => [isMan, name, age, email];
}