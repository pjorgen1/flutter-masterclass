enum Vocation {
  ash(
    title: "Terminal Raider",
    description: "Adept in terminal commands",
    weapon: "Terminal",
    ability: "Shellshock",
    image: "ash.png",
  ),
  misty(
    title: "Code Junkie",
    description: "Uses code",
    weapon: "React 99",
    ability: "Mona Lisa Overdrive",
    image: "misty.png",
  ),
  jessie(
    title: "UX Ninja",
    description: "Visual attacker",
    weapon: "Infused Stylus",
    ability: "Triple Swipe",
    image: "jessie.png",
  ),
  james(
    title: "Algo Wizard",
    description: "Algorithm Magic",
    weapon: "Crystal Staff",
    ability: "Big O Blast",
    image: "james.png",
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

