import 'package:flutter/material.dart';
import 'package:login_trestle/homepage.dart';
import '../component/buttons/button.dart';
import '../component/buttons/constant.dart';

class CreatePasswordPage extends StatefulWidget {
  const CreatePasswordPage({super.key});

  @override
  State<CreatePasswordPage> createState() => _CreatePasswordPageState();
}

class _CreatePasswordPageState extends State<CreatePasswordPage> {
  final _formkey = GlobalKey<FormState>();
  final passwordController = TextEditingController();

  //text obscurity
  bool isObscure = true;

  @override
  void dispose() {
    passwordController.dispose();

    super.dispose();
  }

  //create pass button
  void createPass() {
    // if (_formkey.currentState!.validate()) {
    //   _formkey.currentState!.save();
    // }

    // String password = passWordController.text;

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
        child: Form(
          key: _formkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                //text
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kPadding,
                    vertical: kPadding,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Create Password",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                        ),
                      ),
                      Text(
                        "Enter a new password, and it should contain at least 8 characters with one uppercase character. Please do not repeat the old password.",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: kPadding / 2),

                //password field
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kPadding),
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: isObscure,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      suffixIconColor: kColor,
                      suffixIcon: IconButton(
                        icon: Icon(
                          isObscure ? Icons.visibility : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            isObscure = !isObscure;
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kPadding),
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: isObscure,
                    decoration: InputDecoration(
                      hintText: "Repeat Password",
                      suffixIconColor: kColor,
                      suffixIcon: IconButton(
                        icon: Icon(
                          isObscure ? Icons.visibility : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            isObscure = !isObscure;
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

                const SizedBox(height: kPadding),
                //submit btn
                CustomButton(
                  onTap: createPass,
                  btnName: "Create Password",
                  color: kColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
