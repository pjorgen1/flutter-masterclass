enum Vocation {
  water(
    title: "Water Trainer",
    description: "Uses Water and Ice type Pokemon",
    weapon: "Water Gun",
    ability: "Water Blast",
    image: "misty.png",
  ),
  rock(
    title: "Rock Trainer",
    description: "Uses Rock type Pokemon",
    weapon: "Brick",
    ability: "Brick Throw",
    image: "brock.png",
  ),
  grass(
    title: "Grass Trainer",
    description: "Uses Grass and Plant type Pokemon",
    weapon: "Gun",
    ability: "Blast Em!",
    image: "jessie.png",
  ),
  electric(
    title: "Electric Trainer",
    description: "Uses Electric type Pokemon",
    weapon: "Fists",
    ability: "Punch",
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

