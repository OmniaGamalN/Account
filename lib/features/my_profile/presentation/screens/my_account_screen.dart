import 'package:edit_profile/features/my_profile/presentation/components/my_account_view.dart';
import 'package:flutter/material.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: MyAccountView(),
    );
  }
}


