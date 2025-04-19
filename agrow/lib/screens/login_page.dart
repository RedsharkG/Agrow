import 'package:flutter/material.dart';
import 'landing_page.dart'; // Import the landing page
import 'register_page.dart'; // Import the register page
import 'home_page.dart'; // Import the home page

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
        child: Image.asset(
          'assets/images/tree_background.png',
          fit: BoxFit.cover,
        ),
          ),
          // Gradient Overlay
          Positioned.fill(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color(0xFF12372A),
            Color.fromRGBO(8, 24, 19, 0.9),
            Color.fromRGBO(0, 0, 0, 0.92),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
            ),
          ),
        ),
          ),
          Positioned(
            top: 80,
            left: 16,
            child: IconButton(
              icon: const Icon(Icons.close, color: Color(0xFF00CDA4), size: 36),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LandingPage(),
                  ),
                );
              },
            ),
          ),
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 50),
                      const Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      const SizedBox(height: 50),
                      Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                        'Email',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        ),
                        const SizedBox(height: 8),
                        TextField(
                        controller: _emailController,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white.withAlpha(51), // 0.2 * 255 = 51
                          enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        ),
                      ],
                      ),
                      const SizedBox(height: 20),
                      Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                        'Password',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        ),
                        const SizedBox(height: 8),
                        TextField(
                        controller: _passwordController,
                        obscureText: true,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white.withAlpha(51), // 0.2 * 255 = 51
                          enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        ),
                      ],
                      ),
                      const SizedBox(height: 20),
                      Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: const Size(50, 30),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: const Text(
                        'Forgot Password',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                        ),
                      ),
                      ),
                      const SizedBox(height: 20),

                      Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                        'Don\'t have an account : ',
                        style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        ),
                        ),
                        TextButton(
                        onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterPage(),
                        ),
                        );
                        },
                        style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: const Size(50, 30),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: const Text(
                        'Register',
                        style: TextStyle(
                        color: Color(0xFF00CDA4),
                        fontSize: 16,
                        ),
                        ),
                        ),
                      ],
                      ),
                      const SizedBox(height: 30),
                      ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF00CDA4),
                        minimumSize: const Size(150, 50),
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        ),
                      ),
                      ),
                      const SizedBox(height: 50),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
