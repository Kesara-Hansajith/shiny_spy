import 'package:flutter/material.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({
    Key? key,
    required this.imagePath, // Add imagePath parameter
    required this.articleTitle,
    required this.description,
  }) : super(key: key);

  final String imagePath; // Define imagePath parameter
  final String articleTitle;
  final String description;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: Color(0xFFEFE8A2),
          width: 2.0,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.all(8.0),
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(imagePath), // Use NetworkImage to load image from URL
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    articleTitle,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      description,
                      style: TextStyle(fontSize: 10, color: Colors.white),
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