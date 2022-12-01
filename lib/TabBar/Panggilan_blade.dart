import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'Status_blade.dart';

class Panggilan extends StatelessWidget {
  const Panggilan({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Container(
          child: Scaffold(
              backgroundColor: Color.fromARGB(255, 59, 68, 95),
              body: Column(children: [
                PanggilanTopContainer(),
                DeskrispiStatus(deskripsi: "TERBARU"),
                HistoryPanggilanContainer(
                    gambar: 'https://picsum.photos/id/227/200/300',
                    nama: 'Vicky',
                    colorIcon: Color.fromARGB(255, 152, 250, 155),
                    jam: 'Hari ini 16.46',
                    iconStatusCall: Icons.call_received),
                HistoryPanggilanContainer(
                    gambar: 'https://picsum.photos/seed/picsum/200/300',
                    nama: 'Danny',
                    colorIcon: Color.fromARGB(255, 249, 2, 2),
                    jam: 'Hari ini 15.07',
                    iconStatusCall: Icons.call_received),
                HistoryPanggilanContainer(
                    gambar: 'https://picsum.photos/200/300?grayscale',
                    nama: 'Rafiizah',
                    colorIcon: Color.fromARGB(255, 152, 250, 155),
                    jam: 'Hari ini 14.36',
                    iconStatusCall: Icons.call_made),
                HistoryPanggilanContainer(
                    gambar: 'https://picsum.photos/id/237/200/300',
                    nama: 'Fahmi',
                    colorIcon: Color.fromARGB(255, 249, 2, 2),
                    jam: 'Hari ini 13.16',
                    iconStatusCall: Icons.call_received),
                HistoryPanggilanContainer(
                    gambar: 'https://picsum.photos/id/221/202/300',
                    nama: 'Kacong',
                    colorIcon: Color.fromARGB(255, 152, 250, 155),
                    jam: 'Hari ini 12.06',
                    iconStatusCall: Icons.call_received),
                HistoryPanggilanContainer(
                    gambar: 'https://picsum.photos/id/137/200/300',
                    nama: 'Akbar',
                    colorIcon: Color.fromARGB(255, 152, 250, 155),
                    jam: 'Hari ini 10.25',
                    iconStatusCall: Icons.call_made),
              ]),
              floatingActionButton: Align(
                child: FloatingActionButton(
                  onPressed: () {
                    // Add your onPressed code here!
                  },
                  backgroundColor: Color.fromARGB(255, 7, 241, 182),
                  child: const Icon(
                    Icons.add_call,
                    color: Colors.white,
                    size: 28.0,
                  ),
                ),
                alignment: Alignment(
                  1,
                  1,
                ),
              )),
        ),
      ),
    );
  }
}

class PanggilanTopContainer extends StatelessWidget {
  const PanggilanTopContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 90.0,
      child: Row(
        children: [
          Container(
            height: 60.0,
            width: 60.0,
            margin: const EdgeInsets.only(top: 10, left: 15),
            child: CircleAvatar(
              radius: 1,
              backgroundColor: Color.fromARGB(255, 7, 241, 182),
              child: Container(
                child: Icon(
                  Icons.link,
                  color: Colors.white,
                  size: 35.0,
                ),
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  width: 290,
                  height: 22.0,
                  margin: const EdgeInsets.only(top: 15, left: 10),
                  child: Text(
                    "Buat Tautan panggilan",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Container(
                    width: 290,
                    height: 20.0,
                    margin: const EdgeInsets.only(top: 5),
                    child: Container(
                      child: Row(
                        children: [
                          Expanded(
                              child: Marquee(
                            text:
                                'Bagikan tautan untuk panggilan WhatsApp anda ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                                color: Color.fromARGB(255, 215, 212, 212)),
                            scrollAxis: Axis.horizontal, //scroll direction
                            crossAxisAlignment: CrossAxisAlignment.start,
                            blankSpace: 20.0,
                            velocity: 50.0, //speed
                            pauseAfterRound: Duration(seconds: 5),
                            startPadding: 2.0,
                            accelerationDuration: Duration(seconds: 1),
                            accelerationCurve: Curves.linear,
                            decelerationDuration: Duration(milliseconds: 50),
                            decelerationCurve: Curves.easeOut,
                          ))
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HistoryPanggilanContainer extends StatelessWidget {
  HistoryPanggilanContainer(
      {required this.gambar,
      required this.nama,
      required this.colorIcon,
      required this.jam,
      required this.iconStatusCall});

  final String gambar;
  final String nama;
  final Color colorIcon;
  final String jam;
  final IconData iconStatusCall;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 90.0,
      child: Row(
        children: [
          Container(
            height: 60.0,
            width: 60.0,
            margin: const EdgeInsets.only(top: 10, left: 15),
            child: CircleAvatar(
              radius: 1,
              backgroundColor: Color.fromARGB(255, 129, 128, 125),
              child: CircleAvatar(
                radius: 27.0,
                backgroundImage: NetworkImage(gambar),
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 290,
                          height: 22.0,
                          margin: const EdgeInsets.only(top: 15, left: 10),
                          child: Text(
                            nama,
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Container(
                            width: 310,
                            height: 20.0,
                            margin: const EdgeInsets.only(top: 5),
                            child: Container(
                              width: 300,
                              height: 40,
                              child: Row(
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(left: 6),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 150.0,
                                            height: 20.0,
                                            child: Row(
                                              children: [
                                                Icon(
                                                  iconStatusCall,
                                                  color: colorIcon,
                                                ),
                                                Padding(
                                                    padding: EdgeInsets.all(2)),
                                                Text(
                                                  jam,
                                                  style: TextStyle(
                                                      fontSize: 16.0,
                                                      color: Color.fromARGB(
                                                          255, 188, 186, 186)),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      )),
                                  Container(
                                    width: 20,
                                    height: 20.0,
                                    margin: const EdgeInsets.only(left: 120),
                                    child: Icon(
                                      Icons.call_rounded,
                                      size: 30.0,
                                      color: Color.fromARGB(255, 152, 250, 155),
                                    ),
                                  )
                                ],
                              ),
                            )),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
