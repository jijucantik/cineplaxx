import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            // Foto profile
            const CircleAvatar(
              radius: 55,
              child: Icon(
                Icons.person,
                size: 60,
              ),
            ),

            const SizedBox(height: 15),

            const Text(
              'Zazi Cantik',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Text(
              'zazi@email.com',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 30),

            const Align(
              alignment: Alignment.centerLeft,

              child: Text(
                'Riwayat Pemesanan',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 10),

            // Riwayat 1
            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.movie,
                  color: Colors.red,
                ),

                title: const Text(
                  'Avatar 3',
                ),

                subtitle: const Text(
                  'Studio IMAX 3D • 13:00',
                ),

                trailing: const Text(
                  'Rp50.000',
                ),
              ),
            ),

            // Riwayat 2
            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.movie,
                  color: Colors.red,
                ),

                title: const Text(
                  'Spider-Man',
                ),

                subtitle: const Text(
                  'Studio Regular • 16:00',
                ),

                trailing: const Text(
                  'Rp35.000',
                ),
              ),
            ),

            const Spacer(),

            // LOGOUT
            SizedBox(
              width: double.infinity,
              height: 50,

              child: ElevatedButton.icon(
                onPressed: () {

                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/login',
                    (route) => false,
                  );
                },

                icon: const Icon(
                  Icons.logout,
                ),

                label: const Text(
                  'Logout',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}