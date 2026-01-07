enum Vocation {
  raider(
    title: "Terminal Raider",
    description: "Adept in terminal commands",
    weapon: "Terminal",
    ability: "Shellshock",
    image: "terminal_raider.jpg",
  ),
  junkie(
    title: "Code Junkie",
    description: "Uses code",
    weapon: "React 99",
    ability: "Mona Lisa Overdrive",
    image: "code_junkie.jpg",
  ),
  ninja(
    title: "UX Ninja",
    description: "Visual attacker",
    weapon: "Infused Stylus",
    ability: "Triple Swipe",
    image: "ux_ninja.jpg",
  ),
  wizard(
    title: "Algo Wizard",
    description: "Algorithm Magic",
    weapon: "Crystal Staff",
    ability: "Big O Blast",
    image: "algo_wizard.jpg",
  );

  final String title;
  final String description;
  final String image;
  final String weapon;
  final String ability;

  const Vocation({
    required this.title,
    required this.description,
    required this.image,
    required this.weapon,
    required this.ability,
  });
}

