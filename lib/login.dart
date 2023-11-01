// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:fireflutter/pages/forgot_pw_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uts_mobile/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text Controller
  var _email = '';
  var _password = '';

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  // sign in function to show bottom sheet
  void signIn() {
    setState(() {
      _email = _emailController.text;
      _password = _passwordController.text;
    });
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 150,
            color: Colors.white,
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Text(
                    'Sign In Success!',
                    style: GoogleFonts.bebasNeue(
                      fontSize: 20,
                    ),
                  ),
                  const Text('Sign In'),
                  Text('Email: $_email'),
                  Text('Password: $_password'),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          );
        });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Icon(
                    Icons.android,
                    size: 100,
                  ),
                  // hello again
                  Text(
                    'Hello again!',
                    style: GoogleFonts.bebasNeue(
                      fontSize: 40,
                    ),
                  ),
                  const Text(
                    'welcome back to FireFlutter',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 50),
                  // email text field
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: TextField(
                          controller: _emailController,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email',
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  // password text field
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: TextField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          // onTap: () {
                          //   Navigator.push(context, MaterialPageRoute(builder: (context) {
                          //     return const ForgotPasswordPage();
                          //   }));
                          // },
                          child: const Text('Forgot Password?',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 52, 147, 224))),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 10),
                  // login button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: GestureDetector(
                      onTap: signIn,
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 52, 147, 224),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  // register button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("not a member?"),
                      GestureDetector(
                        // to sign up page with navigator
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const RegisterPage();
                          }));
                        },
                        child: const Text(" register now",
                            style: TextStyle(
                                color: Color.fromARGB(255, 52, 147, 224))),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
