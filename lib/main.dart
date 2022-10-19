import 'package:flutter/material.dart';
import 'package:flutter_navigation/figure_a.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.topCenter,
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 16.0, top: 16.0, right: 16.0, bottom: 0.0),
                      child: Center(
                        child: Image.asset('assets/images/logo.png'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 16.0, top: 16.0, right: 16.0, bottom: 0.0),
                      child: TextField(
                        style: TextStyle(
                          color: Colors.purpleAccent,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32.0),
                            borderSide: BorderSide(
                              color: Colors.purple,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'Email',
                          hintText: 'example@example.com',
                          labelStyle: TextStyle(
                            color: Colors.purpleAccent,
                          ),
                          hintStyle: TextStyle(
                            color: Colors.deepPurple,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 16.0, top: 16.0, right: 16.0, bottom: 16.0),
                      child: TextField(
                        obscureText: true,
                        style: TextStyle(
                          color: Colors.purpleAccent,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32.0),
                            borderSide: BorderSide(
                              color: Colors.purple,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'Password',
                          hintText: 'Must have at least 8 characters',
                          labelStyle: TextStyle(
                            color: Colors.purpleAccent,
                          ),
                          hintStyle: TextStyle(
                            color: Colors.deepPurple,
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FigureA()));
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(200, 40),
                        backgroundColor: Colors.purpleAccent,
                        elevation: 16.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                      ),
                      child: Text(
                        'Log In',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Divider(
                      height: 32,
                      thickness: 2,
                      indent: 16,
                      endIndent: 16,
                      color: Colors.blueAccent,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(200, 40),
                        backgroundColor: Colors.orange,
                        elevation: 16.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                      ),
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(200, 40),
                        backgroundColor: Colors.lightBlue,
                        elevation: 16.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                      ),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
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
