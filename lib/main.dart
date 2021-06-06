import 'package:flutter/material.dart';
import 'package:sociaworld/gonderiKarti.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.grey,
              size: 32,
            ),
            onPressed: () {},
          ),
          title: Text(
            "SociaWorld",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.grey,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.purple[300],
                size: 32,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, 3),
                    blurRadius: 5,
                  ),
                ],
              ),
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  profilKartiOlustur("Selçuk",
                      "https://cdn.pixabay.com/photo/2016/03/09/15/10/man-1246508_960_720.jpg"),
                  profilKartiOlustur("Tom",
                      "https://cdn.pixabay.com/photo/2016/11/21/14/53/man-1845814_960_720.jpg"),
                  profilKartiOlustur("Jessica",
                      "https://cdn.pixabay.com/photo/2017/05/31/09/09/woman-2359562_960_720.jpg"),
                  profilKartiOlustur("Yıldız",
                      "https://cdn.pixabay.com/photo/2017/04/05/10/45/girl-2204622_960_720.jpg"),
                  profilKartiOlustur("Nadir",
                      "https://cdn.pixabay.com/photo/2014/04/12/14/59/portrait-322470_960_720.jpg"),
                  profilKartiOlustur("Harun",
                      "https://cdn.pixabay.com/photo/2016/11/23/00/33/man-1851469_960_720.jpg"),
                ],
              ),
            ),
            GonderiKarti(
              profilResimLinki:
                  "https://cdn.pixabay.com/photo/2016/03/09/15/10/man-1246508_960_720.jpg",
              isimSoyad: "Manuş Baba",
              gecenSure: "1 saat önce",
              aciklama: "Resim açıklaması",
              gonderResimLinki:
                  "https://cdn.pixabay.com/photo/2016/03/09/15/10/man-1246508_960_720.jpg",
            ),
            GonderiKarti(
              profilResimLinki:
                  "https://cdn.pixabay.com/photo/2016/03/09/15/10/man-1246508_960_720.jpg",
              isimSoyad: "Tarık Akan",
              gecenSure: "2 saat önce",
              aciklama: "Resim açıklaması",
              gonderResimLinki:
                  "https://cdn.pixabay.com/photo/2016/03/09/15/10/man-1246508_960_720.jpg",
            ),
            GonderiKarti(
              profilResimLinki:
                  "https://cdn.pixabay.com/photo/2016/03/09/15/10/man-1246508_960_720.jpg",
              isimSoyad: "Kemal Sunal",
              gecenSure: "3 saat önce",
              aciklama: "Resim açıklaması",
              gonderResimLinki:
                  "https://cdn.pixabay.com/photo/2016/03/09/15/10/man-1246508_960_720.jpg",
            ),
          ],
        ),
      ),
    );
  }

  Widget profilKartiOlustur(String kullaniciAdi, String resimLinki) {
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ProfilSayfasi()));
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 2, color: Colors.grey),
                      borderRadius: BorderRadius.circular(35),
                      image: DecorationImage(
                        image: NetworkImage(
                          resimLinki,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        border: Border.all(width: 2, color: Colors.white),
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ],
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                kullaniciAdi,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProfilSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Profil Sayfası"),
      ),
    );
  }
}
