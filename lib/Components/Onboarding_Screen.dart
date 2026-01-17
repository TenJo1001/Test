import "package:ecommerce_app/constand/constColors.dart";
import "package:flutter/material.dart";

import "Login_Screen.dart";
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}
final lstModel = [
  {
    "image": "assets/ModelScreen/fashion shop-rafiki 1.png",
    "title": "Choose Product",
    "description": "The Choose Product feature allows users to select a product from a list based on their needs and preferences."
  },
  {
    "image": "assets/ModelScreen/Sales consulting-pana 1.png",
    "title": "Make Payment",
    "description": "The Choose Product feature allows users to select a product from a list based on their needs and preferences."
  },
  {
    "image": "assets/ModelScreen/Shopping bag-rafiki 1.png",
    "title": "Get Your Order",
    "description": "The Choose Product feature allows users to select a product from a list based on their needs and preferences. "
  },


];

var countIndex = 0;
var countLst = 0;
var textButtonNext = "Next";

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: size.height*0.89,
                    width: size.width,
                    
                    child: PageView.builder(
                      controller: _pageController,
                        onPageChanged: (index){
                          setState(() {
                            countIndex = index;
                          });
                        },
                        itemCount: lstModel.length,
                        itemBuilder: (context, index){
                          final model = lstModel[index];
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  child: Image.asset("${model["image"]}"),height: size.height*0.3,),
                              Text("${model["title"]}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("${model["description"]}"),
                                ],
                              ),

                            ],
                          );
                        }),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: 30,
                          width: 30,
                          child: Center(child: Text("${countIndex+1}/${lstModel.length}"))),
                      TextButton(onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                      }, child: Text("Skip"))
                    ],
                  ),
                  Container(
                    height: size.height*0.89,
                    width: size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  for (int i = 0 ; i < lstModel.length ; i++ )
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 10,
                                        width: countIndex == i ? 50 : 10,
                                        decoration: BoxDecoration(
                                            color: countIndex == i ? kselectedIndex: kselectedColor,
                                            borderRadius: BorderRadius.circular(100)
                                        ),
                                      ),
                                    )
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    if (countIndex < lstModel.length - 1) {
                                      _pageController.animateToPage(
                                        countIndex + 1,
                                        duration: const Duration(milliseconds: 300),
                                        curve: Curves.easeInOut,
                                      );
                                    }
                                    countIndex == lstModel.length-2? textButtonNext="Get Start":textButtonNext="Next";
                                    if (countIndex == lstModel.length-1){
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                                    }
                                  },
                                  child:  Text("${textButtonNext}",style: TextStyle(color: Colors.red),),
                                ),
                              ],
                            ),

                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
