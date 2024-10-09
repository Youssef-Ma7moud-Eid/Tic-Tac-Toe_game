class Winner extends Allstate {}

class PlayState extends Allstate {}

class Reset extends Allstate {
  final String message = "Reset";
}

class Draw extends Allstate {
  final String message = "Draw";
}

class Initialstate extends Allstate {}

class Allstate {}
