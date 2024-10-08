import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xo_project/cubits/play_cubit/play_state.dart';
import 'package:xo_project/widgets/play_widget.dart';

class PlayCubit extends Cubit<Allstate> {
  PlayCubit() : super(PlayState());
  String playername = 'X';
  String playwinner = "";
  void draw() {
    if (list.length == 9) {
      list = ['', '', '', '', '', '', '', '', ''];
      playername = 'X';
      playwinner = "";
      emit(Draw());
    } else {
      emit(PlayState());
    }
  }

  void playname() {
    if (playername == 'X') {
      playername = 'O';
    } else {
      playername = 'X';
    }
  }

  void restart() {
    emit(Reset());

    list = ['', '', '', '', '', '', '', '', ''];
    playername = 'X';
    playwinner = "";
  }

  void checkwinner() {
    if (list[0] == list[1] && list[1] == list[2] && list[0] != '') {
      emit(Winner());
      playwinner = list[0];
    } else if (list[2] == list[5] && list[5] == list[8] && list[2] != '') {
      emit(Winner());

      playwinner = list[2];
    } else if (list[8] == list[7] && list[7] == list[6] && list[8] != '') {
      emit(Winner());

      playwinner = list[8];
    } else if (list[0] == list[3] && list[3] == list[6] && list[0] != '') {
      emit(Winner());

      playwinner = list[0];
    } else if (list[1] == list[4] && list[4] == list[7] && list[1] != '') {
      emit(Winner());

      playwinner = list[1];
    } else if (list[3] == list[4] && list[4] == list[5] && list[3] != '') {
      emit(Winner());

      playwinner = list[3];
    } else if (list[0] == list[4] && list[4] == list[8] && list[0] != '') {
      emit(Winner());

      playwinner = list[0];
    } else if (list[2] == list[4] && list[4] == list[6] && list[2] != '') {
      emit(Winner());

      playwinner = list[2];
    } else {
      emit(PlayState());
    }
  }
}
