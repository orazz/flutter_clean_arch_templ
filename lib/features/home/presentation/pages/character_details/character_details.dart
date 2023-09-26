import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:clean_arch_templ/features/home/domain/entities/character.dart';

class CharacterDetail extends StatelessWidget {
  final CharacterEntity character;

  CharacterDetail(this.character);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Character Details'),
      ),
      body: _buildBody(),
    );
  }

  Center _buildBody() {
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
          SizedBox(height: 20.0),

          // Character name
          Text(
            character.name!,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),

          // Character status
          Text(
            'Status: ${character.status}',
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 10.0),

          // Character species
          Text(
            'Species: ${character.species}',
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 10.0),

          // Other character details (add more as needed)
        ],
      ),
    );
  }
}
