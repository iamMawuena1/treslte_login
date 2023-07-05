import 'package:flutter/material.dart';

import 'constant.dart';

class SocialMediaButton extends StatelessWidget {
  final String image;
  final String smHandle;
  const SocialMediaButton({
    super.key,
    required this.image,
    required this.smHandle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPadding),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(color: Colors.grey),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(image),
                width: 50,
                height: 40,
              ),
              const SizedBox(width: kPadding),
              Text(
                smHandle,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
