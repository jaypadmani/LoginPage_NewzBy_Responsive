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
            Expanded(
              flex: 1,
              child: Container(
                height: 100,
                child: Center(
                  child: Image.asset('assets/images/logo2.png'),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: 360,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 120),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Expanded(
                              flex: 4,
                              child: SizedBox(
                              height: 50,
                            ),),
                            Expanded(
                              flex: 1,
                              child: GestureDetector(
                                child: const FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Text(
                                    'Sign in to NewzBy!',
                                    style: TextStyle(
                                        fontSize: 45,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Image.asset(
                                'assets/images/illustration-2.png',
                                width: 300,
                              ),
                            ),
                            const Expanded(
                              flex: 4,
                              child: SizedBox(
                              height: 50,
                            ),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      'assets/images/illustration-1.png',
                      width: 260,
                      height: 550,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height / 6),
                      child: Container(
                        width: 320,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Expanded(
                                flex: 1,
                                child: SizedBox(
                                  height: 50,
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: TextField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    hintText: 'Enter Email',
                                    prefixIcon: const Icon(
                                      Icons.email,
                                      color: Colors.grey,
                                    ),
                                    filled: true,
                                    fillColor: Colors.blueGrey[50],
                                    labelStyle: const TextStyle(fontSize: 12),
                                    contentPadding:
                                        const EdgeInsets.only(left: 10),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.blueGrey,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: const BorderSide(
                                          color: Colors.blueGrey),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: TextField(
                                  obscureText: _isHiddenPassword,
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    counterText: 'Forgot Password?',
                                    filled: true,
                                    prefixIcon: const Icon(
                                      Icons.lock,
                                      color: Colors.grey,
                                    ),
                                    fillColor: Colors.blueGrey[50],
                                    suffixIcon: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _isHiddenPassword =
                                                !_isHiddenPassword;
                                          });
                                        },
                                        child: Icon(_isHiddenPassword
                                            ? Icons.visibility
                                            : Icons.visibility_off)),
                                    labelStyle: const TextStyle(fontSize: 12),
                                    contentPadding:
                                        const EdgeInsets.only(left: 10),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.blueGrey),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: const BorderSide(
                                          color: Colors.blueGrey),
                                    ),
                                  ),
                                ),
                              ),

                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(30),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Colors.deepPurple,
                                          ),
                                        ]),
                                    child: ElevatedButton(
                                      onPressed: () => print('Signed In'),
                                      style: ElevatedButton.styleFrom(
                                          onPrimary: Colors.white,
                                          primary: Colors.deepPurple,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15))),
                                      child: const Center(
                                        child: FittedBox(
                                            fit: BoxFit.scaleDown,
                                            child: Text('Sign In')),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const Expanded(
                                flex: 1,
                                child: SizedBox(
                                  height: 50,
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
