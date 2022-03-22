import 'package:auto_route/auto_route.dart';
import 'package:booklistingproject/config/routes.gr.dart';
import 'package:flutter/material.dart';

class BooksPage extends StatelessWidget {
  const BooksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Book"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          //Text("Welcome to Book List"),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  onPressed: () {
                    // context.router.push(BookDetailsRoute(bookId: 15)); //pageroute
                    // context.router.pushNamed("books:15"); path
                    context.router.pushNamed("popular"); //path
                  },
                  child: Text("Popular Book"),
                ),
                SizedBox(
                  width: 20,
                ),
                RaisedButton(
                  onPressed: () {
                    // context.router
                    //     .push(MostReadingRoute(authorName: "John")); //pageroute
                    context.router.pushNamed("most-reading"); //path
                  },
                  child: Text("Most Reading Book"),
                )
              ],
            ),
          ),
          Expanded(child: AutoRouter()),
        ],
      ),
    );
  }
}
