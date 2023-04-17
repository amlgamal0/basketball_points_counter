import 'package:flutter/material.dart';

void main() {
  runApp(basketball_points_counter());
}

class basketball_points_counter extends StatefulWidget {
  const basketball_points_counter({super.key});

  @override
  State<basketball_points_counter> createState() {
    return _basketball_points_counterState();
  }
}

class _basketball_points_counterState extends State<basketball_points_counter> {
  int teamApoints = 0;

  int teamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Basketball Scor Counter'),
          backgroundColor: const Color.fromARGB(255, 74, 25, 114),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 450,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'TEAM  A',
                          style: TextStyle(fontSize: 30.0),
                        ),
                        Text(
                          '$teamApoints',
                          style: const TextStyle(fontSize: 50.0),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamApoints++;
                            });
                          },
                          child: const Text('+1 Point'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamApoints += 2;
                            });
                          },
                          child: const Text('+2 Point'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamApoints += 3;
                            });
                          },
                          child: const Text('+3 Point'),
                        ),
                      ]),
                ),
                const SizedBox(
                  height: 450,
                  child: VerticalDivider(
                    thickness: 2,
                    indent: 10,
                    endIndent: 10,
                  ),
                ),
                SizedBox(
                  height: 450,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'TEAM  B',
                          style: TextStyle(fontSize: 30.0),
                        ),
                        Text(
                          '$teamBpoints',
                          style: const TextStyle(fontSize: 50.0),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamBpoints++;
                            });
                          },
                          child: const Text('+1 Point'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamBpoints += 2;
                            });
                          },
                          child: const Text('+2 Point'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              teamBpoints += 3;
                            });
                          },
                          child: const Text('+3 Point'),
                        ),
                      ]),
                )
              ],
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  teamApoints = 0;
                  teamBpoints = 0;
                });
              },
              child: const Text('RESET'),
            ),
          ],
        ),
      ),
    );
  }
}
