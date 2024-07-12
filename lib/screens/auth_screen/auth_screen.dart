import 'package:apple/components/custom_button.dart';
import 'package:apple/components/custom_textfield.dart';
import 'package:apple/screens/home/homepage/homepage.dart';
import 'package:apple/utils/color_utils.dart';
import 'package:apple/utils/custom_navigator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  String type = 'signUp';
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
              width: size.width,
              height: size.height * 0.25,
              decoration: const BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/images.jpg'))),
              child: SafeArea(
                child: Stack(
                  children: [
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Hero(
                              tag: 'logo',
                              child: Image(
                                image: AssetImage('assets/images/apple.png'),
                                height: 55,
                                width: 55,
                                color: Colors.white,
                              )),
                          Text(
                            type == 'signUp'
                                ? 'Create Your Account'
                                : type == 'signIn'
                                    ? 'Sign In With Your Account'
                                    : 'Forgot Your Password',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            type == 'signUp'
                                ? 'Create Your User Accout With Us'
                                : type == 'signIn'
                                    ? 'Interact With Your Account'
                                    : 'Please Enter Your Email Address',
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey.shade300),
                          )
                        ],
                      ),
                    ),
                    BackButton(
                        color: Colors.white,
                        onPressed: () {
                          setState(() {
                            if (type == 'signUp') {
                            } else if (type == 'signIn') {
                              type = 'signUp';
                            } else {
                              type = 'signIn';
                            }
                          });
                        })
                  ],
                ),
              )),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
            child: Column(
              children: [
                type == 'signUp'
                    ? const CustomTextField(
                        hint: 'User Name',
                        prefixIcon: FontAwesomeIcons.user,
                      )
                    : const SizedBox(),
                const CustomTextField(
                  hint: 'Email',
                  prefixIcon: Icons.email,
                ),
                type == 'forgot'
                    ? const SizedBox()
                    : const CustomTextField(
                        hint: 'Password',
                        prefixIcon: Icons.password,
                        isPassword: true,
                      ),
                type == 'signUp'
                    ? const CustomTextField(
                        hint: 'Confirm Password',
                        prefixIcon: Icons.password,
                        isPassword: true,
                      )
                    : const SizedBox(),
                type == 'signIn'
                    ? Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              type = 'forgot';
                            });
                          },
                          child: Text(
                            'Forgot Your Password?',
                            style: TextStyle(
                                color: CustomColors.primaryColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    : const SizedBox(),
                const SizedBox(
                  height: 10,
                ),
                CustomButton(
                  onTap: () {
                    CustomNavigator.push(context, const HomePage());
                  },
                  size: size,
                  text: type == 'signUp'
                      ? 'Create Account'
                      : type == 'signIn'
                          ? 'Send Password Reset Email'
                          : 'sign In',
                ),
                const SizedBox(
                  height: 10,
                ),
                type == 'forgot'
                    ? const SizedBox()
                    : Text(type == 'signUp'
                        ? 'Already you have an account?'
                        : 'You Don\'t Have An Account'),
                const SizedBox(
                  height: 10,
                ),
                CustomButton(
                  size: size,
                  text: type == 'signUp'
                      ? 'Sign In'
                      : type == 'signIn'
                          ? 'Create Account'
                          : 'Sign In',
                  bgColor: Colors.white,
                  fontColor: CustomColors.primaryColor,
                  onTap: () {
                    setState(() {
                      type = type == 'signUp'
                          ? 'signIn'
                          : type == 'signIn'
                              ? 'signUp'
                              : 'signIn';
                    });
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
