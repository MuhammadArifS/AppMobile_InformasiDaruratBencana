// import 'package:flutter/material.dart';

// class BerandaPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Beranda"),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             // Judul Halaman
//             Container(
//               padding: EdgeInsets.all(16),
//               color: Theme.of(context).primaryColor,
//               child: Text(
//                 "Selamat Datang di Aplikasi Kami",
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                 ),
//               ),
//             ),

//             // Berita Informasi
//             Container(
//               padding: EdgeInsets.all(16),
//               color: Colors.grey[200],
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Berita Terbaru",
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   Card(
//                     elevation: 3,
//                     child: ListTile(
//                       title: Text("Judul Berita 1"),
//                       subtitle: Text("Deskripsi Berita 1"),
//                       trailing: Icon(Icons.arrow_forward),
//                       onTap: () {
//                         // Tambahkan aksi ketika berita diklik
//                       },
//                     ),
//                   ),
//                   Card(
//                     elevation: 3,
//                     child: ListTile(
//                       title: Text("Judul Berita 2"),
//                       subtitle: Text("Deskripsi Berita 2"),
//                       trailing: Icon(Icons.arrow_forward),
//                       onTap: () {
//                         // Tambahkan aksi ketika berita diklik
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             // Fitur Menu
//             Container(
//               padding: EdgeInsets.all(16),
//               color: Colors.grey[300],
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Fitur Menu",
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   ListTile(
//                     leading: Icon(Icons.settings),
//                     title: Text("Pengaturan"),
//                     onTap: () {
//                       // Tambahkan aksi ketika menu diklik
//                     },
//                   ),
//                   ListTile(
//                     leading: Icon(Icons.info),
//                     title: Text("Tentang Kami"),
//                     onTap: () {
//                       // Tambahkan aksi ketika menu diklik
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Halaman Beranda',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BerandaPage(),
    );
  }
}

class BerandaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Siaga'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Judul Berita 1',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Ini adalah berita informasi yang ditampilkan di halaman beranda. Anda dapat menambahkan berbagai informasi menarik di sini.',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Judul Berita 2',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Ini adalah berita informasi yang ditampilkan di halaman beranda. Anda dapat menambahkan berbagai informasi menarik di sini.',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: buildBottomNavigationItem(Icons.home, 'Beranda', () {
                // Tambahkan fungsi untuk menu beranda di sini
              }),
            ),
            Expanded(
              child: buildBottomNavigationItem(Icons.notifications, 'Notifikasi', () {
                // Tambahkan fungsi untuk menu notifikasi di sini
              }),
            ),
            Expanded(
              child: buildBottomNavigationItem(Icons.call, 'Panggilan', () {
                // Tambahkan fungsi untuk menu panggilan di sini
              }),
            ),
            Expanded(
              child: buildBottomNavigationItem(Icons.person, 'Profil', () {
                // Tambahkan fungsi untuk menu profil di sini
              }),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBottomNavigationItem(IconData icon, String label, Function() onPressed) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: Icon(icon),
          onPressed: onPressed,
        ),
        Text(label),
      ],
    );
  }
}
