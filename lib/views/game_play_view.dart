import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xo_project/cubits/play_cubit/play_cubit.dart';
import 'package:xo_project/cubits/play_cubit/play_state.dart';
import 'package:xo_project/widgets/buttom_widget.dart';
import 'package:xo_project/widgets/message_dialog.dart';
import 'package:xo_project/widgets/play_widget.dart';

class GamePlayView extends StatefulWidget {
  const GamePlayView({super.key});

  @override
  State<GamePlayView> createState() => _GamePlayViewState();
}

class _GamePlayViewState extends State<GamePlayView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: BlocConsumer<PlayCubit, Allstate>(
        listener: (context, state) async {
          if (state is Winner || state is Draw) {
            BlocProvider.of<PlayCubit>(context).playname();

            await showDialogMessage(
              context: context,
              title: state is Draw ? 'Draw' : 'winner',
              message: state is Draw
                  ? ' Draw between two players'
                  : ' player ${BlocProvider.of<PlayCubit>(context).playername} : is winner',
            );
            await BlocProvider.of<PlayCubit>(context).restart();
          }
        },
        builder: (context, state) {
          return SafeArea(
              child: Container(
            margin: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Player Turn: ${BlocProvider.of<PlayCubit>(context).playername}',
                  style: const TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 40),
                SizedBox(
                  height: 350,
                  child: GridView.builder(
                    itemCount: 9,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 12,
                      childAspectRatio: 1.1,
                    ),
                    itemBuilder: (context, index) {
                      return PlayWidget(index: index);
                    },
                  ),
                ),
                const SizedBox(height: 20),
                const ButtomWidget(),
              ],
            ),
          ));
        },
      ),
    );
  }
}
