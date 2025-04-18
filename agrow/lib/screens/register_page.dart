import 'package:flutter/material.dart';
import 'package:agrow/screens/landing_page.dart'; // Import the landing page

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
            // Close Button
            SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20.0),
              child: Align(
              alignment: Alignment.topLeft,
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
            ),
            ),
          // Main Content
          SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
                child: IntrinsicHeight(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20),
                      const Text(
                        'REGISTER',
                        style: TextStyle(
                          fontSize: 38,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 1.5,
                        ),
                      ),
                      const SizedBox(height: 40),
                      const SizedBox(height: 32),
                      _buildTextField(hintText: 'First Name'),
                      const SizedBox(height: 24), // Increased margin
                      _buildTextField(hintText: 'Last Name'),
                      const SizedBox(height: 24), // Increased margin
                      _buildTextField(
                          hintText: 'Phone Number',
                          keyboardType: TextInputType.phone),
                      const SizedBox(height: 24), // Increased margin
                      _buildTextField(
                          hintText: 'Email',
                          keyboardType: TextInputType.emailAddress),
                      const SizedBox(height: 24), // Increased margin
                      _buildTextField(hintText: 'Password', obscureText: true),
                      const SizedBox(height: 50),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            // Implement registration logic
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF35C2A0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text(
                            'Register',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              letterSpacing: 1.2,
                            ),
                          ),
                        ),
                      ),
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

  Widget _buildTextField({
    required String hintText,
    bool obscureText = false,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return TextField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white.withOpacity(0.85),
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.black87),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
