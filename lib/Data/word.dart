import 'package:kunyomi/Data/jlpt_level.dart';

class Word {

  Word({
    required this.writing,
    required this.reading,
    required this.meaning,
    this.tip,
    this.jlptLevel
  });

  final List<String> writing;
  final List<String> reading;

  final String meaning;
  final String? tip;
  final JlptLevel? jlptLevel;

}