import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Scaffold(
            backgroundColor: Color.fromARGB(255, 59, 68, 95),
            body: Column(
              children: [
                MyStatuContainer(),
                DeskrispiStatus(deskripsi: "RECENT"),
                statusContainer(
                  title: "Danny",
                  jam: "7 menit yang lalu",
                  gambar: "https://picsum.photos/id/1/200/300",
                  color: Color.fromARGB(255, 52, 178, 56),
                ),
                statusContainer(
                    title: "Rafiizah",
                    jam: "12 menit yang lalu",
                    gambar: "https://picsum.photos/seed/picsum/200/300",
                    color: Color.fromARGB(255, 52, 178, 56)),
                statusContainer(
                    title: "Akbar",
                    jam: "28 menit yang lalu",
                    gambar: "https://picsum.photos/200/300?grayscale",
                    color: Color.fromARGB(255, 52, 178, 56)),
                DeskrispiStatus(deskripsi: "VIEWED"),
                statusContainer(
                    title: "Gafriel",
                    jam: "Hari ini 11.16",
                    gambar: "https://picsum.photos/id/237/200/300",
                    color: Color.fromARGB(255, 129, 128, 125)),
                statusContainer(
                  title: "Fahmi",
                  jam: "Hari ini 09.24",
                  gambar: "https://picsum.photos/200/300/?blur",
                  color: Color.fromARGB(255, 129, 128, 125),
                ),
                statusContainer(
                  title: "Kacong",
                  jam: "Hari ini 07.33",
                  gambar: "https://api.lorem.space/image/movie?w=150&h=220",
                  color: Color.fromARGB(255, 129, 128, 125),
                )
              ],
            ),
            floatingActionButton: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 561),
                  child: FloatingActionButton(
                    onPressed: () => null,
                    child: Icon(
                      Icons.mode,
                      size: 28.0,
                    ),
                    backgroundColor: Color.fromARGB(255, 152, 160, 160),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: FloatingActionButton(
                    onPressed: () => null,
                    child: Icon(
                      Icons.camera_alt_outlined,
                      size: 28.0,
                    ),
                    backgroundColor: Color.fromARGB(255, 7, 241, 182),
                  ),
                )
              ],
            )),
      ),
    );
  }
}

class statusContainer extends StatelessWidget {
  statusContainer(
      {required this.title,
      required this.jam,
      required this.gambar,
      required this.color});

  final String title;
  final String jam;
  final Color color;
  final String gambar;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: 390,
        height: 80.0,
        child: Row(
          children: [
            Container(
              height: 60.0,
              width: 60.0,
              margin: const EdgeInsets.only(top: 10, left: 15),
              child: CircleAvatar(
                radius: 1,
                backgroundColor: color,
                child: CircleAvatar(
                  radius: 27.0,
                  backgroundImage: NetworkImage(gambar),
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
                      title,
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    width: 290,
                    height: 20.0,
                    margin: const EdgeInsets.only(top: 5, left: 10),
                    child: Text(
                      jam,
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Color.fromARGB(255, 188, 186, 186)),
                    ),
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

class DeskrispiStatus extends StatelessWidget {
  DeskrispiStatus({required this.deskripsi});
  final String deskripsi;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: 200.0,
        height: 30.0,
        margin: EdgeInsets.only(right: 150, top: 8),
        child: Row(
          children: [
            Container(
              width: 90,
              height: 23.0,
              child: Text(
                deskripsi,
                style: TextStyle(
                    fontSize: 16.0,
                    color: Color.fromARGB(255, 215, 212, 212),
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyStatuContainer extends StatelessWidget {
  const MyStatuContainer({super.key});

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
                backgroundImage: NetworkImage(
                    'https://api.lorem.space/image/movie?w=100&h=220'),
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
                    "My Status",
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
                          Container(
                            margin: EdgeInsets.only(left: 6),
                            child: Text(
                              "Hari ini 04.20",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Color.fromARGB(255, 188, 186, 186)),
                            ),
                          ),
                          Container(
                            width: 20.0,
                            height: 30.0,
                            margin:
                                const EdgeInsets.only(left: 160, bottom: 10),
                            child: Icon(
                              Icons.more_horiz_outlined,
                              color: Color.fromARGB(255, 235, 232, 232),
                              size: 30.0,
                            ),
                          ),
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
