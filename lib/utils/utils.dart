import 'package:flutter/material.dart';
import 'package:portfolio_shubham/sections/about/about.dart';
import 'package:portfolio_shubham/sections/contact/contact.dart';
import 'package:portfolio_shubham/sections/home/home.dart';
import 'package:portfolio_shubham/sections/portfolio/portfolio.dart';
import 'package:portfolio_shubham/sections/services/services.dart';
import 'package:portfolio_shubham/widget/footer.dart';

class StaticUtils {
  static const String hi = 'assets/hi.gif';

  // photos
  static const String mobilePhoto = 'assets/photos/colored.jpeg';
  static const String coloredPhoto = 'assets/photos/colored.jpeg';
  static const String blackWhitePhoto = 'assets/photos/black-white.png';

  // work
  static const String dsc = 'assets/work/dsc.png';
  static const String sastaticket = 'assets/work/st.png';
  static const String university = 'assets/work/cui.png';
  static const String fullterIsb = 'assets/work/flutterIsl.png';

  // services
  static const String uiux = 'assets/services/ui.png';
  static const String blog = 'assets/services/blog.png';
  static const String appDev = 'assets/services/app.png';
  static const String rapid = 'assets/services/rapid.png';
  static const String openSource = 'assets/services/open.png';
  static const String openSourceBlack = 'assets/services/open_b.png';

  static const List<String> socialIconURL = [
    "https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png",
    "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
    "https://img.icons8.com/android/480/ffffff/twitter.png",
    "https://img.icons8.com/metro/308/ffffff/linkedin.png",
    "https://img.icons8.com/material-rounded/384/ffffff/github.png",
    "https://img.icons8.com/material-rounded/384/ffffff/youtube.png",
  ];

  static const List<String> socialLinks = [
    "https://www.facebook.com/shubham.jha.148116",
    "https://www.instagram.com/shubii7/",
    "https://x.com/Letstal35366654",
    "https://www.linkedin.com/in/shubham-jha-5a1236193/",
    "https://github.com/jhashubham123",
    "https://www.youtube.com/channel/UCv8jLGX4sLr9nWOFVcHGxXA",
  ];

  static const String resume = 'https://aquamarine-christiana-38.tiiny.site/';

  static const String gitHub = 'https://github.com/jhashubham123';
}

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    About(),
    Services(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}
