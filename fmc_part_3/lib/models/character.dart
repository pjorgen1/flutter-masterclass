import 'package:fmc_part_3/models/stats.dart';
import 'package:fmc_part_3/models/vocation.dart';
import 'package:fmc_part_3/models/skill.dart';
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

// dummy character data
List<Character> characters = [
  Character(id: "1", name: "Ash",    vocation: Vocation.ash,    slogan: "Gotta catch em all!"),
  Character(id: "2", name: "Misty",  vocation: Vocation.misty,  slogan: "Go togapie!"),
  Character(id: "3", name: "Jessie", vocation: Vocation.jessie, slogan: "Prepare for trouble..."),
  Character(id: "4", name: "James",  vocation: Vocation.james,  slogan: "And make it double..."),
];
