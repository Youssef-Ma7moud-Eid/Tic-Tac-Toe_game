import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:xo_project/views/game_play_view.dart';
import 'package:xo_project/widgets/buttom_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Tic',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                ' Tac ',
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Toe',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 238, 30, 30),
                  Color.fromARGB(255, 77, 11, 201),
                ],
              ),
            ),
            child: Lottie.asset("assets/Animation - 1723890629139.json"),
          ),
          const SizedBox(
            height: 15,
          ),
          ButtomWidget(
            text: 'Play Vs player',
            color: Colors.red,
            icon: Icons.person,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const GamePlayView();
              }));
            },
          ),
          const SizedBox(
            height: 30,
          ),
          ButtomWidget(
            text: 'Play Vs Computer',
            color: Colors.blue,
            icon: Icons.computer,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const GamePlayView();
              }));
            },
          ),
        ],
      ),
    );
  }
}
