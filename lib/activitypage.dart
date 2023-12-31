import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firstapplication/models/Activitymd.dart';
import 'package:firstapplication/wigets/activity.dart';
import 'package:flutter/material.dart';


class Activitypage extends StatefulWidget {

   Activitypage({super.key});

  @override
  State<Activitypage> createState() => _ActivitypageState();
}

class _ActivitypageState extends State<Activitypage> {
  CollectionReference users = FirebaseFirestore.instance.collection('activities');
    FirebaseFirestore db = FirebaseFirestore.instance;


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Liste des activite'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: db.collection('activities').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          //    DocumentReference docRef =
          //        FirebaseFirestore.instance.collection('produits').doc("id");
          //   docRef = FirebaseFirestore.instance.doc("/produits/id");
          // docRef.get().then((value) => doc = value.get("marque"));
          if (snapshot.hasError) {
            return const Center(child: Text('Une erreur est survenue'));
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          List<Activitymd> activities = snapshot.data!.docs.map((doc) {
            return Activitymd.fromFirestore(doc);
          }).toList();

          return ListView.builder(
            itemCount: activities.length,
            itemBuilder: (context, index){
              return Activity(activity:activities[index]);
                          }
          );
        },
      ),
    );
  }
}





