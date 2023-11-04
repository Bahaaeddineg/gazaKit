import 'package:flutter/material.dart';
import 'package:gazakit/src/features/boycott/boycott.dart';
import 'package:gazakit/src/features/encoding/encoding.dart';

import '../features/comments/comments.dart';
import '../features/socialMedia/socialMedia.dart';
import '../layout/layout.dart';
class AppRoutes {
  static const layout = '/';
  static const boycott = '/boycott';
  static const social = '/social';
   static const encoding = '/encoding';
    static const comments = '/comments';
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.layout:
        return MaterialPageRoute(builder: (context) => const Layout());
      case AppRoutes.boycott:
        return MaterialPageRoute(builder: (context) => const Boycott());
      case AppRoutes.social:
        return MaterialPageRoute(builder: (context) => const SocialMedia());
        case AppRoutes.comments:
        return MaterialPageRoute(builder: (context) => const CommentsHashtags());
    case AppRoutes.encoding:
        return MaterialPageRoute(builder: (context) => const Encoding());
    }
    return null;
  }
}