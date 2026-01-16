import 'vocation.dart';

class Skill {
  final String id;
  final String name;
  final String image;
  final Vocation vocation;

  Skill({
    required this.id,
    required this.name,
    required this.image,
    required this.vocation,
  });
}

final List<Skill> allSkills = [
  // Water Trainer skills
  Skill(id: '1', name: 'Brute Force Bolt', image: 'bf_bolt.jpg', vocation: Vocation.water),
  Skill(id: '2', name: 'Recursive Wave', image: 'r_wave.jpg', vocation: Vocation.water),
  Skill(id: '3', name: 'Hash Beam', image: 'h_beam.jpg', vocation: Vocation.water),
  Skill(id: '4', name: 'Backtrack', image: 'backtrack.jpg', vocation: Vocation.water),

  // Rock Trainer skills
  Skill(id: '5', name: 'Lethal Touch', image: 'l_touch.jpg', vocation: Vocation.rock),
  Skill(id: '6', name: 'Sudo Blast', image: 's_blast.jpg', vocation: Vocation.rock),
  Skill(id: '7', name: 'Full Clear', image: 'f_clear.jpg', vocation: Vocation.rock),
  Skill(id: '8', name: 'Support Shell', image: 's_shell.jpg', vocation: Vocation.rock),

  // Grass Trainer skills
  Skill(id: '9', name: 'Infinite Loop', image: 'i_loop.jpg', vocation: Vocation.grass),
  Skill(id: '10', name: 'Type Cast', image: 't_cast.jpg', vocation: Vocation.grass),
  Skill(id: '11', name: 'Encapsulate', image: 'encapsulate.jpg', vocation: Vocation.grass),
  Skill(id: '12', name: 'Copy & Paste', image: 'c_paste.jpg', vocation: Vocation.grass),

  // Electric Trainer skills
  Skill(id: '13', name: 'Gamify', image: 'gamify.jpg', vocation: Vocation.electric),
  Skill(id: '14', name: 'Heat Map', image: 'h_map.jpg', vocation: Vocation.electric),
  Skill(id: '15', name: 'Wireframe', image: 'wireframe.jpg', vocation: Vocation.electric),
  Skill(id: '16', name: 'Dark Pattern', image: 'd_pattern.jpg', vocation: Vocation.electric),
];