import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_todo_enhanced/app/components/custom_textfield.dart';
import 'package:flutter_todo_enhanced/core/services/auth_service.dart';
import 'package:gap/gap.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12).r,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'LOGIN PAGE',
                              style: TextStyle(
                                fontSize: 40.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'Welcome back you\'ve been missed',
                              style: TextStyle(
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w300,
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 6,
                          right: 6,
                          top: 34,
                        ).r,
                        child: GlassContainer.clearGlass(
                          height: 272.h,
                          width: double.infinity,
                          borderRadius: BorderRadius.circular(20.r),
                          blur: 20,
                          color: Colors.grey.shade600.withOpacity(0.12),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8)
                                .r,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomTextField(
                                  controller: emailController,
                                  hintText: 'What was your email?',
                                  labelText: 'Email',
                                  isObscure: false,
                                ),
                                const Gap(16),
                                CustomTextField(
                                  controller: passwordController,
                                  hintText: 'What was your password?',
                                  labelText: 'Password',
                                  isObscure: true,
                                ),
                                const Gap(24),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                      onPressed: () {},
                                      child: const Text('Forgot Password?'),
                                    ),
                                    SizedBox(
                                      width: 180.w,
                                      height: 46.h,
                                      child: OutlinedButton(
                                        onPressed: signIn,
                                        child: const Text('LOGIN'),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'Don\'t have an account ? ',
                style: TextStyle(
                  fontFamily: 'Oswald',
                  color: Colors.grey.shade400,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 0.4,
                ),
                children: [
                  TextSpan(
                    text: 'Register here!',
                    style: TextStyle(
                      fontFamily: 'Oswald',
                      color: Colors.blue,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.4,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        context.go('/register');
                      },
                  ),
                ],
              ),
            ),
            const Gap(12),
          ],
        ),
      ),
    );
  }

  void signIn() async {
    if (emailController.text.trim().isEmpty) {
      return;
    }
    if (passwordController.text.trim().isEmpty) {
      return;
    }
    if (passwordController.text.trim().length < 6) {
      return;
    }

    try {
      await AuthService().signInUser(
        emailController.text.trim(),
        passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e.code);
    }
  }
}
