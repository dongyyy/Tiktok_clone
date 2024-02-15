import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone_dy/features/authentication/widgets/auth_button.dart';
import 'package:tiktok_clone_dy/features/authentication/widgets/username_screen.dart';
import 'package:tiktok_clone_dy/features/authentication/widgets/login_screen.dart';

import '../../../constants/gaps.dart';
import '../../../constants/sizes.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  
  void _onLoginTap(BuildContext context){
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ),
    );
  }

  void _onEmailTap(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const UsernameScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          color: Colors.grey.shade100,
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: Sizes.size32,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?"),
                Gaps.h5,
                GestureDetector(
                  onTap: () => _onLoginTap(context),
                  child: Text(
                    "Log in",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Sizes.size40,
          ),
          child: Column(
            children: [
              Gaps.v80,
              Text(
                "Sign Up for TikTok",
                style: TextStyle(
                  fontSize: Sizes.size24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Gaps.v20,
              Text(
                "Create a profile, follow other accounts, make your own videos, and more.",
                style: TextStyle(
                  fontSize: Sizes.size16,
                  color: Colors.black45,
                ),
                textAlign: TextAlign.center,
              ),
              Gaps.v40,
              GestureDetector(
                onTap: () => _onEmailTap(context),
                child: AuthButton(
                  icon: FaIcon(FontAwesomeIcons.user),
                  text: "Use phone or email",
                ),
              ),
              Gaps.v16,
              AuthButton(
                icon: FaIcon(FontAwesomeIcons.apple),
                text: "Continue with Apple",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
