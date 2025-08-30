import 'package:flutter/material.dart';
import 'package:flutter_pemula_1/data/type_of_cat.dart';
import 'package:photo_view/photo_view.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';


class DetailScreen extends StatefulWidget {
  final AdoptionCat adopt;

  const DetailScreen({super.key, required this.adopt});

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
                      tag: widget.adopt.imageProfile,
                      child: SizedBox(
                        height: 250,
                        width: double.infinity,
                        child: AnotherCarousel(
                          images: widget.adopt.imageUrl
                              .map((url) => NetworkImage(url))
                              .toList(),
                          dotSize: 6.0,
                          dotSpacing: 15.0,
                          dotColor: Colors.black,
                          indicatorBgPadding: 5.0,
                          dotBgColor: Colors.grey[100],
                          borderRadius: true,
                          moveIndicatorFromBottom: 180.0,
                          noRadiusForIndicator: true,
                          boxFit: BoxFit.cover,
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
                    widget.adopt.name,
                    style: const TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    "Breed",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(widget.adopt.breed),
                  const SizedBox(height: 26.0),
                  Text(
                    widget.adopt.description,
                    style: TextStyle(
                      fontSize: 14.0,
                      overflow: TextOverflow.ellipsis,
                    ),
                    maxLines: 4,
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 16.0),

                  const SizedBox(height: 8.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
