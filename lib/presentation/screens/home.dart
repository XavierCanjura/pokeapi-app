import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokedex_app/models/pokemon_model.dart';
import 'package:pokedex_app/presentation/widgets/cards/pokemon_card.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<PokemonModel> pokemons = [];

  _getPokemons() {
    pokemons = PokemonModel.getPokemons();
  }

  @override
  Widget build(BuildContext context) {
    _getPokemons();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 15,
        title: Text(
          'Pokédex',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w700,
            color: Colors.black87,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          filterSection(),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: (12 / 16),
                ),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 300,
                    child: PokemonCard(
                      id: '',
                      name: 'Hydreigon2',
                      types: ['Psquico', 'Volador'],
                      imagePath: 'assets/images/ditto.png',
                      background: Colors.blue,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row filterSection() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [searchField(), SizedBox(width: 10), filtersButton()],
    );
  }

  GestureDetector filtersButton() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 50,
        height: 50,
        margin: EdgeInsets.only(right: 15),
        padding: EdgeInsets.all(15),
        alignment: Alignment(0, 0),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: SvgPicture.asset(
            'assets/icons/filter.svg',
            width: 40,
            height: 40,
            colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
        ),
      ),
    );
  }

  Expanded searchField() {
    return Expanded(
      child: Container(
        height: 50,
        margin: EdgeInsets.only(left: 15),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0xff1D1617).withValues(alpha: 0.11),
              blurRadius: 40,
              spreadRadius: 0.0,
            ),
          ],
        ),
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.all(15),
            hintText: 'Search',
            hintStyle: TextStyle(color: Color(0xffDDDADA), fontSize: 14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(15),
              child: SvgPicture.asset('assets/icons/search.svg'),
            ),
          ),
        ),
      ),
    );
  }
}
