import 'package:flutter/material.dart';

class DetailJadwalPage extends StatelessWidget {

  final String studio;

  const DetailJadwalPage({
    super.key,
    required this.studio,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Detail Jadwal'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [

            Text(
              studio,
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              'Jadwal Film',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            scheduleCard('Avatar 3', '10:00'),
            scheduleCard('Spider-Man', '13:00'),
            scheduleCard('Inception', '16:00'),
            scheduleCard('Resident Evil', '19:00'),

            const Spacer(),

            SizedBox(
              width: double.infinity,

              child: ElevatedButton(
                onPressed: () {

                  // Mengirim data kembali
                  Navigator.pop(
                    context,
                    studio,
                  );
                },

                child: const Text(
                  'Pilih Studio',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget scheduleCard(
    String film,
    String jam,
  ) {
    return Card(
      child: ListTile(
        leading: const Icon(
          Icons.access_time,
          color: Colors.red,
        ),

        title: Text(film),

        trailing: Text(
          jam,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}