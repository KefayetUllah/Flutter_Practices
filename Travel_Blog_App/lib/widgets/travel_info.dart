import 'package:flutter/material.dart';
import 'package:travel_blog_app/model/travel.dart';

class TravelInfo extends StatefulWidget {
  const TravelInfo({super.key});

  @override
  State<TravelInfo> createState() => _TravelInfoState();
}

class _TravelInfoState extends State<TravelInfo> {
  final travel_list = Travel.travelinfo();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: travel_list.length,
        itemBuilder: (context, index) {
          var travel = travel_list[index];

          return Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Image.asset(
                    travel.img,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                child: Column(
                  children: [
                    Text(travel.id, style: TextStyle(color: Colors.white)),
                    Text(travel.place, style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              Positioned(
                right: 10,
                bottom:-10,
                child: Container(
                  height: 40,
                  width: 40,
                  child: Icon(Icons.arrow_forward_outlined),
                  decoration: BoxDecoration(
                    color: Colors.amber, // Move color here
                    borderRadius: BorderRadius.circular(50),
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
