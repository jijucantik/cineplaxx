import 'package:flutter/material.dart';

class DetailMoviePage extends StatelessWidget {

  final String judul;
  final String genre;
  final String sinopsis;
  final String rating;

  const DetailMoviePage({
    super.key,
    required this.judul,
    required this.genre,
    required this.sinopsis,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Detail Film'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [

            Container(
              width: double.infinity,
              height: 220,
              decoration: BoxDecoration(
                color: Colors.red.shade100,
                borderRadius: BorderRadius.circular(15),
              ),

              child: const Icon(
                Icons.movie,
                size: 100,
                color: Colors.red,
              ),
            ),

            const SizedBox(height: 20),

            Text(
              judul,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              'Genre: $genre',
              style: const TextStyle(
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              'Rating: $rating',
              style: const TextStyle(
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'Sinopsis',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              sinopsis,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity,

              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },

                child: const Text('Kembali'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}