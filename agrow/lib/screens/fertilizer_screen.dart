import 'package:flutter/material.dart';

class FertilizerScreen extends StatefulWidget {
  const FertilizerScreen({super.key});

  @override
  _FertilizerScreenState createState() => _FertilizerScreenState();
}

class _FertilizerScreenState extends State<FertilizerScreen> {
  final TextEditingController _plantController = TextEditingController();
  final TextEditingController _nitrogenController = TextEditingController();
  final TextEditingController _phosphorusController = TextEditingController();
  final TextEditingController _potassiumController = TextEditingController();

  String recommendation = "Enter NPK values to get recommendations.";
  String plantName = "Unknown Plant";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF88C5A3),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Fertilizer Recommendations',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Icon(Icons.circle, color: Colors.green, size: 14),
                  SizedBox(width: 6),
                  Text("Connected", style: TextStyle(fontWeight: FontWeight.w500)),
                ],
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _plantController,
                decoration: const InputDecoration(
                  labelText: "Plant Type",
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    plantName = value.isEmpty ? "Unknown Plant" : value;
                  });
                },
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  const Icon(Icons.grass, color: Colors.blue),
                  const SizedBox(width: 6),
                  Text(
                    "Plant: $plantName",
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _nitrogenController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Nitrogen (%)",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _phosphorusController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Phosphorus (%)",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _potassiumController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Potassium (%)",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  final int nitrogen = int.tryParse(_nitrogenController.text) ?? 0;
                  final int phosphorus = int.tryParse(_phosphorusController.text) ?? 0;
                  final int potassium = int.tryParse(_potassiumController.text) ?? 0;

                  setState(() {
                    recommendation = _getFertilizerRecommendation(nitrogen, phosphorus, potassium);
                  });
                },
                child: const Text("Get Recommendation"),
              ),
              const SizedBox(height: 16),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1.2,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  InfoCard(label: "Nitrogen", percentage: int.tryParse(_nitrogenController.text) ?? 0, quality: _getQuality(int.tryParse(_nitrogenController.text) ?? 0), color: Colors.orange),
                  InfoCard(label: "Phosphorus", percentage: int.tryParse(_phosphorusController.text) ?? 0, quality: _getQuality(int.tryParse(_phosphorusController.text) ?? 0), color: Colors.blue),
                  InfoCard(label: "Potassium", percentage: int.tryParse(_potassiumController.text) ?? 0, quality: _getQuality(int.tryParse(_potassiumController.text) ?? 0), color: Colors.green),
                ],
              ),
              const SizedBox(height: 16),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  recommendation,
                  style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Function to determine fertilizer recommendation based on NPK values
  String _getFertilizerRecommendation(int nitrogen, int phosphorus, int potassium) {
    if (nitrogen < 50) {
      return "Add more nitrogen-based fertilizer to improve plant growth.";
    } else if (phosphorus < 30) {
      return "Add phosphorus-based fertilizer to strengthen roots.";
    } else if (potassium < 40) {
      return "Add potassium-based fertilizer to improve crop quality.";
    } else {
      return "NPK levels are optimal. No additional fertilizer needed.";
    }
  }

  // Function to determine quality based on percentage
  String _getQuality(int value) {
    if (value < 30) {
      return "Critical";
    } else if (value < 50) {
      return "Low";
    } else if (value < 70) {
      return "Moderate";
    } else {
      return "Good";
    }
  }
}

class InfoCard extends StatelessWidget {
  final String label;
  final int percentage;
  final String quality;
  final Color color;

  const InfoCard({
    super.key,
    required this.label,
    required this.percentage,
    required this.quality,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.3),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(label, style: const TextStyle(fontSize: 16, color: Colors.white)),
          Text("$percentage%", style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white)),
          Text(quality, style: TextStyle(color: color)),
        ],
      ),
    );
  }
}