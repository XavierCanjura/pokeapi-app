import 'package:flutter/material.dart';
import 'package:pokedex_app/presentation/widgets/badge/type_badge.dart';

class PokemonCard extends StatefulWidget {
  final String id;
  final String name;
  final List<String> types;
  final String imagePath;
  final Color background;

  const PokemonCard({
    super.key,
    required this.id,
    required this.name,
    required this.types,
    required this.imagePath,
    required this.background,
  });

  @override
  State<PokemonCard> createState() => _PokemonCardState();
}

class _PokemonCardState extends State<PokemonCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: widget.background,
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        splashColor: Colors.blue.withValues(alpha: 0.3),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Column(
            children: [
              Image.asset(widget.imagePath, width: 130),
              SizedBox(height: 10),
              Text(
                widget.name,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 5,
                children:
                    widget.types.map((element) {
                      return TypeBadge(type: element);
                    }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
