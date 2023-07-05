import 'package:flutter/material.dart';
import 'package:login_trestle/component/buttons/constant.dart';

class CustomButtonBorder extends StatelessWidget {
  const CustomButtonBorder({
    super.key,
    required this.onTap,
    required this.btnName,
  });
  final Function()? onTap;
  final String btnName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPadding),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 60.0,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: kWhite,
            border: Border.all(
              color: kColor,
              width: 2.0,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              btnName,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                color: kColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
