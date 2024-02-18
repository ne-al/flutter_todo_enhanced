import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_todo_enhanced/app/components/custom_textfield.dart';
import 'package:flutter_todo_enhanced/core/services/auth_service.dart';
import 'package:gap/gap.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:go_router/go_router.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
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
                              'REGISTER PAGE',
                              style: TextStyle(
                                fontSize: 40.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'Welcome, Enter your details to register',
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
                          height: 345.h,
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
                                  controller: nameController,
                                  hintText: 'Enter your full name',
                                  labelText: 'Name',
                                  isObscure: false,
                                ),
                                const Gap(12),
                                CustomTextField(
                                  controller: emailController,
                                  hintText: 'Enter your email',
                                  labelText: 'Email',
                                  isObscure: false,
                                ),
                                const Gap(12),
                                CustomTextField(
                                  controller: passwordController,
                                  hintText: 'Enter your password',
                                  labelText: 'Password',
                                  isObscure: true,
                                ),
                                const Gap(20),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(
                                      width: 180.w,
                                      height: 46.h,
                                      child: OutlinedButton(
                                        onPressed: createUser,
                                        child: const Text('REGISTER'),
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
                text: 'Already have an account ? ',
                style: TextStyle(
                  fontFamily: 'Oswald',
                  color: Colors.grey.shade400,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 0.4,
                ),
                children: [
                  TextSpan(
                    text: 'Login here!',
                    style: TextStyle(
                      fontFamily: 'Oswald',
                      color: Colors.blue,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.4,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        context.pop();
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

  void createUser() async {
    if (nameController.text.trim().isEmpty) {
      return;
    }
    if (nameController.text.trim().length < 3) {
      return;
    }
    if (emailController.text.trim().isEmpty) {
      return;
    }
    if (passwordController.text.trim().isEmpty) {
      return;
    }
    if (passwordController.text.trim().length < 6) {
      return;
    }

    await AuthService().createUser(
      emailController.text.trim(),
      passwordController.text.trim(),
      nameController.text.trim(),
    );
  }
}
