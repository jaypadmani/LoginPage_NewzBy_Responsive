import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isHiddenPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 100,
              child: Center(
                child: Image.asset('assets/images/logo2.png'),
              ),
            ),
            
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 360,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 120),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          child: Text(
                            'Sign in to NewzBy!',
                            style: TextStyle(
                                fontSize: 45, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          width: 50,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                          'assets/images/illustration-2.png',
                          width: 300,
                        ),
                      ],
                    ),
                  ),
                ),
                Image.asset(
                  'assets/images/illustration-1.png',
                  width: 260,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height / 6),
                  child: Container(
                    width: 320,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Column(
                        children: [
                          TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: 'Enter Email',
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.grey,
                              ),
                              filled: true,
                              fillColor: Colors.blueGrey[50],
                              labelStyle: TextStyle(fontSize: 12),
                              contentPadding: EdgeInsets.only(left: 10),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blueGrey,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.blueGrey),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            obscureText: _isHiddenPassword,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              counterText: 'Forgot Password?',
                              filled: true,
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.grey,
                              ),
                              fillColor: Colors.blueGrey[50],
                              suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _isHiddenPassword = !_isHiddenPassword;
                                    });
                                  },
                                  child: Icon(_isHiddenPassword
                                      ? Icons.visibility
                                      : Icons.visibility_off)),
                              labelStyle: TextStyle(fontSize: 12),
                              contentPadding: const EdgeInsets.only(left: 10),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.blueGrey),
                                  borderRadius: BorderRadius.circular(15)),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.blueGrey),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.deepPurple,
                                  ),
                                ]),
                            child: ElevatedButton(
                              child: Container(
                                width: double.infinity,
                                height: 40,
                                child: Center(
                                  child: Text('Sign In'),
                                ),
                              ),
                              onPressed: () => print('Signed In'),
                              style: ElevatedButton.styleFrom(
                                  onPrimary: Colors.white,
                                  primary: Colors.deepPurple,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15))),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
