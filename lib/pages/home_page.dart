import 'package:flutter/material.dart';
import 'package:flutter_application_1/util/emotional_face.dart';
import 'package:flutter_application_1/util/exercise_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                // greetings row
                // ignore: prefer_const_literals_to_create_immutables
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Hi Batuhan
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi Batuhan',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          '20 Aug 2022',
                          style: TextStyle(color: Colors.blue[200]),
                        )
                      ],
                    ),

                    // Notifications
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.all(12),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),

                SizedBox(
                  height: 25,
                ),

                // search bar
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12)),
                  padding: EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Search',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 25,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'How do you feel?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ),
                  ],
                ),

                SizedBox(
                  height: 25,
                ),

                //4 different faces

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //bad
                    Column(
                      children: [
                        EmotionalFace(
                          emotionalFace: '😔',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Bad',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),

                    //fine
                    Column(
                      children: [
                        EmotionalFace(
                          emotionalFace: '😃',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Fine',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),

                    //well

                    Column(
                      children: [
                        EmotionalFace(
                          emotionalFace: '🙂',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Well',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),

                    //excellent

                    Column(
                      children: [
                        EmotionalFace(
                          emotionalFace: '🤗',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Excellent',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(25),
              color: Colors.grey[200],
              child: Center(
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Exercises',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Icon(Icons.more_horiz),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  //listwiev of exercise

                  Expanded(
                    child: ListView(
                      children: [
                        ExerciseTile(
                          icon: Icons.favorite,
                          exerciseName: 'Speaking Skills',
                          numberOfExercises: 16,
                          color: Colors.orange,
                        ),
                        ExerciseTile(
                          icon: Icons.person,
                          exerciseName: 'Reading Skills',
                          numberOfExercises: 8,
                          color: Colors.green,
                        ),
                        ExerciseTile(
                          icon: Icons.favorite,
                          exerciseName: 'Writing Skills',
                          numberOfExercises: 20,
                          color: Colors.pink,
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
