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
    list = ['', '', '', '', '', '', '', '', ''];
    playername = 'X';
    playwinner = "";
    emit(Reset());
  }

  void checkwinner() {
    if (list[0] == list[1] && list[1] == list[2] && list[0] != '') {
      playwinner = list[0];
      emit(Winner());
    } else if (list[2] == list[5] && list[5] == list[8] && list[2] != '') {
      playwinner = list[2];
      emit(Winner());
    } else if (list[8] == list[7] && list[7] == list[6] && list[8] != '') {
      playwinner = list[8];
      emit(Winner());
    } else if (list[0] == list[3] && list[3] == list[6] && list[0] != '') {
      playwinner = list[0];
      emit(Winner());
    } else if (list[1] == list[4] && list[4] == list[7] && list[1] != '') {
      playwinner = list[1];
      emit(Winner());
    } else if (list[3] == list[4] && list[4] == list[5] && list[3] != '') {
      playwinner = list[3];
      emit(Winner());
    } else if (list[0] == list[4] && list[4] == list[8] && list[0] != '') {
      playwinner = list[0];
      emit(Winner());
    } else if (list[2] == list[4] && list[4] == list[6] && list[2] != '') {
      playwinner = list[2];
      emit(Winner());
    } else {
      emit(PlayState());
    }
  }
}
