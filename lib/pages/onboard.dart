import 'package:flutter/material.dart';
import 'package:login_trestle/component/buttons/borderbtn.dart';
import 'package:login_trestle/component/buttons/button.dart';
import 'package:login_trestle/homepage.dart';
import 'package:login_trestle/pages/login.dart';
import 'package:login_trestle/pages/signup.dart';
import '../component/buttons/constant.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    //Navigations
    void loginPage() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginPage(),
        ),
      );
    }

    void signUp() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SignUpPage(),
        ),
      );
    }

    void guestNav() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              "assets/flutter.png",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.55,
              fit: BoxFit.cover,
            ),
            const CircleAvatar(
              backgroundImage: AssetImage("assets/logo.jpg"),
              maxRadius: 50.0,
            ),
            const SizedBox(height: kPadding),
            CustomButton(
              onTap: loginPage,
              btnName: "Login",
              color: kColor,
            ),
            const SizedBox(height: 10.0),
            CustomButtonBorder(
              onTap: signUp,
              btnName: "Sign Up",
            ),
            const Spacer(),
            GestureDetector(
              onTap: guestNav,
              child: const Text(
                "Continue as guest",
                style: TextStyle(
                  color: kColor,
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
