
import 'package:equatable/equatable.dart';

class ProfileData extends Equatable {
  const ProfileData({
    this.isMan = true,
    this.name = '',
    this.age = '',
    this.email = '',
  });

  final bool isMan;
  final String name;
  final String age;
  final String email;

  ProfileData copyWith({
    bool? isMan,
    String? name,
    String? age,
    String? email,
  }) {
    return ProfileData(
      isMan: isMan ?? this.isMan,
      name: name ?? this.name,
      age: age ?? this.age,
      email: email ?? this.email,
    );
  }

  @override
  List<Object> get props => [isMan, name, age, email];
}