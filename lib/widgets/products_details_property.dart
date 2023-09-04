import 'package:flutter/material.dart';

class ProductDetailsPropertyPage extends StatelessWidget {
  final String title;
  final String value;
  const ProductDetailsPropertyPage({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 16,
                           fontWeight: FontWeight.w400,
                           color: Colors.black45,
                        ),
                        ),
                      const SizedBox(height: 6),  
                        Text(
                        value,
                        style: const TextStyle(
                           fontSize: 18,
                           fontWeight: FontWeight.w800,
                        ),
                        ),
                    ],
                  );
  }
}