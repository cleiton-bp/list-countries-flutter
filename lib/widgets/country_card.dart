import 'package:flutter/material.dart';
import 'package:ap2/models/countrie.dart';
import 'package:ap2/screens/country_detail_screen.dart';

class CountryCard extends StatelessWidget {
  final Countrie countrie;

  const CountryCard({Key? key, required this.countrie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 16,
      ),
      child: ListTile(
        leading: Image.network(
          countrie.flagPng,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
        title: Text(
          countrie.commonName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                'Capital: ${countrie.capital.isNotEmpty ? countrie.capital.join(", ") : "Sem capital"}'),
            Text('Região: ${countrie.region}'),
          ],
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CountryDetailScreen(countrie: countrie),
            ),
          );
        },
      ),
    );
  }
}
