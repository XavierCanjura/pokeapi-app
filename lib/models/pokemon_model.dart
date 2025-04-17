import 'package:flutter/material.dart';

class PokemonModel {
  String name;
  String imagePath;
  Color color;

  PokemonModel({
    required this.name,
    required this.imagePath,
    required this.color,
  });

  static List<PokemonModel> getPokemons() {
    List<PokemonModel> pokemons = [];

    pokemons.add(
      PokemonModel(
        name: 'Pikachu',
        imagePath: 'assets',
        color: Colors.yellowAccent,
      ),
    );

    pokemons.add(
      PokemonModel(
        name: 'Raichu',
        imagePath: 'assets',
        color: Colors.yellowAccent,
      ),
    );

    return pokemons;
  }
}
