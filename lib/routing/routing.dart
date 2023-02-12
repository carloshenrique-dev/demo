import 'package:demo/modules/user/profile/profile_page.dart';
import 'package:go_router/go_router.dart';

enum Pages {
  profile,
}

final routerConfig = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: Pages.profile.name,
      builder: (context, state) => const ProfilePage(),
    ),
  ],
);
