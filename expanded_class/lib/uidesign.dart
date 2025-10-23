import 'package:flutter/material.dart';

class Uidesign extends StatefulWidget {
  const Uidesign({super.key});

  @override
  State<Uidesign> createState() => _UidesignState();
}

class _UidesignState extends State<Uidesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expanded UI")),
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.amber,
              child: Column(
                children: [
                  Expanded(flex: 3, child: Container(color: Colors.teal)),
                  Expanded(flex: 4, child: Container(color: Colors.yellow)),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(color: Colors.blue),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.red,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(color: Colors.amber),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(color: Colors.deepPurpleAccent),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
              child: Column(
                children: [
                  Expanded(child: Container(color: Colors.cyanAccent)),
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              color: Colors.green,
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 5,
                                    child: Container(color: Colors.amber),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(color: Colors.green),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: Colors.teal,
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(color: Colors.green),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: Container(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
