import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  List<String> nama = [
    'Puasa Wajib',
    'Puasa Sunnah',
    'Puasa Arofah',
    'Puasa Daud'
  ];

  List<String> asal = [
    'Pengertian',
    'Pengertian',
    'Pengertian',
    'Pengertian',
  ];

  List<String> image = [
    'https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/Welcome_Ramadhan.jpg/250px-Welcome_Ramadhan.jpg',
    'https://cdn1-production-images-kly.akamaized.net/VLqIOI2Lhfz0fsAA2jU7jvvQhHo=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3135977/original/045884500_1590293686-sunset-100367_1280.jpg',
    'https://lp-cms-production.imgix.net/features/2013/04/sunrise1_cs.jpg?auto=compress&fit=crop&fm=auto&sharp=10&vib=20&w=1200',
    'https://media.suara.com/pictures/653x366/2016/03/13/o_1adnqit311lc35ed12ho1sd13fra.jpg',
  ];

  List<String> biografi = [
    'Puasa wajib adalah puasa yang harus dilaksanakan oleh setiap umat Islam yang sudah baligh, berakal, dan sehatjika tidak ada halangan suatu apapun diwajibkan untuk melaksanakannya, apabila ditinggalkan akan mendapat dosa. Nah, puasa wajib ada empat yaitu:',
    'Puasa sunnah menurut ajaran Islam merupakan salah satu bagian ibadah sunnah yang dilakukan untuk mendapatkan cinta atau kasih sayang Allah SWT. Menurut ajaran Islam puasa sunnah merupakan salah satu ibadah yang sangat dianjurkan untuk dilaksanakan. ... Dengan puasa sunnah seseorang bisa sehat dan kuat.',
    'Puasa Arafah bertepatan ketika jemaah haji sedang melaksanakan wukuf di Padang Arafah, Makkah, Arab Saudi. Hari itu bertepatan dengan hari ke-2 dalam rangkaian ibadah haji. Puasa ini sangat dianjurkan bagi kamu yang tidak sedang menunaikan ibadah haji',
    'Puasa Daud merupakan salah satu puasa sunah yag paling disukai oleh Allah SWT. ... Nabi Daud dahulu tidur di pertengahan malam dan beliau salat di sepertiga malamnya dan tidur lagi di seperenamnya. Adapun puasa Daud yaitu sehari puasa dan tidak puasa di hari berikutnya.”20 Apr 2020',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Puasa App'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(nama.length, (index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailPage(
                            itemNama: nama[index],
                            itemAsal: asal[index],
                            itemImage: image[index],
                            itemBio: biografi[index],
                          )));
            },
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 0.0, vertical: 23.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(6.0),
                      child: Image.network(
                        image[index],
                        height: 70.0,
                        width: 70.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(nama[index],
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text(asal[index],
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14,
                      )),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
