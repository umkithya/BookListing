import 'package:auto_route/auto_route.dart';

import '../homescreen.dart';
import '../page/bookpage.dart';
import '../page/favpage.dart';
import '../page/most_readingpage.dart';
import '../page/popularpage.dart';
import '../page/profilepage.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: HomePage,
      children: [
        AutoRoute(
          path: "books",
          name: "BookRouter",
          page: BooksPage,
          children: [
            CustomRoute(
                transitionsBuilder: TransitionsBuilders.noTransition,
                path: 'popular',
                page: PopularPage,
                initial: true),
            CustomRoute(
                transitionsBuilder: TransitionsBuilders.noTransition,
                path: 'most-reading',
                page: MostReadingPage),
            RedirectRoute(path: '*', redirectTo: ''),

            // AutoRoute(path: ':bookId', page: BookDetailsPage),
            // RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
        // our BooksRouter has been moved into the children field
        AutoRoute(
          path: "favorite",
          name: "FavoriteRouter",
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: FavoritePage),

            // AutoRoute(path: ':bookId', page: BookDetailsPage),
            // RedirectRoute(path: '*', redirectTo: ''),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
        // our AccountRouter has been moved into the children field
        AutoRoute(
          path: "profile",
          name: "ProfileRouter",
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: ProfilePage),
            //AutoRoute(path: 'accountdetails', page: AccountDetailsPage),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
      ],
    ),
  ],
)
class $AppRouter {}
