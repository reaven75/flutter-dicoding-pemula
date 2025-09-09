import 'package:flutter/material.dart';
import 'package:flutter_pemula_1/data/type_of_cat.dart';
import 'package:flutter_pemula_1/pages/Homepage.dart';
import 'package:flutter_pemula_1/provider/bookmark_provider.dart';
import 'package:photo_view/photo_view.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatefulWidget {
  final AdoptionCat adopt;

  const DetailScreen({super.key, required this.adopt});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {

  @override
  void initState() {
    super.initState();
  }

  

  

  Icon _getGenderIcon(Gender gender) {
    return switch (gender) {
      Gender.male => const Icon(Icons.male, color: Colors.blue),
      Gender.female => const Icon(Icons.female, color: Colors.pink),
    };
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),

        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            backgroundColor: Colors.blue,
            textStyle: const TextStyle(fontSize: 18.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          onPressed: () {},
          child: const Text(
            "Adoption",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
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
                          autoplay: false,
                          dotSpacing: 15.0,
                          dotColor: Colors.black,
                          indicatorBgPadding: 5.0,
                          dotBgColor: Colors.transparent,
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
                        Consumer<BookmarkProvider>(
                          builder: (context, value, _) {
                          final isBookmarked = value.isBookmarked(widget.adopt);
                          
                          return CircleAvatar(
                            backgroundColor: Colors.white,
                            child: IconButton(
                              icon: Icon(
                                isBookmarked
                                    ? Icons.bookmark
                                    : Icons.bookmark_border,
                                color: Colors.black,
                              ),
                              onPressed: () {
                                value.toggleBookmarked(widget.adopt);
                              },
                            ),
                          );  
                          },
                          
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
                  Row(
                    children: [
                      Text(
                        widget.adopt.name,
                        style: const TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      _getGenderIcon(widget.adopt.gender),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: widget.adopt.isVaccinated
                              ? const Color.fromARGB(207, 40, 103, 238)
                              : Colors.redAccent,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          widget.adopt.isVaccinated
                              ? "Vaccinated"
                              : "Not Vaccinated",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: widget.adopt.isVaccinated
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: widget.adopt.isAvailable
                              ? Colors.lightBlueAccent[200]
                              : Colors.redAccent,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          widget.adopt.isAvailable
                              ? "Available"
                              : "Not Available",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: widget.adopt.isAvailable
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24.0),
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Breed",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text(widget.adopt.breed),
                          ],
                        ),
                        VerticalDivider(
                          color: Colors.grey[400],
                          thickness: 1, // ketebalan garis
                          width: 30, // jarak antar widget
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Age",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text(widget.adopt.age.toString()),
                          ],
                        ),
                        VerticalDivider(
                          color: Colors.grey[400],
                          thickness: 1, // ketebalan garis
                          width: 30, // jarak antar widget
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Location",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 16.0,
                                  color: Colors.blue,
                                ),
                                Text(widget.adopt.location),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Text(
                    "Description",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
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
