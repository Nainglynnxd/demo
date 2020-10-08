import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lastone/pages/Forgotpassword.dart';
import 'Register.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        leading: IconButton(
          icon: Icon(Icons.keyboard_backspace),
          color: Colors.black,
          onPressed: () => Navigator.pop(context, false),
        ),
        elevation: 0,
        backgroundColor: Hexcolor('#ECEDE3'),
      ),
      backgroundColor: Hexcolor('#ECEDE3'),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
        child: Center(
          child: Form(
            child: Column(
              children: [
                const Text(
                  'Log in',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                emailField(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                passwordField(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                loginButton(context),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.45,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an account?'),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Register()),
                        );
                      },
                      child: Text(
                        ' Sign Up',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget emailField() {
  return TextFormField(
    cursorColor: Colors.pink,
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.white,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
        borderSide: BorderSide(color: Colors.white),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
        borderSide: BorderSide(color: Colors.white),
      ),
      prefixIcon: Icon(
        Icons.email_outlined,
        color: Colors.grey[600],
      ),
      hintText: ('user@youremail.com'),
    ),
  );
}

Widget passwordField() {
  return TextFormField(
    onTap: () => {
      debugPrint('It worked!!'),
    },
    obscureText: true,
    cursorColor: Colors.pink,
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.white,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
        borderSide: BorderSide(color: Colors.white),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
        borderSide: BorderSide(color: Colors.white),
      ),
      prefixIcon: Icon(
        Icons.lock_outlined,
        color: Colors.grey[600],
      ),
      hintText: ('password'),
      suffixText: ('Forgot?'),
      suffixStyle: TextStyle(
        color: Hexcolor('#EF715A'),
      ),
    ),
  );
}

Widget loginButton(context) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Forgot()),
      );
    },
    child: Container(
      height: MediaQuery.of(context).size.height * 0.07,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Hexcolor('#EF715A'),
      ),
      child: Center(
        child: const Text(
          'Log in',
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
  );
}
