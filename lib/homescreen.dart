import 'package:auto_route/auto_route.dart';
import 'package:booklistingproject/config/routes.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        // BooksRouter(),
        BookRouter(),
        FavoriteRouter(),
        ProfileRouter(),
      ],
      bottomNavigationBuilder: (_, route) {
        return BottomNavigationBar(
          currentIndex: route.activeIndex,
          onTap: route.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.book),
              label: "Book",
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.square_favorites_alt_fill),
              label: "Favourite",
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person_alt_circle),
              label: 'Profile',
            ),
          ],
        );
      },
    );
  }
}
