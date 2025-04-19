import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> uploadJsonData(String assetPath) async {
  final String jsonString = await rootBundle.loadString(assetPath);
  final List<dynamic> data = json.decode(jsonString);

  for (final item in data) {
    await FirebaseFirestore.instance.collection('fertilizers').add(item);
  }
}

Stream<List<Map<String, dynamic>>> getFertilizers() {
  return FirebaseFirestore.instance
      .collection('fertilizers')
      .snapshots()
      .map((snapshot) =>
          snapshot.docs.map((doc) => doc.data()).toList());
}
