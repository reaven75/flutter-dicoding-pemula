




import 'package:flutter/material.dart';
import 'package:flutter_pemula_1/data/type_of_cat.dart';
import 'package:flutter_pemula_1/pages/DetailScreen.dart';

class BookmarkScreen extends StatelessWidget {

  
  const BookmarkScreen({super.key, });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bookmark Page'),
      ),
      body: bookmarkAdoptionList.isEmpty ? const Center(
        child: Text('No Bookmarked Cats'),
      ) : ListView.builder(
        itemCount: bookmarkAdoptionList.length,
        itemBuilder: (context, index) {
          final cat = bookmarkAdoptionList[index];
          return ListTile(
            leading: Image.network(cat.imageProfile),
            title: Text(cat.name),
            subtitle: Text(cat.location),
           
          );
        },),
    );
  }
}