import 'package:flutter/material.dart';
import 'package:login_trestle/component/buttons/constant.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kColor,
        elevation: 0,
        title: Text("homepage".toUpperCase()),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kPadding,
          vertical: kPadding,
        ),
        child: Column(
          children: [
            Image.asset("assets/tick.png"),
            const Text(
              "Welcome to the homepage",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
