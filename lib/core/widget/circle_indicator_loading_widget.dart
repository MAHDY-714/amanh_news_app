import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
import 'package:flutter/material.dart';

class CircleIndicatorLoadingWidget extends StatelessWidget {
  const CircleIndicatorLoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: kHeight(context) * .4,
        child: CircleAvatar(
          radius: 37,
          backgroundColor: AppColor.redDeep6,
          child: CircleAvatar(
            radius: 35,
            backgroundColor: AppColor.redDeep7,
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                for (int i = 1; i <= 4; i++)
                  CircularProgressIndicator(
                    strokeWidth: i.toDouble() + 1.7,
                    backgroundColor: AppColor.redDeep6,
                    valueColor:
                        const AlwaysStoppedAnimation<Color>(AppColor.pink2),
                    strokeAlign: (i * .6) + .8,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
