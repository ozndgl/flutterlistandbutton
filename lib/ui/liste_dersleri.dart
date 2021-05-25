import 'package:flutter/material.dart';

class ListeKonuAnlatimi extends StatelessWidget {
  //liste için veri kaynağı
  List<int> listeNumaralari = List.generate(300, (index) => index);
  List<String> listeAltBaslik =
      List.generate(300, (index) => "Liste Elemanı Alt Başlık $index");

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: listeNumaralari
          .map(
            (oankiEleman) => Column(
              children: <Widget>[
                Container(
                  child: Card(
                    color: Colors.teal.shade200,
                    margin: EdgeInsets.all(10),
                    elevation: 10,
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Icon(Icons.android),
                        radius: 12,
                      ),
                      title: Text("Liste eleman başlık $oankiEleman"),
                      subtitle: Text(listeAltBaslik[oankiEleman]),
                      trailing: Icon(Icons.add_circle), onLongPress: (){
                        debugPrint("uzun bastı");

                    },
                    ),
                  ),
                ),
                Divider(
                  color: Colors.orange,
                  height: 0,
                  indent: 20,
                ),
              ],
            ),
          )
          .toList(),
    );
  }
}
