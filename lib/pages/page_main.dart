import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:jeux/pages/page_game.dart';
import 'package:jeux/utils/colors.dart';
import 'package:jeux/widgets/big_text.dart';

class PageMain extends StatelessWidget {
  const PageMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            margin: EdgeInsets.only(top: 170),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image/logo.png'),
              ),
            ),
          ),
          Container(
            height: 150,
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
              margin: EdgeInsets.only(top : 150),
              padding: EdgeInsets.only(left: 70 , right: 70 , top: 15 , bottom: 15),
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: BigText(text: "Start",),
            ),
          ),
        ],
      ),
    );
  }
}