import 'package:flutter/material.dart';

class EtkinListeOrnek extends StatelessWidget {
  List<Ogrenci> tumOgrenciler = [];

  @override
  Widget build(BuildContext context) {
    ogrenciVerileriniGetir();

    return ListView.builder(
        itemCount: 20,
        //itemBuilder: (context,index) => Card()
        itemBuilder: (context, index) {
          return Card(
            color: index%2 == 0 ? Colors.red.shade200 : Colors.orange.shade200,
            elevation: 4,
            child: ListTile(
              leading: Icon(Icons.perm_contact_calendar),
              title: Text(tumOgrenciler[index]._isim),
              subtitle: Text(tumOgrenciler[index]._aciklama),
              trailing: Icon(Icons.add),
              onTap: (){
                debugPrint("ontap : seçilen eleman $index");
              },
              onLongPress: (){
                debugPrint("seçilen eleman $index");
              },
            ),
          );
        });
  }

  void ogrenciVerileriniGetir() {
    tumOgrenciler = List.generate(
        300,
        (index) => Ogrenci("Ogrenci $index Adı", "Ogrenci $index açıklaması",
            index % 2 == 0 ? true : false));
  }
}

class Ogrenci {
  String _isim;
  String _aciklama;
  bool _cinsiyet;

  Ogrenci(this._isim, this._aciklama, this._cinsiyet);
}
