import 'package:flutter/material.dart';
import 'package:login_trestle/component/buttons/button.dart';
import 'package:login_trestle/homepage.dart';
import 'package:pinput/pinput.dart';
import '../component/buttons/constant.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    //verify code
    void verifyCode() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
    }

    //focused theme for pinput
    PinTheme focusedTheme = PinTheme(
      height: 75,
      width: 75,
      textStyle: const TextStyle(
        fontSize: 25,
      ),
      decoration: BoxDecoration(
        color: kWhite,
        border: Border.all(color: kColor),
        borderRadius: BorderRadius.circular(8),
      ),
    );
    //default theme for pinput
    PinTheme defaultTheme = PinTheme(
      height: 75,
      width: 75,
      textStyle: const TextStyle(
        fontSize: 25,
      ),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(8),
      ),
    );
    return Scaffold(
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
                    "OTP verification",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ),
                  Text(
                    "Enter the verification code we just sent on your phone",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
            ),

            //Pin put field
            Row(
              children: [
                Expanded(
                  child: Pinput(
                    defaultPinTheme: defaultTheme,
                    focusedPinTheme: focusedTheme,
                    submittedPinTheme: focusedTheme,
                  ),
                ),
              ],
            ),
            const SizedBox(height: kPadding),
            CustomButton(
              onTap: verifyCode,
              btnName: "Verify",
              color: kColor,
            ),
          ],
        ),
      ),
    );
  }
}
