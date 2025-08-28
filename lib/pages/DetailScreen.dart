import 'package:flutter/material.dart';
import 'package:flutter_pemula_1/data/tourism_place.dart';
import 'package:photo_view/photo_view.dart';

class DetailScreen extends StatefulWidget {
  final TourismPlace place;

  const DetailScreen({super.key, required this.place});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Hero(
                      tag: widget.place.imageAsset,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.asset(
                          widget.place.imageAsset,
                          fit: BoxFit.cover,
                          height: 350,
                        ),
                      ),
                    ),
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: IconButton(
                            icon: Icon(
                              isFavorite ? Icons.favorite : Icons.favorite_border,
                              color: Colors.red,
                            ),
                            onPressed: () {
                              setState(() {
                                isFavorite = !isFavorite;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.place.name,
                    style: const TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.blue),
                      Text(widget.place.location),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Padding(
                    padding: const EdgeInsets.only(right: 25.0),
                    child: Text(
                      widget.place.description,
                      style: TextStyle(
                        fontSize: 14.0,
                        overflow: TextOverflow.ellipsis,
                      ),
                      maxLines: 4,
                      textAlign: TextAlign.justify,
                      
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Text("Galery", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                  const SizedBox(height: 8.0),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: widget.place.imageUrls.map((image) {
                        return GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return Dialog(
                                  backgroundColor: Colors.transparent,
                                  insetPadding: EdgeInsets.all(10),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: PhotoView(
                                        imageProvider: NetworkImage(image),
                                        backgroundDecoration: BoxDecoration(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  );
                              },
                            );
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                image,
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
