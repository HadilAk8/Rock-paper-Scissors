import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:jeux/pages/page_game.dart';
import 'package:jeux/utils/colors.dart';
import 'package:jeux/utils/dimensions.dart';
import 'package:jeux/widgets/big_text.dart';

class PageMain extends StatelessWidget {
  const PageMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: Dimensions.height10*10,
            margin: EdgeInsets.only(top: Dimensions.height10*17),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image/logo.png'),
              ),
            ),
          ),
          Container(
            height: Dimensions.height30*5,
            //margin: EdgeInsets.only(top:),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image/game.png'),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Get.to(PageGame()),
            child: Container(
              margin: EdgeInsets.only(top : Dimensions.height30*5),
              padding: EdgeInsets.only(left: Dimensions.width10*7 , right: Dimensions.width10*7 , top: Dimensions.height15 , bottom: Dimensions.height15),
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.circular(Dimensions.radius50),
              ),
              child: BigText(text: "Start",),
            ),
          ),
        ],
      ),
    );
  }
}