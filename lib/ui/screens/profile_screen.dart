import 'package:flutter/material.dart';
import 'package:paynet_clone/register/enter_password.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;
    double maxHeight = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 224, 224),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 224, 224, 224),
        centerTitle: false,
        title: const Text('Profil'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                width: maxWidth * 0.9,
                height: maxHeight * 0.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ListTile(
                      title: Text(
                        'AYYUBXON AHMADJONOV OYBEK O\'GLI',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      subtitle: Text('+998 20 000 00 00'),
                    ),
                    const SizedBox(height: 10),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 5,
                                  spreadRadius: 2,
                                  color: Color.fromARGB(255, 216, 215, 215))
                            ],
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white),
                        width: maxWidth * 0.8,
                        height: maxHeight * 0.14,
                        child: const ListTile(
                          title: Text('Sizning holatingiz'),
                          subtitle: Text(
                            'Tasdiqlangan',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 18),
                          ),
                          leading: Icon(Icons.emoji_emotions_outlined),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: maxHeight * 0.02),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 5,
                          spreadRadius: 2,
                          color: Color.fromARGB(255, 216, 215, 215))
                    ],
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                width: maxWidth * 0.9,
                height: maxHeight * 0.2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: maxWidth * 0.03,
                          vertical: maxHeight * 0.01),
                      child: const Text(
                        'Mening malumotlarim',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                    const ListTile(
                      title: Text(
                        'Shaxsiy kabinet',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      leading: Icon(Icons.chrome_reader_mode_outlined),
                      trailing: Icon(Icons.navigate_next_outlined),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: maxHeight * 0.02),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 5,
                          spreadRadius: 2,
                          color: Color.fromARGB(255, 216, 215, 215))
                    ],
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                width: maxWidth * 0.9,
                height: maxHeight * 0.45,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: maxWidth * 0.03,
                          vertical: maxHeight * 0.01),
                      child: const Text("Qo'llab-quvvatlash",
                          style: TextStyle(fontWeight: FontWeight.w700)),
                    ),
                    const ListTile(
                      title: Text('Chat yordamchisi',
                          style: TextStyle(fontWeight: FontWeight.w600)),
                      trailing: Icon(Icons.chat),
                    ),
                    const ListTile(
                      title: Text("Qo'ng'iroq qilish",
                          style: TextStyle(fontWeight: FontWeight.w600)),
                      trailing: Icon(Icons.phone),
                    ),
                    const ListTile(
                      title: Text("Email yozish",
                          style: TextStyle(fontWeight: FontWeight.w600)),
                      trailing: Icon(Icons.mail),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: maxHeight * 0.02),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 5,
                          spreadRadius: 2,
                          color: Color.fromARGB(255, 216, 215, 215))
                    ],
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                width: maxWidth * 0.9,
                height: maxHeight * 0.3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: maxWidth * 0.2),
                      child: const Text('Foydali ma\'lumot',
                          style: TextStyle(fontWeight: FontWeight.w600)),
                    ),
                    const ListTile(
                      title: Text('Paynet haiqda',
                          style: TextStyle(fontWeight: FontWeight.w600)),
                      leading: Icon(Icons.warning_amber_rounded),
                      trailing: Icon(Icons.navigate_next_outlined),
                    ),
                    const ListTile(
                      title: Text('Ma\'lumotnoma',
                          style: TextStyle(fontWeight: FontWeight.w600)),
                      leading: Icon(Icons.question_mark_sharp),
                      trailing: Icon(Icons.navigate_next_outlined),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: maxHeight * 0.02),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 5,
                          spreadRadius: 2,
                          color: Color.fromARGB(255, 216, 215, 215))
                    ],
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                width: maxWidth * 0.9,
                height: maxHeight * 0.15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ListTile(
                      title: Text('Ilova sozlamalari',
                          style: TextStyle(fontWeight: FontWeight.w700)),
                      leading: Icon(Icons.settings),
                      trailing: Icon(Icons.navigate_next_outlined),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: maxHeight * 0.03),
            Padding(
              padding: EdgeInsets.only(left: maxHeight * 0.2),
              child: ListTile(
                leading: IconButton(
                  iconSize: 35,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EnterPassScreen()));
                  },
                  icon: Icon(Icons.logout_rounded),
                  color: Colors.red,
                ),
                title: Text(
                  "Profildan chiqish",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.red,
                      fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
