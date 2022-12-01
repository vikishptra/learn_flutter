import 'package:flutter/material.dart';
import 'ProfileBisnis_blade.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
          padding: EdgeInsets.all(15),
          child: Scaffold(
              backgroundColor: Color.fromARGB(255, 59, 68, 95),
              body: Column(
                children: [
                  ArsipContainer(),
                  Padding(padding: EdgeInsets.only(bottom: 10)),
                  ChatCheckContainer(
                      textHari: "23.04",
                      textChat: "0.07",
                      icon: Icons.mic,
                      textNama: "Ayang",
                      gambar:
                          'https://i0.wp.com/www.reviewtekno.com/wp-content/uploads/2022/09/pp-wa-kosong-biasa.webp?resize=192%2C192&ssl=1'),
                  Padding(padding: EdgeInsets.only(bottom: 10)),
                  ChatCheckContainer(
                      textHari: "22.44",
                      textChat: "hello world",
                      icon: Icons.check,
                      textNama: "Flutter",
                      gambar:
                          'https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_1080,q_100,w_1080/v1/gcs/platform-data-goog/events/flutter_I6JGxZE.jpg'),
                  Padding(padding: EdgeInsets.only(bottom: 10)),
                  ChatContainer(
                      textHari: "22.39",
                      textChat: "kamu di tolak its yaaa",
                      textNama: "PENS",
                      textJumlahMessage: "1",
                      gambar:
                          'https://2.bp.blogspot.com/-lP8DFaSRyJQ/WzTqH7K8o9I/AAAAAAAADmE/N6NdCDfRbr8Lk83RQP_qYwTm3FKSznZdACLcBGAs/s200/logo%2BPENS.png'),
                  Padding(padding: EdgeInsets.only(bottom: 10)),
                  ChatContainer(
                      textHari: "21.23",
                      textChat: "hello world",
                      textNama: "Golang",
                      textJumlahMessage: "2",
                      gambar:
                          'https://c8.alamy.com/zooms/9/59be819935294c2c8b2763ee9c2f3694/2cahxak.jpg'),
                  Padding(padding: EdgeInsets.only(bottom: 10)),
                  ChatContainer(
                      textHari: "20.28",
                      textChat: "hello world",
                      textNama: "Java",
                      textJumlahMessage: "1",
                      gambar:
                          'https://i.pinimg.com/originals/d9/7a/d7/d97ad7d1f3f486dc9309a87b0209538a.jpg'),
                  Padding(padding: EdgeInsets.only(bottom: 10)),
                  VoiceActiveContainer(
                      textHari: "19.33",
                      textChat: "0.32",
                      textNama: "Python",
                      textJumlahMessage: "1",
                      icon: Icons.mic,
                      gambar:
                          'https://qph.cf2.quoracdn.net/main-qimg-28cadbd02699c25a88e5c78d73c7babc'),
                  Padding(padding: EdgeInsets.only(bottom: 10)),
                  ChatContainer(
                      textHari: "18.09",
                      textChat: "/root",
                      textNama: "Linux",
                      textJumlahMessage: "50",
                      gambar:
                          'https://upload.wikimedia.org/wikipedia/commons/d/dd/Linux_logo.jpg'),
                  Padding(padding: EdgeInsets.only(bottom: 15)),
                ],
              ),
              floatingActionButton: Align(
                child: FloatingActionButton(
                  onPressed: () {
                    // Add your onPressed code here!
                  },
                  backgroundColor: Color.fromARGB(255, 7, 241, 182),
                  child: const Icon(
                    Icons.message,
                    color: Colors.white,
                    size: 28.0,
                  ),
                ),
                alignment: Alignment(
                  1.1,
                  1.1,
                ),
              ))),
    );
  }
}

class ArsipContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            width: 50.0,
            height: 40.0,
            child: Icon(
              Icons.archive_outlined,
              size: 28.0,
              color: Color.fromARGB(255, 145, 146, 149),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20.0, right: 20.0),
            width: 110.0,
            height: 25.0,
            child: Text(
              "Archived",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 140.0),
            width: 13.0,
            height: 15.0,
            child: Text(
              "3",
              style: TextStyle(color: Color.fromARGB(255, 151, 247, 154)),
            ),
          )
        ],
      ),
    );
  }
}

class DividerChat extends StatelessWidget {
  const DividerChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 10.0,
      margin: const EdgeInsets.only(left: 60),
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

class ChatCheckContainer extends StatelessWidget {
  ChatCheckContainer(
      {required this.textHari,
      required this.textChat,
      required this.icon,
      required this.textNama,
      required this.gambar});

