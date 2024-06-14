import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voyage/pages/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final backgroungColor = const Color(0XFF0E0E11);
  final secondaryColor = const Color(0XFF1E1E27);
  final text100 = const Color(0XFFA6A6B5);
  final blue = const Color(0XFF266DF0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroungColor,
      resizeToAvoidBottomInset: true,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome back",
                  style: GoogleFonts.manrope(fontSize: 28, color: Colors.white),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Login to your account.",
                  style: GoogleFonts.manrope(fontSize: 16, color: text100),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20.0, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Email",
                  style: GoogleFonts.manrope(color: text100),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                    style: GoogleFonts.manrope(color: Colors.white),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: secondaryColor),
                      ),
                      contentPadding: const EdgeInsets.all(10),
                      hintStyle:
                          GoogleFonts.manrope(color: text100, fontSize: 14),
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20.0, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Password",
                  style: GoogleFonts.manrope(color: text100),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                    style: GoogleFonts.manrope(color: Colors.white),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: secondaryColor),
                      ),
                      contentPadding: const EdgeInsets.all(10),
                      hintStyle:
                          GoogleFonts.manrope(color: text100, fontSize: 14),
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                backgroundColor: blue,
                fixedSize: const Size.fromWidth(double.maxFinite),
              ),
              child: Text(
                'Login',
                style: GoogleFonts.manrope(
                    color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Don't have an account?",
                  style: GoogleFonts.manrope(color: text100),
                ),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterPage(),
                      ),
                    );
                  },
                  child: Text(
                    'Register',
                    style: GoogleFonts.manrope(
                        color: const Color(0XFFFFFFFF),
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
