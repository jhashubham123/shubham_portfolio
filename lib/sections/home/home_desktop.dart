import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_shubham/animations/entrance_fader.dart';
import 'package:portfolio_shubham/configs/configs.dart';

import 'package:portfolio_shubham/utils/utils.dart';
import 'package:portfolio_shubham/widget/social_links.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 1.025,
      padding: Space.h,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              width: size.width / 2,
              child: Opacity(
                opacity: 0.9,
                child: EntranceFader(
                  offset: const Offset(0, 0),
                  delay: const Duration(seconds: 1),
                  duration: const Duration(milliseconds: 800),
                  child: Image.asset(
                    fit: BoxFit.cover,
                    StaticUtils.blackWhitePhoto,
                    height: size.width < 1200
                        ? size.height * 0.8
                        : size.height * 0.85,
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(
              AppDimensions.normalize(30),
              AppDimensions.normalize(80),
              0,
              0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'WELCOME TO MY PORTFOLIO! ',
                      style: AppText.b1!.copyWith(
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    EntranceFader(
                      offset: const Offset(0, 0),
                      delay: const Duration(seconds: 2),
                      duration: const Duration(milliseconds: 800),
                      child: Image.asset(
                        StaticUtils.hi,
                        height: AppDimensions.normalize(12),
                      ),
                    ),
                  ],
                ),
                Space.y1!,
                Text(
                  "Shubham",
                  style: AppText.h1b!.copyWith(
                    fontSize: AppDimensions.normalize(25),
                  ),
                ),
                Text(
                  "Jha",
                  style: AppText.h1b!.copyWith(
                    fontSize: AppDimensions.normalize(25),
                    height: 1,
                    fontWeight: FontWeight.w100,
                  ),
                ),
                EntranceFader(
                  offset: const Offset(-10, 0),
                  delay: const Duration(seconds: 1),
                  duration: const Duration(milliseconds: 800),
                  child: Row(
                    children: [
                      Icon(
                        Icons.play_arrow_rounded,
                        color: AppTheme.c!.primary!,
                      ),
                      AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(
                            ' Flutter Developer',
                            speed: const Duration(milliseconds: 50),
                            textStyle: AppText.b1,
                          ),
                          TyperAnimatedText(
                            ' UI/UX Enthusiast',
                            speed: const Duration(milliseconds: 50),
                            textStyle: AppText.b1,
                          ),
                          TyperAnimatedText(
                            ' A friend :)',
                            speed: const Duration(milliseconds: 50),
                            textStyle: AppText.b1,
                          ),
                        ],
                        isRepeatingAnimation: true,
                      ),
                    ],
                  ),
                ),
                Space.y2!,
                const SocialLinks(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
