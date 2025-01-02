import 'package:flutter/material.dart';
import 'package:habit_builder/ui/components/bg.dart';
import 'package:habit_builder/ui/components/big_button.dart';
import 'package:habit_builder/utils/labels.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme;
    final scheme = theme.colorScheme;
    final media = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -250,
            right: -20,
            child: Image.asset("assets/images/bg.png"),
          ),
          Container(
            height: media.size.height * 3 / 4,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  scheme.primaryContainer.withOpacity(0),
                  scheme.primaryContainer,
                ],
                stops: const [0.22, 0.5],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    Labels.welcomeTo2,
                    textAlign: TextAlign.center,
                    style: style.headlineMedium,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ...[
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/images/google.svg',
                        width: 22,
                        height: 22,
                      ),
                      label: const Text(Labels.continueWithGoogle),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/images/facebook.svg',
                        width: 22,
                        height: 22,
                      ),
                      label: const Text(Labels.continueWithFacebook),
                    ),
                  ]
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: e,
                        ),
                      )
                      .toList(),
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                    ),
                    child: SafeArea(
                      top: false,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 12,
                            ),
                            child: Text(
                              Labels.logInWithEmail,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const Divider(
                            height: 0.5,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                TextFormField(
                                  style: TextStyle(
                                    color: scheme.primary,
                                  ),
                                  decoration: const InputDecoration(
                                    hintText: Labels.email,
                                    prefixIcon: Icon(Icons.email_outlined),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    hintText: Labels.password,
                                    prefixIcon: Icon(Icons.lock_outline),
                                    suffix: Text(
                                      Labels.show,
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 14),
                                BigButton(
                                  onPressed: () {},
                                  text: Labels.login,
                                ),
                                const SizedBox(height: 12),
                                const Text(
                                  Labels.forgotPassword,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                                const SizedBox(height: 12),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
