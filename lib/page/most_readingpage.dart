import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

class MostReadingPage extends StatelessWidget {
  const MostReadingPage({Key? key, @queryParam this.author}) : super(key: key);
  final String? author;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: author == null
              ? Text("Welcome to Most Reading Book List")
              : Container(),
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: author != null
              ? Text("The Most Reading Book From Author Name: $author")
              : Container(),
        )
      ],
    );
  }
}
