import 'stats.dart';
import 'vocation.dart';
import 'skill.dart';

class Character with Stats{

  // constructor
  Character({
    required this.name,
    required this.slogan,
    required this.vocation,
    required this.id,
  });

  // fields
  final Set<Skill> skills = {};
  final String id;
  final String name;
  final Vocation vocation;
  final String slogan;
  bool _isFav = false;

  // getters
  dynamic get isFav => _isFav;

  // methods
  void toggleIsFav() {
    _isFav = !_isFav;
  }

  void updateSkill(Skill skill) {
    skills.clear();
    skills.add(skill);
  }
}
