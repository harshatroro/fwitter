import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fwitter/components/button.dart';
import 'package:url_launcher/url_launcher.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Center(
          child: SvgPicture.asset(
            "images/logo.svg",
            height: 24,
          colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    "See what's happening in the world right now.",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      FwitterButton(
                        onPressed: () {
                        //   TODO: Navigate to sign up screen
                        },
                        text: "Create account",
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              const TextSpan(
                                text: "By signing up, you agree to our ",
                                style: TextStyle(
                                  color: Colors.white54,
                                ),
                              ),
                              TextSpan(
                                text: "Terms",
                                style: const TextStyle(
                                  color: Colors.blue,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    launchUrl("https://twitter.com/en/tos" as Uri);
                                  },
                              ),
                              const TextSpan(
                                text: ", ",
                                style: TextStyle(
                                  color: Colors.white54,
                                ),
                              ),
                              TextSpan(
                                text: "Privacy Policy",
                                style: const TextStyle(
                                  color: Colors.blue,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    launchUrl("https://twitter.com/en/privacy" as Uri);
                                  },
                              ),
                              const TextSpan(
                                text: " and ",
                                style: TextStyle(
                                  color: Colors.white54,
                                ),
                              ),
                              TextSpan(
                                text: "Cookie Use",
                                style: const TextStyle(
                                  color: Colors.blue,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                  launchUrl("https://help.twitter.com/en/rules-and-policies/twitter-cookies" as Uri);
                                  },
                              ),
                              const TextSpan(
                                text: ".",
                                style: TextStyle(
                                  color: Colors.white54,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ),
              Expanded(
                flex: 1,
                child: RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: "Have an account already? ",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white54
                        ),
                      ),
                      TextSpan(
                        text: "Log in",
                        style: const TextStyle(
                            fontSize: 16,
                            color: Colors.blue
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                          //   TODO: Navigate to login screen
                          },
                      ),
                    ]
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
