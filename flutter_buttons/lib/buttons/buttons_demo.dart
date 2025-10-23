import 'package:flutter/material.dart';

class Buttons_Demo extends StatefulWidget {
  const Buttons_Demo({super.key});

  @override
  State<Buttons_Demo> createState() => _Buttons_DemoState();
}

class _Buttons_DemoState extends State<Buttons_Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: Text("Save", style: TextStyle(color: Colors.white)),
            style: TextButton.styleFrom(
              backgroundColor: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          SizedBox(height: 20),
          OutlinedButton(
            style: OutlinedButton.styleFrom(),
            onPressed: () {},
            child: Text("Outlines"),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(),
            onPressed: () {},
            child: Text(
              "Elevated Button",
              style: TextStyle(color: Colors.green),
            ),
          ),
          SizedBox(height: 20),
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
          SizedBox(height: 20),
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),

          //Custom Button
          SizedBox(height: 20),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 54, 117, 244),
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0.9, 6.0),
                          color: Colors.amber,
                          blurRadius: 0.8,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(95.0),
                              bottomLeft: Radius.circular(95.0),
                              bottomRight: Radius.circular(200),
                            ),
                          ),
                          child: Icon(Icons.home),
                        ),
                        Text("HOME"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
