import 'package:flutter/material.dart';
import 'package:fmc_part_5/models/character.dart';
import 'package:fmc_part_5/models/vocation.dart';

class CharacterStore extends ChangeNotifier {
  
  final List<Character> _characters = [
  Character(id: "1", name: "Ash",    vocation: Vocation.ash,    slogan: "Gotta catch em all!"),
  Character(id: "2", name: "Misty",  vocation: Vocation.misty,  slogan: "Go togapie!"),
  Character(id: "3", name: "Jessie", vocation: Vocation.jessie, slogan: "Prepare for trouble..."),
  Character(id: "4", name: "James",  vocation: Vocation.james,  slogan: "And make it double..."),
];

  get characters => _characters;

  // add character
  void addCharacter(Character character) {
    _characters.add(character);
  }

  // save/update character

  // remove character

  // fetch characters
}