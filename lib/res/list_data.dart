import 'package:flutter/material.dart';

List listData = [
  {
    "title": 'Elephant',
    "number": 'One',
    "image_url": 'https://cdn-icons-png.flaticon.com/512/4193/4193367.png',
  },
  {
    "title": 'Horse',
    "number": 'Two',
    "image_url": 'https://cdn-icons-png.flaticon.com/512/4193/4193254.png',
  },
  {
    "title": 'Pig',
    "number": 'three',
    "image_url": 'https://cdn-icons-png.flaticon.com/512/4193/4193260.png',
  },
  {
    "title": 'Deer',
    "number": 'Four',
    "image_url": 'https://cdn-icons-png.flaticon.com/512/4193/4193273.png',
  },
  {
    "title": 'Tiger',
    "number": 'Five',
    "image_url": 'https://cdn-icons-png.flaticon.com/512/4193/4193303.png',
  },
];

/// get image for testing
String getImage(int id) {
  return 'https://www.itying.com/images/flutter/$id.png';
}

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.black87,
  primary: Colors.grey[300],
  minimumSize: const Size(88, 36),
  padding: const EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),
  ),
);
