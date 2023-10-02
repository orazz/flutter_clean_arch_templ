import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_arch_templ/config/constants/constants.dart';
import 'package:flutter_clean_arch_templ/features/home/domain/entities/character.dart';

class CharacterDetail extends StatelessWidget {
  final CharacterEntity character;

  CharacterDetail(this.character);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Character Details'),
      ),
      body: _CharacterDetailBody(character: character),
    );
  }
}

class _CharacterDetailBody extends StatelessWidget {
  const _CharacterDetailBody({
    super.key,
    required this.character,
  });

  final CharacterEntity character;

  @override
  Widget build(BuildContext context) {
    return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // Circular image
        Container(
          width: 150.0,
          height: 150.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle, 
          ),
          child: CachedNetworkImage(
              imageUrl: character.image!,
              fit: BoxFit.cover,
            ),
        ),
        SizedBox(height: HEIGHT_TENS),

        // Character name
        Text(
          character.name!,
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: HEIGHT_TENS),

        // Character status
        Text(
          'Status: ${character.status}',
          style: TextStyle(fontSize: 16.0),
        ),
        SizedBox(height: HEIGHT_TENS),

        // Character species
        Text(
          'Species: ${character.species}',
          style: TextStyle(fontSize: 16.0),
        ),
        SizedBox(height: HEIGHT_TENS),
      ],
    ),
    );
  }
}