  final String textHari;
  final String textChat;
  final IconData icon;
  final String textNama;
  final String gambar;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        Container(
          height: 60.0,
          width: 60.0,
          margin: const EdgeInsets.only(top: 10),
          child: CircleAvatar(
            backgroundImage: NetworkImage(gambar),
          ),
        ),
        Container(
            height: 63.0,
            width: 290.0,
            margin: const EdgeInsets.only(left: 10),
            child: Column(
              children: [
                Container(
                    width: 290.0,
                    height: 22.0,
                    margin: EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        Container(
                          width: 230.0,
                          child: Text(
                            textNama,
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          width: 40.0,
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            textHari,
                            style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )),
                Container(
                    width: 290.0,
                    height: 30.0,
                    margin: const EdgeInsets.only(top: 5),
                    child: Container(
                      child: Row(
                        children: [
                          Icon(
                            icon,
                            color: Color.fromARGB(255, 181, 179, 179),
                          ),
                          Container(
                            height: 40.0,
                            margin: const EdgeInsets.only(top: 5, left: 2),
                            child: Text(
                              textChat,
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    )),
              ],
            )),
      ]),
    );
  }
}

class ChatContainer extends StatelessWidget {
  ChatContainer(
      {required this.textHari,
      required this.textChat,
      required this.textNama,
      required this.textJumlahMessage,
      required this.gambar});

  final String textHari;
  final String textChat;
  final String textNama;
  final String gambar;
  final String textJumlahMessage;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        Container(
          height: 60.0,
          width: 60.0,
          margin: const EdgeInsets.only(top: 10),
          child: CircleAvatar(
            backgroundImage: NetworkImage(gambar),
          ),
        ),
        Container(
            height: 63.0,
            width: 290.0,
            margin: const EdgeInsets.only(left: 10),
            child: Column(
              children: [
                Container(
                    width: 290.0,
                    height: 23.0,
                    margin: EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        Container(
                          width: 230.0,
                          child: Text(
                            textNama,
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          width: 40.0,
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            textHari,
                            style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )),
                Container(
                    width: 290.0,
                    height: 30.0,
                    margin: const EdgeInsets.only(top: 5),
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            width: 250.0,
                            height: 40.0,
                            margin: const EdgeInsets.only(top: 5, left: 2),
                            child: Text(
                              textChat,
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),
                          Container(
                              width: 24,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 7, 241, 182),
                                  shape: BoxShape.circle),
                              margin:
                                  const EdgeInsets.only(bottom: 3, left: 10),
                              child: Center(
                                child: Text(
                                  textJumlahMessage,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 15, 14, 14)),
                                ),
                              ))
                        ],
                      ),
                    )),
              ],
            )),
      ]),
    );
  }
}

class VoiceActiveContainer extends StatelessWidget {
  VoiceActiveContainer(
      {required this.textHari,
      required this.textChat,
      required this.textNama,
      required this.textJumlahMessage,
      required this.icon,
      required this.gambar});

  final String textHari;
  final String textChat;
  final String textNama;
  final IconData icon;
  final String gambar;
  final String textJumlahMessage;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        Container(
          height: 60.0,
          width: 60.0,
          margin: const EdgeInsets.only(top: 10),
          child: CircleAvatar(
            backgroundImage: NetworkImage(gambar),
          ),
        ),
        Container(
            height: 63.0,
            width: 290.0,
            margin: const EdgeInsets.only(left: 10),
            child: Column(
              children: [
                Container(
                    width: 290.0,
                    height: 23.0,
                    margin: EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        Container(
                          width: 230.0,
                          child: Text(
                            textNama,
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          width: 40.0,
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            textHari,
                            style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )),
                Container(
                    width: 290.0,
                    height: 30.0,
                    margin: const EdgeInsets.only(top: 5),
                    child: Container(
                      child: Row(
                        children: [
                          Icon(
                            icon,
                            color: Color.fromARGB(255, 14, 202, 222),
                          ),
                          Container(
                            width: 230.0,
                            height: 40.0,
                            margin: const EdgeInsets.only(top: 5, left: 2),
                            child: Text(
                              textChat,
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),
                          Container(
                              width: 24,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 7, 241, 182),
                                  shape: BoxShape.circle),
                              margin: const EdgeInsets.only(bottom: 3, left: 5),
                              child: Center(
                                child: Text(
                                  textJumlahMessage,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 15, 14, 14)),
                                ),
                              ))
                        ],
                      ),
                    )),
              ],
            )),
      ]),
    );
  }
}
