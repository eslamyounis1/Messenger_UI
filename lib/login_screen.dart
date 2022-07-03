// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Center(
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding:  const EdgeInsets.symmetric(
                  // vertical: 16.0,
                  horizontal: 16.0,
                ),
                child: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(
                          height: 210.0,
                        ),
                        Image(
                          width: 100.0,
                          height: 100.0,
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/b/be/Facebook_Messenger_logo_2020.svg/2048px-Facebook_Messenger_logo_2020.svg.png',
                          ),
                        ),
                        SizedBox(height: 130.0),
                      ],
                    ),
                    // const SizedBox(
                    //   height: 50.0,
                    // ),
                    Column(
                      children: [
                        Column(
                          children: [
                            TextFormField(
                              controller: emailController,
                              keyboardType: TextInputType.emailAddress,
                              onFieldSubmitted: (String value) {
                                print(value);
                              },
                              onChanged: (String value) {
                                print(value);
                              },
                              decoration: const InputDecoration(
                                hintText: 'Phone number or email',
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 7.0,
                        ),
                        Column(
                          children: [
                            TextFormField(
                              controller: passwordController,
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: true,
                              onFieldSubmitted: (String value) {
                                print(value);
                              },
                              onChanged: (String value) {
                                print(value);
                              },
                              decoration: const InputDecoration(
                                hintText: 'Password',
                                border: InputBorder.none,
                                suffixIcon: Icon(
                                  Icons.remove_red_eye,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          width: double.infinity,
                          color: Colors.blue,
                          child: Column(
                            children: [
                              MaterialButton(
                                onPressed: () {
                                  print(emailController.text);
                                  print(passwordController.text);
                                },
                                child: const Text(
                                  'LOG IN',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Don\'t have an account?',
                            ),
                            TextButton(
                                onPressed: () {},
                                child: const Text('Register')),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
