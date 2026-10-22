import 'package:flutter/material.dart';
import 'detail_movie.dart';

class MovieListPage extends StatelessWidget {
  const MovieListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Film Tayang'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),

      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [

          // FILM 1
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailMoviePage(
                    judul: 'Avatar 3',
                    genre: 'Action, Adventure, Fantasy',
                    sinopsis:
                        'Avatar 3 melanjutkan perjalanan bangsa Na’vi dalam menghadapi berbagai konflik dan ancaman baru.',
                    rating: '8.5/10',
                  ),
                ),
              );
            },

            child: movieCard(
              'Avatar 3',
              'Action, Adventure',
              '8.5',
              Icons.movie,
            ),
          ),

          // FILM 2
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailMoviePage(
                    judul: 'Spider-Man',
                    genre: 'Action, Adventure',
                    sinopsis:
                        'Spider-Man adalah pahlawan super yang menggunakan kekuatannya untuk melindungi masyarakat.',
                    rating: '8.8/10',
                  ),
                ),
              );
            },

            child: movieCard(
              'Spider-Man',
              'Action, Adventure',
              '8.8',
              Icons.movie,
            ),
          ),

          // FILM 3
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailMoviePage(
                    judul: 'Inception',
                    genre: 'Sci-Fi, Thriller',
                    sinopsis:
                        'Inception menceritakan sebuah tim yang menggunakan teknologi untuk memasuki dan memanipulasi mimpi.',
                    rating: '9.0/10',
                  ),
                ),
              );
            },

            child: movieCard(
              'Inception',
              'Sci-Fi, Thriller',
              '9.0',
              Icons.movie,
            ),
          ),

          // FILM 4
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailMoviePage(
                    judul: 'Resident Evil',
                    genre: 'Action, Horror',
                    sinopsis:
                        'Resident Evil menceritakan perjuangan manusia menghadapi ancaman virus dan makhluk berbahaya.',
                    rating: '8.2/10',
                  ),
                ),
              );
            },

            child: movieCard(
              'Resident Evil',
              'Action, Horror',
              '8.2',
              Icons.movie,
            ),
          ),
        ],
      ),
    );
  }

  // Widget untuk membuat kartu film
  Widget movieCard(
    String judul,
    String genre,
    String rating,
    IconData icon,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      elevation: 5,

      child: Padding(
        padding: const EdgeInsets.all(15),

        child: Row(
          children: [

            Container(
              width: 80,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.red.shade100,
                borderRadius: BorderRadius.circular(10),
              ),

              child: Icon(
                icon,
                size: 45,
                color: Colors.red,
              ),
            ),

            const SizedBox(width: 15),

            Expanded(
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,

                children: [

                  Text(
                    judul,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(genre),

                  const SizedBox(height: 8),

                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),

                      const SizedBox(width: 5),

                      Text(rating),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}