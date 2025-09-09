import 'package:flutter/material.dart';

import 'package:flutter_pemula_1/provider/bookmark_provider.dart';
import 'package:provider/provider.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<BookmarkProvider>(
        builder: (context, value, child) {
          final bookmarkList = value.bookmarkList;

          if(bookmarkList.isEmpty){
            return const Center(
              child: Text("No Bookmark Data",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
            );
          }


          return ListView.builder(
            itemCount: bookmarkList.length,
            itemBuilder: (context, index) {
              final cat = bookmarkList[index];
              return ListTile(
                leading: Image.network(cat.imageProfile),
                title: Text(cat.name),
                subtitle: Text(cat.location),
              );
            },
          );
        },
      ),
    );
  }
}
