import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 248, 247, 229),
        body: SafeArea(
          child: Stack(fit: StackFit.expand, children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.teal,
                            child: Row(
                              children: [
                                Expanded(
                                    child: Column(
                                  children: [
                                    Expanded(
                                        child: Container(color: Colors.grey)),
                                    Expanded(
                                        child: Container(color: Colors.orange)),
                                    Expanded(
                                        child: Container(color: Colors.blue)),
                                    Expanded(
                                        child: Container(color: Colors.pink)),
                                  ],
                                )),
                                Expanded(
                                    child: Column(
                                  children: [
                                    const Expanded(flex: 3, child: SizedBox()),
                                    Expanded(
                                        child: Container(color: Colors.green))
                                  ],
                                )),
                                Expanded(
                                    child: Column(
                                  children: [
                                    const Expanded(flex: 3, child: SizedBox()),
                                    Expanded(
                                        child: Container(color: Colors.yellow))
                                  ],
                                )),
                              ],
                            ),
                          )),
                      Expanded(flex: 2, child: Container(color: Colors.black)),
                      Expanded(flex: 2, child: Container(color: Colors.yellow)),
                      const Expanded(flex: 2, child: SizedBox()),
                    ],
                  ),
                ),
                Expanded(
                    flex: 2, child: Container(color: const Color(0xFFFF4081))),
                const SizedBox(width: 10),
                Expanded(child: Container(color: const Color(0xFFFF4081))),
              ],
            ),
            Positioned(
              bottom: 15,
              right: 15,
              child: FloatingActionButton(
                  onPressed: () {}, child: const Icon(Icons.play_arrow)),
            ),
            Row(
              children: [
                const Expanded(flex: 75, child: SizedBox()),
                Expanded(
                    flex: 90,
                    child: Column(
                      children: [
                        const Expanded(flex: 325, child: SizedBox()),
                        Expanded(
                            flex: 150,
                            child: Container(
                              color: const Color(0x8A000000),
                            )),
                        const Expanded(flex: 225, child: SizedBox()),
                      ],
                    )),
                const Expanded(flex: 235, child: SizedBox()),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
