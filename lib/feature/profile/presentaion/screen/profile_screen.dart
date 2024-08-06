import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getpayin_task/core/util/const/size/size_config.dart';
import 'package:getpayin_task/core/util/const/style/app_text_style.dart';
import 'package:getpayin_task/feature/profile/presentaion/state_managment/cubit/profile_cubit.dart';
import 'package:getpayin_task/feature/profile/presentaion/view__model/profile_view_model.dart';
import 'package:getpayin_task/feature/profile/presentaion/widget/profile_item.dart';
import 'package:getpayin_task/feature/profile/presentaion/widget/save_edit.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key, required this.profileViewModel});
  final ProfileViewModel profileViewModel;


  @override
  Widget build(BuildContext context) {
    final profileCubit = GetIt.instance<ProfileCubit>();

    final nameController = TextEditingController();
    final ageController = TextEditingController();
    final emailController = TextEditingController();

    return BlocProvider.value(
      value: profileCubit,
      child: BlocBuilder<ProfileCubit, ProfileState>(
        builder: (context, state) {


          return SingleChildScrollView(
            child: Column(
              children: [
                SaveEdit(
                  onSave: () {
                    profileCubit.saveProfile(
                        nameController.text,
                        ageController.text,
                        emailController.text,
                        profileViewModel);
                         // Update the profileViewModel with the new values
               

                    nameController.text = "";
                    ageController.text = "";
                    emailController.text = "";
                  },
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      ProfileItem(
                        widget: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      150), // Makes it a circle
                                  child: Image(
                                    image:
                                        const AssetImage("assets/profile.png"),
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) {
                                      return Container(
                                        color:
                                            Colors.grey[300], // Fallback color
                                        child: const Center(
                                          child: Text(
                                            'X',
                                            style: TextStyle(color: Colors.red),
                                          ),
                                        ),
                                      );
                                    },
                                    loadingBuilder:
                                        (context, child, loadingProgress) {
                                      if (loadingProgress == null) return child;
                                      return const Center(
                                        child: CircularProgressIndicator(),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.blueAccent,
                              ),
                              onPressed: () {},
                              child: Text(
                                profileViewModel.uploadImage,
                                style:
                                    AppTextStyle.normalText(SizeConfig.screenW),
                              ),
                            ),
                          ],
                        ),
                        title: profileViewModel.photo,
                      ),
                      SizedBox(height: 20),
                      ProfileItem(
                        widget: TextField(
                          decoration: InputDecoration(
                            hintText:
                                profileViewModel.nameValue ?? 'Enter your name',
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                          controller: nameController,
                          onChanged: (value) {
                            profileCubit.updateName(value);
                          },
                        ),
                        title: profileViewModel.name,
                      ),
                      SizedBox(height: 50),
                      ProfileItem(
                        widget: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              style: IconButton.styleFrom(
                                backgroundColor:
                                    state.isMan ? Colors.purple : Colors.grey,
                              ),
                              onPressed: () {
                                profileCubit.setGender(true);
                              },
                              icon: Icon(Icons.male),
                            ),
                            IconButton(
                              style: IconButton.styleFrom(
                                backgroundColor: !state.isMan
                                    ? Colors.purple
                                    : const Color.fromARGB(255, 210, 205, 205),
                              ),
                              onPressed: () {
                                profileCubit.setGender(false);
                              },
                              icon: Icon(Icons.female),
                            ),
                          ],
                        ),
                        title: profileViewModel.gender,
                      ),
                      SizedBox(height: 30),
                      ProfileItem(
                        widget: TextField(
                          controller: ageController,
                          decoration: InputDecoration(
                            hintText:
                                profileViewModel.ageValue ?? 'Enter your age',
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                          onChanged: (value) {
                            profileCubit.updateAge(value);
                          },
                        ),
                        title: profileViewModel.age,
                      ),
                      SizedBox(height: 40),
                      ProfileItem(
                        widget: TextField(
                          decoration: InputDecoration(
                            hintText: profileViewModel.emailValue ??
                                'Enter your email',
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                          controller: emailController,
                          onChanged: (value) {
                            profileCubit.updateEmail(value);
                          },
                        ),
                        title: profileViewModel.email,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
