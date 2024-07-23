import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:jeux/controllers/game_cont.dart';
import 'package:jeux/pages/page_main.dart';
import 'package:jeux/utils/colors.dart';
import 'package:jeux/utils/dimensions.dart';
import 'package:jeux/widgets/big_text.dart';
import 'package:jeux/widgets/small_text.dart';

class PageGame extends StatefulWidget {
  const PageGame({super.key});

  @override
  State<PageGame> createState() => _PageGameState();
}

class _PageGameState extends State<PageGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GetBuilder<GameController>(
            init: GameController(),
            builder: (game) {
              return Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: Dimensions.height10*5 , left: Dimensions.height10*4 , right:  Dimensions.height10*4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            BigText(text: "You",),
                            Container(
                              padding: EdgeInsets.only(top: Dimensions.height20 , left: Dimensions.height20 , right: Dimensions.height20 , bottom: Dimensions.height20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(Dimensions.radius20),
                                color: Colors.white,
                                              ),
                                              child: BigText(text: game.nbG.toString()),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            BigText(text: "Robot",),
                            Container(
                              padding: EdgeInsets.only(top:Dimensions.height20 , left: Dimensions.height20 , right: Dimensions.height20 , bottom: Dimensions.height20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(Dimensions.radius20),
                                color: Colors.white,
                                              ),
                                              child: BigText(text: game.nbR.toString() ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: Dimensions.height20),
                    child: BigText(text:"Robet"),
                    ),
                  Container(
                    margin: EdgeInsets.only(top: Dimensions.height30 , bottom: Dimensions.height10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: Dimensions.width20*2,
                                  height: Dimensions.height20*2,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage("assets/image/rockUp.png")
                                      ),
                                  ),
                                ),
                                game.randomNumber == 0?Container(
                                      decoration: BoxDecoration(
                                        color: AppColors.mainColor,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(Dimensions.radius5) ,
                                          topRight: Radius.circular(Dimensions.radius5) ,
                                        ),
                                      ),
                                      height: 3.0,
                                      width: 60.0, // Adjust width as needed
                                    ):Container(),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  width: Dimensions.width20*2,
                                  height: Dimensions.height20*2,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage("assets/image/paperUp.png")
                                      ),
                                  ),
                                ),
                                game.randomNumber == 1?Container(
                                      decoration: BoxDecoration(
                                        color: AppColors.mainColor,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(Dimensions.radius5) ,
                                          topRight: Radius.circular(Dimensions.radius5) ,
                                        ),
                                      ),
                                      height: 3.0,
                                      width: 60.0, // Adjust width as needed
                                    ):Container(),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  width: Dimensions.height10*5,
                                  height: Dimensions.height20*4,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage("assets/image/scissorsUp.png")
                                      ),
                                  ),
                                ),
                                game.randomNumber == 2?Container(
                                      decoration: BoxDecoration(
                                        color: AppColors.mainColor,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(Dimensions.radius5) ,
                                          topRight: Radius.circular(Dimensions.radius5) ,
                                        ),
                                      ),
                                      height: 3.0,
                                      width: 60.0, // Adjust width as needed
                                    ):Container(),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: Dimensions.height10*10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () {
                                
                                setState(() {
                                 game.chageSelectedButton(0);
                                  game.gameCom(game.robotChoose(),0);
                                  print(game.selectedButton);
                                });
                              },
                              child :Column(
                                children: [
                                  Container(
                                    width: Dimensions.width20*2,
                                  height: Dimensions.height20*2,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage("assets/image/rock.png")
                                        ),
                                    ),
                                  ),
                                  game.selectedButton == 0?Container(
                                    margin: EdgeInsets.only(top: Dimensions.height5),
                                  decoration: BoxDecoration(
                                    color: AppColors.mainColor,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(Dimensions.radius5) ,
                                      topRight: Radius.circular(Dimensions.radius5) ,
                                    ),
                                  ),
                                  height: 3.0,
                                  width: 60.0, // Adjust width as needed
                                ):Container(),
                                ],
                              ),
                              ),
                            GestureDetector(
                              onTap: () {
                                
                                setState(() {
                                  game.gameCom(game.robotChoose(),1);
                                  game.chageSelectedButton(1);
                                  print(game.selectedButton);
                                });
                              },
                              child: Column(
                                children: [
                                  Container(
                                  width: Dimensions.width20*2,
                                  height: Dimensions.height20*2,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage("assets/image/paper.png")
                                      ),
                                  ),
                                   ),
                                  game.selectedButton == 1?Container(
                                  margin: EdgeInsets.only(top: Dimensions.height5),
                                  decoration: BoxDecoration(
                                    color: AppColors.mainColor,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(Dimensions.radius5) ,
                                      topRight: Radius.circular(Dimensions.radius5) ,
                                    ),
                                  ),
                                  height: 3.0,
                                  width: 60.0, // Adjust width as needed
                                ):Container(),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                
                                setState(() {
                                  game.gameCom(game.robotChoose(),2);
                                  game.chageSelectedButton(2);
                                  print(game.selectedButton);

                                });
                              },
                              child :Column(
                                children: [
                                  Container(
                                 width: Dimensions.height10*5,
                                  height: Dimensions.height20*4,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage("assets/image/scissors.png")
                                      ),
                                  ),
                                                              ),
                                  game.selectedButton == 2?Container(
                                    margin: EdgeInsets.only(top: Dimensions.height5),
                                  decoration: BoxDecoration(
                                    color: AppColors.mainColor,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(Dimensions.radius5) ,
                                      topRight: Radius.circular(Dimensions.radius5) ,
                                    ),
                                  ),
                                  height: 3.0,
                                  width: 60.0, // Adjust width as needed
                                ):Container(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: Dimensions.height20),
                    child: BigText(text:"You"),
                    ),
                    Container(
                    margin: EdgeInsets.only(top: Dimensions.height20*2 ),
                    child: BigText(text:game.message  , color: game.lost==0?AppColors.mainColor:game.lost==1?Colors.greenAccent:Colors.redAccent,),
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () => game.replay(),
                        child: Container(
                          margin: EdgeInsets.only(top: Dimensions.height20*2),
                          padding: EdgeInsets.only(left: Dimensions.width10*5 , right: Dimensions.width10*5 , top: Dimensions.height15 , bottom: Dimensions.height15),
                          decoration: BoxDecoration(
                            color: AppColors.mainColor,
                            borderRadius: BorderRadius.circular(Dimensions.radius15),
                        
                          ),
                          child: SmallText(text: "Replay", color: AppColors.mainBlackColor,),
                        ),
                      ),
                       GestureDetector(
                        onTap: (){
                          Get.to(PageMain());
                        },
                         child: Container(
                          margin: EdgeInsets.only(top: Dimensions.height20*2),
                          padding: EdgeInsets.only(left: Dimensions.width20 , right: Dimensions.width20 , top: Dimensions.height15 , bottom: Dimensions.height15),
                          decoration: BoxDecoration(
                            color: AppColors.mainColor,
                            borderRadius: BorderRadius.circular(Dimensions.radius15),
                                               
                          ),
                          child: SmallText(text: "Go back to Main page" , color :AppColors.mainBlackColor),
                                               ),
                       ),
                    ],
                  ),
                ],
              );
            }
          ),
        ],
      ),
    );
  }
}