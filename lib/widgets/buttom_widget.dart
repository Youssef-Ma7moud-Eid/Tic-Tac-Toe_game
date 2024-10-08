import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xo_project/cubits/play_cubit/play_cubit.dart';

class ButtomWidget extends StatelessWidget {
  const ButtomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 80, vertical: 5),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextButton(
        onPressed: () {
          BlocProvider.of<PlayCubit>(context).restart();
        },
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.refresh,
              color: Colors.black,
              size: 27,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Reset',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
