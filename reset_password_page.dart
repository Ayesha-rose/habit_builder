import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:habit_builder/ui/components/big_button.dart';
import 'package:habit_builder/utils/labels.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme;
    final scheme = theme.colorScheme;
    return Scaffold(
      backgroundColor: scheme.primaryContainer,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: CircleButton(
                  child: const Center(
                    child: Icon(Icons.arrow_back_rounded),
                  ),
                  onPressed: (){},
                ),
              ),
              const Spacer(),
              const SizedBox(height: 26),
              Text(
                Labels.forgotYourPassword,
                style: style.headlineSmall,
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              // const SizedBox(height: 30),
              Expanded(
                flex: 5,
                child: SvgPicture.asset(
                  "assets/images/forgot.svg",
                ),
              ),
              // const SizedBox(
              //   height: 40,
              // ),
              const Spacer(),
              Card(
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        //  Container( // Wrap the Text widget with Container
                        //   color: scheme.onSecondary, // Set the background color here
                        //   padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16), // Add padding
                        //   child: Text(
                        //     Labels.enterYourRegisteredEmail,
                        //     style: TextStyle(
                        //       color: scheme.secondary, // Text color for contrast
                        //     ),
                        //   ),
                        // ),
                        const Text(
                          Labels.enterYourRegisteredEmail,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: Labels.email,
                            prefixIcon: Icon(Icons.email_outlined),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        BigButton(
                          stretch: true,
                          onPressed: () {},
                          text: Labels.sendResetLink,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Spacer(),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "${Labels.rememberPassword}",
                  style: style.bodyMedium,
                  children: [
                    TextSpan(
                      text: Labels.login,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CircleButton extends StatelessWidget {
  const CircleButton({
    Key? key,
    required this.child,
    this.onPressed,
  }) : super(key: key);

  final Widget child;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme;
    final scheme = theme.colorScheme;
    return Container(
      height: 44,
      width: 44,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: scheme.onPrimary.withOpacity(0.1),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(32),
        onTap: onPressed,
        child: child,
      ),
    );
  }
}
