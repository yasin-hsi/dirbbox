import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'My Profile',
            style: TextStyle(color: Color(0xFF22215B)),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
          ]),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 32),
            padding: const EdgeInsets.all(25),
            decoration: BoxDecoration(
                color: const Color(0xFF22215B),
                borderRadius: BorderRadius.circular(20)),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/profile_avatar.png'),
                    const SizedBox(height: 5),
                    const Text(
                      'Yasin Junet',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    const Text('Frontend Engineer',
                        style: TextStyle(color: Colors.white, fontSize: 13)),
                    const SizedBox(height: 5),
                    const Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare pretium placerat ut platea.',
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(color: Color(0x99FFFFFF), fontSize: 13))
                  ],
                ),
                Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      width: 40,
                      height: 20,
                      decoration: BoxDecoration(
                          color: const Color(0xFFFF317B),
                          borderRadius: BorderRadius.circular(5)),
                      child: const Text(
                        "PRO",
                        style: TextStyle(color: Colors.white),
                      ),
                    ))
              ],
            ),
          ),
          const SizedBox(height: 30),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 32),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'My Folders',
                    style: TextStyle(
                        color: Color(0xFF22215B), fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/icons/add.png'),
                        Image.asset('assets/images/icons/filter.png'),
                        Image.asset('assets/images/icons/chevron_right.png')
                      ],
                    ),
                  )
                ]),
          ),
          Container(
            margin:
                const EdgeInsets.only(top: 32, bottom: 16, left: 32, right: 32),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardFolder(
                      title: 'Mobile Apps',
                      date: 'December 20, 2023',
                      color: const Color(0xFFEEF7FE),
                      textColor: const Color(0xFF415EB6),
                      image: Image.asset('assets/images/folder_blue.png')),
                  CardFolder(
                      title: 'SVG Icons',
                      date: 'December 14, 2023',
                      color: const Color(0xFFFFFBEC),
                      textColor: const Color(0xFFFFB110),
                      image: Image.asset('assets/images/folder_yellow.png')),
                ]),
          ),
          Container(
            margin: const EdgeInsets.only(left: 32, right: 32, bottom: 32),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardFolder(
                      title: 'Prototypes',
                      date: 'November 22, 2023',
                      color: const Color(0xFFFEEEEE),
                      textColor: const Color(0xFFAC4040),
                      image: Image.asset('assets/images/folder_red.png')),
                  CardFolder(
                      title: 'Avatars',
                      date: 'November 10, 2023',
                      color: const Color(0xFFF0FFFF),
                      textColor: const Color(0xFF23B0B0),
                      image: Image.asset('assets/images/folder_green.png')),
                ]),
          ),
          const SizedBox(height: 30),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 32),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Recent Uploads',
                    style: TextStyle(
                        color: Color(0xFF22215B), fontWeight: FontWeight.bold),
                  ),
                  Image.asset('assets/images/icons/sort.png')
                ]),
          ),
          const SizedBox(height: 30),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 32),
            child: ListTile(
              leading: Image.asset('assets/images/icons/ms_word.png'),
              title: const Text("Projects.docx"),
              subtitle: const Text("November 22, 2023"),
              trailing: const Text("300KB"),
            ),
          )
        ],
      ),
    );
  }
}

class CardFolder extends StatelessWidget {
  const CardFolder(
      {super.key,
      required this.title,
      required this.date,
      required this.color,
      required this.textColor,
      required this.image});

  final String title;
  final String date;
  final Color color;
  final Color textColor;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.all(25),
      width: MediaQuery.of(context).size.width * 0.5 - 45,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(20), color: color),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        image,
        const SizedBox(height: 5),
        Text(
          title,
          style: TextStyle(
              color: textColor, fontSize: 15, fontWeight: FontWeight.bold),
        ),
        Text(
          date,
          style: TextStyle(color: textColor, fontSize: 10),
        )
      ]),
    );
  }
}
