import 'package:flutter/material.dart';
import 'package:travel_blog_app/widgets/travel_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.menu, size: 30.0, color: Colors.black),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Travel Blog", style: TextStyle(fontSize: 36.0)),
          Expanded(flex: 2, child: TravelInfo()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("Most Popular"), Text("View All")],
          ),
          Expanded(flex: 1, child: TravelInfo()),
        ],
      ),
    );
  }
}
