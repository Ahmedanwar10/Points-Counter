import 'package:flutter/material.dart';

class Model extends StatefulWidget {
  const Model({Key? key}) : super(key: key);

  @override
  State<Model> createState() => _ModelState();
}

class _ModelState extends State<Model> {
  int team1Points = 0;
  int team2Points = 0;

  void reset() {
    setState(() {
      team1Points = 0;
      team2Points = 0;
    });
  }
  void subtractPoint(int team) {
    setState(() {
      if (team == 1 && team1Points > 0) {
        team1Points--;
      } else if (team == 2 && team2Points > 0) {
        team2Points--;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: const Text(
          'Points Counter',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Text(
                    "Team 1",
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 32,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '$team1Points',
                    style: const TextStyle(
                      fontSize: 100,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      minimumSize: const Size(150, 50),
                    ),
                    onPressed: () {
                      setState(() {
                        team1Points++;
                      });
                    },
                    child: const Text(
                      "Add 1 Point",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      minimumSize: const Size(150, 50),
                    ),
                    onPressed: () {
                      setState(() {
                        team1Points+=2;
                      });
                    },
                    child: const Text(
                      "Add 2 Point",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      minimumSize: const Size(150, 50),
                    ),
                    onPressed: () {
                      setState(() {
                        team1Points+=3;
                      });
                    },
                    child: const Text(
                      "Add 3 Point",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      minimumSize: const Size(150, 50),
                    ),
                    onPressed: () {
                      subtractPoint(1);
                    },
                    child: const Text(
                      "Delete",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                  ),

                ],
              ),
              const SizedBox(
                height: 500,
                child: VerticalDivider(
                  indent: 50,
                  endIndent: 50,
                  color: Colors.grey,
                  thickness: 1,
                ),
              ),
              Column(
                children: [
                  const Text(
                    "Team 2",
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 32,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '$team2Points',
                    style: const TextStyle(
                      fontSize: 100,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      minimumSize: const Size(150, 50),
                    ),
                    onPressed: () {
                      setState(() {
                        team2Points++;
                      });
                    },
                    child: const Text(
                      "Add 1 Point",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      minimumSize: const Size(150, 50),
                    ),
                    onPressed: () {
                      setState(() {
                        team2Points+=2;
                      });
                    },
                    child: const Text(
                      "Add 2 Point",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      minimumSize: const Size(150, 50),
                    ),
                    onPressed: () {
                      setState(() {
                        team2Points+=3;
                      });
                    },
                    child: const Text(
                      "Add 3 Point",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      minimumSize: const Size(150, 50),
                    ),
                    onPressed: () {
                      subtractPoint(2); // Subtract point for Team 1
                    },
                    child: const Text(
                      "Delete",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                  ),

                ],
              ),

            ],
          ),
          const SizedBox(height: 120,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: const Size(150, 50),
                ),
                onPressed: reset, // Call reset function on press
                child: const Text(
                  "Reset",
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
