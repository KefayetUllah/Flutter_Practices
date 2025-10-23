import 'package:flutter/material.dart';
import 'package:travel_blog_app/model/travel.dart';

class MostPopular extends StatefulWidget {
  const MostPopular({super.key});

  @override
  State<MostPopular> createState() => _MostPopularState();
}

class _MostPopularState extends State<MostPopular> {
  final mostPopular = Travel.mostPopularTravel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        scrollDirection:
            Axis.horizontal, // usually horizontal for "Most Popular"
        padding: const EdgeInsets.all(10),
        itemCount: mostPopular.length,
        separatorBuilder: (context, index) => const SizedBox(width: 15.0),
        itemBuilder: (context, index) {
          final travel = mostPopular[index]; // ✅ you forgot to define this

          return Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: Image.asset(
                  travel.img, // ✅ use travel.img (matches your Travel model)
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Container(
                  color: Colors.black54,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 3,
                  ),
                  child: Text(
                    travel.place,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
