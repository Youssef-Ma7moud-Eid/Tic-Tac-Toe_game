import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xo_project/cubits/play_cubit/play_cubit.dart';
import 'package:xo_project/views/game_play_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PlayCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: GamePlayView(),
      ),
    );
  }
}
