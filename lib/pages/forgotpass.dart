import 'package:flutter/material.dart';
import 'package:login_trestle/component/buttons/button.dart';
import 'package:login_trestle/pages/createpass.dart';
import '../component/buttons/constant.dart';

class ForgotPassPage extends StatefulWidget {
  const ForgotPassPage({super.key});

  @override
  State<ForgotPassPage> createState() => _ForgotPassPageState();
}

class _ForgotPassPageState extends State<ForgotPassPage> {
  final _formkey = GlobalKey<FormState>();
  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();

    super.dispose();
  }

  //submit btn function
  void onSubmit() {
    // if (_formkey.currentState!.validate()) {
    //   _formkey.currentState!.save();
    // }
    // debugPrint(emailController.text);
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const CreatePasswordPage(),
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
                        "Forgot Password",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                        ),
                      ),
                      Text(
                        "Forgotten your password, let us help you recover it safely.",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: kPadding / 2),

                //email field
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kPadding),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: "Enter e-mail ",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: kPadding / 2),

                //submit btn
                CustomButton(
                  onTap: onSubmit,
                  btnName: "Reset Password",
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
