import 'dart:ui';

import 'package:edit_profile/core/utils/colors.dart';
import 'package:edit_profile/core/utils/strings.dart';
import 'package:edit_profile/features/my_profile/presentation/components/custom_appbar.dart';
import 'package:edit_profile/features/my_profile/presentation/components/custom_text_widget.dart';
import 'package:edit_profile/features/my_profile/presentation/components/profile_image_editor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class EditProfile extends StatefulWidget {
  EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  // final List<String>stages=[
  final Map<String, List<String>> data = {
    'Primary stage': [
      'First grade',
      'Second grade',
      'Third grade',
      'fourth grade',
      'fifth grade',
      'Sixth grad'
    ],
    'middle School': [
      'seventh grade',
      'Second year of middle school',
      'The third preparatory grade'
    ],
    'High school': [
      'First grade secondary',
      'Second year of secondary school',
      'Third year of secondary school'
    ]
  };

  String selectedKey = 'Primary stage';

  String selectedValue = 'First grade';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 15, bottom: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const CustomAppbar(text: AppString.editProfile),
                const ProfileImageEditor(),
                const CustomTextWidget(
                  text: AppString.name,
                ),
                Container(
                  height: MediaQuery.sizeOf(context).height * 0.07,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors.textFiledColor,
                  ),
                  child: TextField(
                    style: TextStyle(
                      color: AppColors.kBlack54,
                      fontFamily: AppString.rubikFont
                    ),
                    controller: nameController,
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: AppColors.textFiledColor,
                      border: UnderlineInputBorder(borderSide: BorderSide.none),
                      suffixIcon: Icon(
                        Icons.check,
                        size: 30,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                        borderSide:
                            BorderSide(color: AppColors.kBlue, width: 2),
                      ),
                    ),
                  ),
                ),
                const CustomTextWidget(text: AppString.email),
                Container(
                  height: MediaQuery.sizeOf(context).height * 0.07,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors.textFiledColor,
                  ),
                  child: TextField(
                      style: TextStyle(
                          color: AppColors.kBlack54,
                          fontFamily: AppString.rubikFont
                      ),
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: AppColors.textFiledColor,
                        border:
                            UnderlineInputBorder(borderSide: BorderSide.none),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5.0),
                          ),
                          borderSide:
                              BorderSide(color: AppColors.kBlue, width: 2),
                        ),
                      )),
                ),
                const CustomTextWidget(text: AppString.phone),
                Container(
                  height: MediaQuery.sizeOf(context).height * 0.07,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors.textFiledColor,
                  ),
                  child: TextField(
                      style: TextStyle(
                          color: AppColors.kBlack54,
                          fontFamily: AppString.rubikFont
                      ),
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: AppColors.textFiledColor,
                        border:
                            UnderlineInputBorder(borderSide: BorderSide.none),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5.0),
                          ),
                          borderSide:
                              BorderSide(color: AppColors.kBlue, width: 2),
                        ),
                      )),
                ),
                const CustomTextWidget(text: AppString.password),
                Container(
                  height: MediaQuery.sizeOf(context).height * 0.07,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors.textFiledColor,
                  ),
                  child: TextField(
                    style: const TextStyle(
                        color: AppColors.kBlack54,
                        fontFamily: AppString.rubikFont
                    ),
                    obscureText: true,
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.textFiledColor,
                        border:
                            const UnderlineInputBorder(borderSide: BorderSide.none),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide:
                              BorderSide(color: AppColors.kBlue, width: 2),
                        ),
                        suffix: GestureDetector(
                          onTap: () {
                            print('change');
                          },
                          child: const Text(
                            AppString.change,
                            style: TextStyle(color: AppColors.kBlue),
                          ),
                        )),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: MediaQuery.sizeOf(context).height * 0.07,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.textFiledColor,
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: selectedKey,
                            items: data.keys.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Center(child: Text(value)),
                              );
                            }).toList(),
                            onChanged: (String? newVal) {
                              setState(
                                () {
                                  selectedKey = newVal!;
                                  selectedValue = data[selectedKey]![0];
                                },
                              );
                            },
                            icon: const Icon(Icons.keyboard_arrow_down),
                            style: const TextStyle(
                                color: AppColors.kBlack45,
                                fontFamily: AppString.rubikFont,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                            isExpanded: true,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Container(
                        height: MediaQuery.sizeOf(context).height * 0.07,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.textFiledColor,
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: selectedValue,
                            items: data[selectedKey]!.map((String value) {
                              return DropdownMenuItem<String>(
                                  value: value,
                                  child: Center(child: Text(value)));
                            }).toList(),
                            onChanged: (String? newVal) {
                              setState(() {
                                selectedValue = newVal!;
                              });
                            },
                            icon: const Icon(Icons.keyboard_arrow_down),
                            style: const TextStyle(
                                color: AppColors.kBlack45,
                                fontFamily: AppString.rubikFont,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                            isExpanded: true,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.kBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    fixedSize: Size.fromHeight(MediaQuery.sizeOf(context).height * 0.07,)

                  ),
                    onPressed: () {},
                    child: const Center(
                      child: Text(
                        AppString.save,
                        style: TextStyle(color: AppColors.kWhite,fontSize: 20,fontFamily: AppString.rubikFont,fontWeight: FontWeight.bold),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
