import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firstapplication/models/Activitymd.dart';

class ActivitymdReposetory{

final CollectionReference produitsCollection =
      FirebaseFirestore.instance.collection('activities');

    Future<void> insertProduit(Activitymd activity) async {
    await produitsCollection.add(activity.toJson());
  }
  
}