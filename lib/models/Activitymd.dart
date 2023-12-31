import 'package:cloud_firestore/cloud_firestore.dart';


class Activitymd {
  String id;
  String name;
  String price;
  String type;
  String image;
  String lieu;
String nbrmin;
    Activitymd({required this.nbrmin,required this.lieu,required this.id,required this.image,required this.name,required this.price,required this.type});

   factory Activitymd.fromFirestore(DocumentSnapshot  doc) {
    Map data = doc.data() as Map;
    return Activitymd(
      id: doc.id,
      name: data['name'] ?? '',
      type: data['categorie'] ?? '',
      lieu: data['lieu'] ?? '',
      price: (data['price'] ?? ''),
     image:data['image'] ?? '',
     nbrmin:data['nbrmin']
    );
  }


   Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'type': type,
      'lieu': lieu,
      'price': price,
     'image':image,
     'nbrmin':nbrmin
    };
  }
}
