import 'package:flutter/material.dart';

class GonderiKarti extends StatelessWidget {
  final String profilResimLinki;
  final String isimSoyad;
  final String gecenSure;
  final String gonderResimLinki;
  final String aciklama;

  const GonderiKarti(
      {Key key,
      this.profilResimLinki,
      this.isimSoyad,
      this.gecenSure,
      this.gonderResimLinki,
      this.aciklama})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Material(
        elevation: 1,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: EdgeInsets.all(15),
          width: double.infinity,
          height: 388,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.indigo,
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: NetworkImage(profilResimLinki),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            isimSoyad,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            gecenSure,
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.more_vert)
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                aciklama,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Image.network(
                gonderResimLinki,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 4.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IkonluButonum(
                    ikonum: Icons.favorite,
                    yazi: "Beğen",
                    fonksiyonum: () {
                      print("Beğen");
                    },
                  ),
                  IkonluButonum(
                    ikonum: Icons.comment,
                    yazi: "Yorum",
                    fonksiyonum: () {
                      print("Yorum yap");
                    },
                  ),
                  FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.share,
                      color: Colors.grey,
                    ),
                    label: Text(
                      "Paylaş",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class IkonluButonum extends StatelessWidget {
  final IconData ikonum;
  final String yazi;
  final fonksiyonum;

  IkonluButonum({this.ikonum, this.yazi, this.fonksiyonum});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: fonksiyonum,
        child: Container(
          padding: EdgeInsets.all(8),
          child: Row(
            children: [
              Icon(
                ikonum,
                color: Colors.grey,
              ),
              SizedBox(
                width: 8.0,
              ),
              Text(
                yazi,
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
