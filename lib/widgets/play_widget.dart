import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xo_project/cubits/play_cubit/play_cubit.dart';
import 'package:xo_project/cubits/play_cubit/play_state.dart';

class PlayWidget extends StatefulWidget {
  const PlayWidget({super.key, required this.index});
  final int index;

  @override
  State<PlayWidget> createState() => _PlayWidgetState();
}

class _PlayWidgetState extends State<PlayWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PlayCubit, Allstate>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color.fromARGB(255, 1, 127, 230),
          ),
          child: TextButton(
            onPressed: () {
              if (list[widget.index] == "") {
                list[widget.index] =
                    BlocProvider.of<PlayCubit>(context).playername;

                BlocProvider.of<PlayCubit>(context).checkwinner();

                print(state);
                if (state is Winner) {
                  BlocProvider.of<PlayCubit>(context).restart();
                } else if (state is Draw) {
                  BlocProvider.of<PlayCubit>(context).draw();
                } else {
                  BlocProvider.of<PlayCubit>(context).playname();
                }
              }
            },
            child: Text(
              list[widget.index],
              style: TextStyle(
                fontSize: 50,
                color: textColor[list[widget.index]],
              ),
            ),
          ),
        );
      },
    );
  }
}

Map<String, Color> textColor = {
  'X': const Color.fromARGB(255, 3, 212, 69),
  'O': const Color.fromARGB(255, 8, 80, 36),
};
List<String> list = ['', '', '', '', '', '', '', '', ''];
