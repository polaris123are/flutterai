import 'dart:io';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firstapplication/globaforms/forms.global.dart';
import 'package:firstapplication/models/Activitymd.dart';
import 'package:firstapplication/wigets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

class AjoutActivityPage extends StatefulWidget {

   AjoutActivityPage({super.key});

  @override
  State<AjoutActivityPage> createState() => _AjoutActivityPageState();
}

class _AjoutActivityPageState extends State<AjoutActivityPage> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;
  final CollectionReference _produitsCollection =
      FirebaseFirestore.instance.collection('activities');

  File? _image; // Variable pour stocker l'image sélectionnée

  // Fonction pour sélectionner une photo depuis la galerie
  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile =
        await picker.pickImage(source: ImageSource.gallery);
    String assetImagePath =
        'assets/images/placeholder.jpg'; // Chemin de l'image par défaut
    File im = await getImageFileFromAssets("assets/images/placeholder.jpg");

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    } else {
      setState(() {
        _image = im;
      });
    }
  }
  Future<File> getImageFileFromAssets(String assetPath) async {
    final ByteData data = await rootBundle.load(assetPath);
    final List<int> bytes = data.buffer.asUint8List();
    final tempDir = await getTemporaryDirectory();
    final File file = File('${tempDir.path}/temp_image.jpg');
    await file.writeAsBytes(bytes);
    return file;
  }


  


  final TextEditingController titre=TextEditingController();

  final TextEditingController nombreminimum=TextEditingController();

  final TextEditingController prix=TextEditingController();

  final TextEditingController lieu=TextEditingController();

  final TextEditingController category=TextEditingController();

  final TextEditingController image=TextEditingController();

  Future<void> _ajouterProduit() async {
    try {
      DocumentReference documentReference = _produitsCollection.doc();

      String name = titre.text;
      String nbrmin = nombreminimum.text;
      String categorie = category.text;
      String price = lieu.text;
      String lieue = lieu.text;
      
      

      // Vérifiez si une image a été sélectionnée
      if (_image != null) {
        // Upload de la photo vers Cloud Storage
        Reference storageReference =
            _storage.ref().child(_image!.path.split('/').last);
        UploadTask uploadTask = storageReference.putFile(_image!);
        TaskSnapshot taskSnapshot = await uploadTask.whenComplete(() => null);
        String photoUrl = await taskSnapshot.ref.getDownloadURL();

        Activitymd nouveauProduit = Activitymd(
          id: documentReference.id,
          name: name,
          lieu: lieue,
          type: categorie,
          price: price,
          image: photoUrl,
          nbrmin: nbrmin,
        );

        await documentReference.set(nouveauProduit.toJson());

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Produit ajouté avec succès')),
        );

       titre.clear();
     nombreminimum.clear();
       category.clear();
       lieu.clear();
       lieu.clear();
        setState(() {
          _image = null; // Réinitialiser l'image après l'ajout du produit
        });
      } else {
        // Affichez un message d'erreur si aucune image n'a été sélectionnée
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Veuillez sélectionner une photo')),
        );
      }
    } catch (e) {
      print('Erreur lors de l\'ajout du produit : $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Erreur lors de l\'ajout du produit')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("ajout de activiter")),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextFormGlobal(title: "titre", controller: titre, obsecure: false),
            SizedBox(height: 15,),
            TextFormGlobal(title: "nombreminimum", controller: nombreminimum, obsecure: false),
            SizedBox(height: 15,),
            TextFormGlobal(title: "prix", controller: prix, obsecure: false),
            SizedBox(height: 15,),
            TextFormGlobal(title: "lieu", controller: lieu, obsecure: false),
            SizedBox(height: 15,),
            TextFormGlobal(title: "image", controller: image, obsecure: false),
            SizedBox(height: 15,),
            TextFormGlobal(title: "category", controller: category, obsecure: false),
            SizedBox(height: 15,),
            _image != null
                  ? Image.file(_image!)
                  : Container(
                      height: 100,
                      color: Colors
                          .grey), // Vous pouvez personnaliser la hauteur et la couleur du conteneur

              // Bouton pour sélectionner une photo
              ElevatedButton(
                onPressed: _pickImage,
                child: Text('Sélectionner une photo'),
              ),
            ElevatedButton(
                onPressed: _ajouterProduit,
                child: Text('Ajouter le activiter'),
              ),
          ],
        ),
      )
    );
  }
}