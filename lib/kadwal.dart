import 'package:flutter/material.dart';
import 'detail_jadwal.dart';

class JadwalBioskopPage extends StatefulWidget {
  const JadwalBioskopPage({super.key});

  @override
  State<JadwalBioskopPage> createState() =>
      _JadwalBioskopPageState();
}

class _JadwalBioskopPageState
    extends State<JadwalBioskopPage> {

  String studioDipilih = '';

  // Fungsi memilih studio
  Future<void> pilihStudio(String studio) async {

    // Mengirim nama studio ke halaman berikutnya
    final hasil = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailJadwalPage(
          studio: studio,
        ),
      ),
    );

    // Menerima data kembali
    if (hasil != null) {
      setState(() {
        studioDipilih = hasil;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Jadwal Bioskop'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [

            const Text(
              'Pilih Studio',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            studioCard(
              'Studio Regular',
              Icons.theaters,
            ),

            studioCard(
              'Studio IMAX 3D',
              Icons.movie,
            ),

            studioCard(
              'Velvet VIP',
              Icons.event_seat,
            ),

            const SizedBox(height: 30),

            if (studioDipilih.isNotEmpty)
              Text(
                'Studio terakhir dipilih: $studioDipilih',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget studioCard(
    String namaStudio,
    IconData icon,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),

      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.red,
          size: 35,
        ),

        title: Text(
          namaStudio,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),

        trailing: const Icon(
          Icons.arrow_forward_ios,
        ),

        onTap: () {
          pilihStudio(namaStudio);
        },
      ),
    );
  }
}