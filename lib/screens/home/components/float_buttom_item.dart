import 'package:flutter/material.dart';

class FloatButtomItem extends StatelessWidget {
  late String image;
  late int value;
  late int groupValue;
  late ValueChanged onChanged;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(value);
        // NavigationService.navigationService
        //     .navigateTo(ProfileScreen.routeName);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16),
        margin: const EdgeInsets.only(left: 80.0),
        child: Image.asset(image),
      ),
    );
  }
}
