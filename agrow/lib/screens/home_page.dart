import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            // Handle menu button press
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Text(
              'Hi Sehara!', // Replace with user's name.
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFC5E5DA),
              Color(0xFF269870),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 80, 16, 16), // Adjusted padding to account for the top
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.circle, color: Colors.green, size: 16),
                    const SizedBox(width: 8),
                    Text(
                      'Connected',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  'Live Information',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Wrap(
                  spacing: 12,
                  runSpacing: 12,
                  children: [
                    _buildInfoCard(
                      context,
                      title: 'Nitrogen',
                      value: '80%',
                      quality: 'Bad Quality',
                      color: const Color(0xFFD946EF), // Example color
                    ),
                    _buildInfoCard(
                      context,
                      title: 'Potassium',
                      value: '40%',
                      quality: 'Critical Quality',
                      color: const Color(0xFFF43F5E),
                    ),
                    _buildInfoCard(
                      context,
                      title: 'Phosphorus',
                      value: '90%',
                      quality: 'Good Quality',
                      color: const Color(0xFF10B981),
                    ),
                    _buildInfoCard(
                      context,
                      title: 'Moisture',
                      value: '90%',
                      quality: 'Perfect Quality',
                      color: const Color(0xFF06B6D4),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    'Critical! Need to add more Potassium.', // Make this a variable
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.red, // Example color
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Last Record',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFF34D399), // A lighter shade of green
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '05/02/2024 09:25 A.M.', // Make this a variable
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 12),
                      _buildRecordItem(
                        context,
                        title: 'Nitrogen',
                        value: '50%',
                        quality: 'Critical',
                        color: const Color(0xFFF43F5E),
                      ),
                      _buildRecordItem(
                        context,
                        title: 'Potassium',
                        value: '32%',
                        quality: 'Good',
                        color: const Color(0xFF10B981),
                      ),
                      _buildRecordItem(
                        context,
                        title: 'Phosphorus',
                        value: '15%',
                        quality: 'Bad',
                        color: const Color(0xFFD946EF),
                      ),
                      _buildRecordItem(
                        context,
                        title: 'Moisture',
                        value: '86%',
                        quality: 'Perfect',
                        color: const Color(0xFF06B6D4),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 80), // Add space for FAB
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle add new record
        },
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFF22C55E),
        shape: const CircleBorder(),
        child: const Icon(Icons.add, size: 36),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: SizedBox(height: 50),
      ),
    );
  }

  Widget _buildInfoCard(
    BuildContext context, {
    required String title,
    required String value,
    required String quality,
    required Color color,
  }) {
    return Container(
      width: (MediaQuery.of(context).size.width - 40) / 2, // Adjust as needed
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              color: Colors.black87,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: GoogleFonts.poppins(
              color: color,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            quality,
            style: GoogleFonts.poppins(
              color: Colors.black54,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecordItem(
    BuildContext context, {
    required String title,
    required String value,
    required String quality,
    required Color color,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            value,
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            quality,
            style: GoogleFonts.poppins(
              color: color,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
