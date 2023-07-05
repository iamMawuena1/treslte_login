import 'package:flutter/material.dart';
import 'package:login_trestle/component/buttons/button.dart';
import 'package:login_trestle/component/buttons/social_button.dart';
import 'package:login_trestle/homepage.dart';
import 'package:login_trestle/pages/forgotpass.dart';
import 'package:login_trestle/pages/signup.dart';
import '../component/buttons/constant.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passWordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passWordController.dispose();

    super.dispose();
  }

  //checking for text obscurity
  bool _isObscure = true;

  //forgot pass
  void forgotPass() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ForgotPassPage(),
      ),
    );
  }

  //sign up
  void signUpScreen() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const SignUpPage(),
      ),
    );
  }

  //login btn
  void loginBtn() {
    // if (_formkey.currentState!.validate()) {
    //   _formkey.currentState!.save();
    // }

    // String email = emailController.text;
    // String password = passWordController.text;

    // debugPrint("Email: $email");
    // debugPrint("Password: $password");
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        backgroundColor: kWhite,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //login text
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: kPadding),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Login",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 32.0,
                          ),
                        ),
                        Text(
                          "Glad to have you back, login to enjoy much improved service",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: kPadding / 2),

                  //emai field
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: kPadding),
                    child: TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        hintText: 'Enter E-mail',
                      ),
                      // validator: (mail) {
                      //   return !mail!.contains("@")
                      //       ? "Please enter a valid e-mail"
                      //       : null;
                      // },
                    ),
                  ),
                  const SizedBox(height: kPadding / 2),

                  //password field
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: kPadding),
                    child: TextFormField(
                      controller: passWordController,
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        suffixIconColor: kColor,
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isObscure
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      // validator: (password) {
                      //   if (password == null || password.trim().isEmpty) {
                      //     return 'This field is required';
                      //   }
                      //   if (password.trim().length < 8) {
                      //     return 'Password must be at least 8 characters in length';
                      //   }
                      //   return null;
                      // },
                    ),
                  ),
                  const SizedBox(height: kPadding / 2),

                  //forgot pass
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: kPadding),
                    child: GestureDetector(
                      onTap: forgotPass,
                      child: const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forgotten Password?",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: kColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: kPadding),

                  //submit btn
                  CustomButton(
                    onTap: loginBtn,
                    btnName: "Login",
                    color: kColor,
                  ),
                  const SizedBox(height: kPadding),

                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: kPadding,
                      vertical: kPadding,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.grey.shade700,
                          ),
                        ),
                        const SizedBox(width: kPadding / 4),
                        Expanded(
                            child: Text(
                          "Or login with ",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey.shade700,
                          ),
                        )),
                        const SizedBox(width: kPadding / 4),
                        Expanded(
                          child: Divider(
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ],
                    ),
                  ),

                  //social media logins
                  const SocialMediaButton(
                    image: "assets/fb.png",
                    smHandle: "Facebook",
                  ),
                  const SizedBox(height: kPadding / 2),
                  const SocialMediaButton(
                    image: "assets/google.png",
                    smHandle: "Google",
                  ),
                  const SizedBox(height: kPadding / 2),
                  const SocialMediaButton(
                    image: "assets/apple.png",
                    smHandle: "Apple",
                  ),

                  //sign up session
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Dont have an account?"),
                      GestureDetector(
                        child: const Text(
                          "  Sign Up",
                          style: TextStyle(
                            color: kColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () => signUpScreen(),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
