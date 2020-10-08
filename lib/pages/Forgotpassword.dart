import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Forgot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
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
          child: Column(
            children: [
              const Text(
                'Forgot Password?',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Please enter your email to receive the instruction to reset your password',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              TextFormField(
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
              ),
              SizedBox(height: 20.0),
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Hexcolor('#EF715A'),
                ),
                child: Center(
                  child: Text(
                    'Send now',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.45,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
