import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/images/login_bg.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 115),
                  width: 200,
                  height: 200,
                  child: Image.asset(
                    'assets/images/cloud.png',
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 20),
                const Text('Welcome to', style: TextStyle(fontSize: 20)),
                const Text('Dirbbox',
                    style:
                        TextStyle(fontSize: 38, fontWeight: FontWeight.bold)),
                const SizedBox(height: 20),
                Container(
                  width: 240,
                  child: const Text(
                      'Best cloud storage platform for all business and individuals to manage there data\n\nJoin For Free.',
                      style: TextStyle(fontSize: 14, height: 1.5)),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFEEF7FE),
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 10)),
                      child: Row(children: [
                        Image.asset('assets/images/icons/fingerprint.png'),
                        const SizedBox(width: 10),
                        const Text(
                          "Smart Id",
                          style:
                              TextStyle(color: Color(0xFF567DF4), fontSize: 16),
                        ),
                      ]),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('/home');
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF567DF4),
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 10)),
                      child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Sign in",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16)),
                            SizedBox(width: 10),
                            Icon(
                              Icons.arrow_right_alt,
                              color: Colors.white,
                            )
                          ]),
                    )
                  ],
                ),
                const SizedBox(height: 60),
                const Center(
                    child: Text("Use Social Login",
                        style: TextStyle(fontSize: 12, height: 1.5))),
                const SizedBox(height: 30),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset('assets/images/icons/instagram.png'),
                  const SizedBox(width: 60),
                  Image.asset('assets/images/icons/twitter.png'),
                  const SizedBox(width: 60),
                  Image.asset('assets/images/icons/facebook.png')
                ]),
                const SizedBox(height: 50),
                const Center(
                    child: Text("Create an account",
                        style: TextStyle(fontSize: 16, height: 1.5))),
              ],
            ),
          )
        ],
      ),
    );
  }
}
