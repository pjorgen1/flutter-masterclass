import 'package:fmc_part_3/models/stats.dart';
import 'package:fmc_part_3/models/vocation.dart';

class Character with Stats{

  // constructor
  Character({
    required this.name,
    required this.slogan,
    required this.vocation,
    required this.id,
  });

  // fields
  final String name;
  final String slogan;
  final Vocation vocation;
  final String id;
  bool _isFav = false;

  // getters
  dynamic get isFav => _isFav;

  // methods
  void toggleIsFav() {
    _isFav = !_isFav;
  }
}
