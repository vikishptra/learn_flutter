import 'package:flutter/material.dart';

class ProfileBisnis extends StatelessWidget {
  const ProfileBisnis({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            BusineesContainer(
                icon: Icons.add_business,
                judul: "Profile bisnis",
                deskripsi: "Mengelola alamat, jam kerja dan situs web"),
            BusineesContainer(
                icon: Icons.apps,
                judul: "Katalog",
                deskripsi: "Menampilkan produk dan layanan"),
            Padding(padding: EdgeInsets.only(top: 5)),
            DividerBusinees(),
            Padding(padding: EdgeInsets.only(top: 5)),
            Deskripsi(text: "Jangkauan lebih banyak pelanggan"),
            BusineesContainer(
                icon: Icons.campaign,
                judul: "Iklankan di Facebook",
                deskripsi:
                    "Membuat iklan yang mengarahkan pelanggan ke WhatsApp"),
            BusineesContainer(
                icon: Icons.link,
                judul: "Facebook & Instagram",
                deskripsi: "Menambahkan WhatsApp ke akun anda"),
            Padding(padding: EdgeInsets.only(top: 10)),
            DividerBusinees(),
            Padding(padding: EdgeInsets.only(top: 5)),
            Deskripsi(text: "Fitur perpesanan"),
            Padding(padding: EdgeInsets.only(top: 5)),
            BusineesContainer(
                icon: Icons.tag_faces,
                judul: "Salam",
                deskripsi: "Menyambung pelanggan baru secara otomatis"),
            BusineesContainer(
                icon: Icons.beach_access,
                judul: "Pesan di luar jam kerja",
                deskripsi: "Membalas pesan secara otomatis"),
            BusineesContainer(
                icon: Icons.electric_bolt,
                judul: "Balas cepat",
                deskripsi: "Menggunakan kembali pesan yang sering di kirim"),
          ],
        ),
      ),
    );
  }
}

class BusineesContainer extends StatelessWidget {
  BusineesContainer(
      {required this.icon, required this.judul, required this.deskripsi});
  final IconData icon;
  final String judul;
  final String deskripsi;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.0,
      height: 80.0,
      child: Row(
        children: [
          Container(
            height: 20,
            width: 20.0,
            margin: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Icon(
              icon,
              size: 30.0,
              color: Color.fromARGB(255, 188, 193, 192),
            ),
          ),
          Container(
              width: 230.0,
              height: 60.0,
              child: Column(
                children: [
                  Container(
                    width: 230.0,
                    height: 28.0,
                    child: Text(
                      judul,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: 230.0,
                    height: 30.0,
                    child: Text(
                      deskripsi,
                      style: TextStyle(fontSize: 13.0, color: Colors.white),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

class DividerBusinees extends StatelessWidget {
  const DividerBusinees({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.0,
      height: 10.0,
      child: Expanded(
        child: new Container(
            child: Divider(
          color: Color.fromARGB(255, 126, 133, 148),
          height: 200,
          thickness: 1,
        )),
      ),
    );
  }
}

class Deskripsi extends StatelessWidget {
  Deskripsi({required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.0,
      height: 30.0,
      padding: const EdgeInsets.only(top: 5, left: 20),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 16.0,
            color: Color.fromARGB(255, 140, 240, 192),
            fontFamily: 'Serif',
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
