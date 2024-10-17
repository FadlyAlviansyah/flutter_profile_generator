import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Membuat AppBar transparan
      appBar: AppBar(
        elevation: 0, // Menghilangkan bayangan pada AppBar
        backgroundColor: Colors.transparent, // Membuat AppBar transparan
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black), // Warna ikon kembali
          onPressed: () {
            Navigator.of(context).pop(); // Kembali ke halaman sebelumnya
          },
        ),
      ),
      extendBodyBehindAppBar: true, // Agar konten berada di belakang AppBar yang transparan
      body: Stack(
        children: [
          // Background image
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/background.jpg"), // Ganti dengan path gambar Anda
                fit: BoxFit.cover, // Agar gambar sesuai dengan ukuran layar
              ),
            ),
          ),

          // Konten di atas background
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 100), // Memberikan jarak agar konten tidak tertutupi AppBar
                // Bagian gambar profil dan nama pengguna
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/profile.jpg'),
                ),
                SizedBox(height: 10),
                Text(
                  'Muhamad Fadly Alviansyah',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber.shade100, // Mengubah teks menjadi putih agar terlihat jelas di background gelap
                  ),
                ),
                SizedBox(height: 20),

                // Bagian About
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Card(
                    color: Colors.amber.shade100,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'About',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Nama saya Muhamad Fadly Alviansyah, dan saya adalah seorang Full-Stack Developer yang sedang mengembangkan diri di SMK Wirakama Bogor.',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10),

                // Bagian History
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Card(
                    color: Colors.white,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'History',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Saya memulai perjalanan di dunia pemrograman sejak tahun 2020, saat pertama kali belajar HTML dan CSS. Ketertarikan saya terus berkembang hingga mempelajari berbagai teknologi Front-end dan Back-end.',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Selama di SMK, saya telah mengerjakan beberapa proyek baik individu maupun tim, termasuk aplikasi web untuk pengelolaan data siswa dan sistem pembayaran online sederhana.',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10),

                // Bagian Skill
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Card(
                    color: Colors.amber.shade100,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Skills',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Sebagai seorang Full-Stack Developer, saya menguasai beberapa teknologi dan framework yang umum digunakan, seperti:',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '- Pengembangan Front-end menggunakan HTML, CSS, dan JavaScript, serta framework seperti React.js dan Vue.js.',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '- Pengembangan Back-end dengan framework seperti Laravel dan Express.js untuk membangun API yang efisien dan terstruktur.',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '- Styling dan desain antarmuka dengan TailwindCSS dan Bootstrap untuk menciptakan tampilan yang responsif dan modern.',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '- Pemahaman yang baik dalam integrasi API dan penggunaan database seperti MySQL dan MongoDB.',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
