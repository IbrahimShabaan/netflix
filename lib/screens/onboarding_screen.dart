import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:untitled2/components/custon_outline.dart';
import 'package:untitled2/constants.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Constants.kBlackColor,
      extendBody: true,
      body: SizedBox(
        width: screenWidth,
        height: screenHeight,
        child: Stack(
          children: [
            Positioned(
               top: screenHeight*0.1,
                left: -88,
                child: Container(
                  width: 166,
                  height: 166,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Constants.kPinkColor,
                  ),
                  child: BackdropFilter(filter: ImageFilter.blur(
                    sigmaX: 200,
                    sigmaY: 200
                  ),
                   child: Container(
                     width: 166,
                     height: 166,
                     color: Colors.transparent,
                   ),
                  ),
                ),),

            Positioned(
              top: screenHeight*0.3,
              right: -100,
              child: Container(
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Constants.kGreenColor,
                ),
                child: BackdropFilter(filter: ImageFilter.blur(
                    sigmaX: 200,
                    sigmaY: 200
                ),
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.transparent,
                  ),
                ),
              ),),
SafeArea(child: Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    SizedBox(
      height: screenHeight*0.07,
    ),

    ////Picture With Circle
    CustomOutline(
      width: screenWidth*0.8,
    height: screenWidth*0.8,

      padding: const EdgeInsets.all(4),
      gradient:LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Constants.kPinkColor,
          Constants.kPinkColor.withOpacity(0),
          Constants.kGreenColor,
          Constants.kGreenColor.withOpacity(0.1),
        ],
        stops: const [0.2,0.4,0.6,1],
      ) ,
      radius: screenWidth*0.8,
    strokeWidth: 4,
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,

          image: DecorationImage(
              image:AssetImage('assets/img-onboarding.png'),
          fit: BoxFit.cover,
            alignment: Alignment.topLeft,
          ),

          ),
        ),
      ),
    SizedBox(
      height: screenHeight*0.09,
    ),
Text('Watch movies in\nVirtual Reality',
  textAlign: TextAlign.center,
style: TextStyle(
  fontSize: screenHeight <= 667 ? 18 : 34,
  fontWeight: FontWeight.w700,
  color: Constants.kWhiteColor.withOpacity(0.85),
),
),
    SizedBox(height: screenHeight*0.05,),
    Text(
      'Download and watch offline\nwherever you are',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Constants.kWhiteColor.withOpacity(0.75),
        fontSize: screenHeight <= 667 ? 12 : 16,
      ),
    ),
    SizedBox(
      height: screenHeight * 0.03,
    ),
  CustomOutline(
    strokeWidth: 3,
    radius: 20,
    padding: const EdgeInsets.all(3),
    width: 160,
    height: 38,
    gradient: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Constants.kPinkColor, Constants.kGreenColor],
    ), child: Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Constants.kPinkColor.withOpacity(0.5),
          Constants.kGreenColor.withOpacity(0.5)
        ],
      ),
    ),
    child: const Center(
      child: Text(
        'Sign Up',
        style: TextStyle(
          fontSize: 14,
          color: Constants.kWhiteColor,
        ),
      ),
    ),
  ),
  ),
    const Spacer(),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
            (index) {
          return Container(
            height: 7,
            width: 7,
            margin: const EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: index == 0
                  ? Constants.kGreenColor
                  : Constants.kWhiteColor.withOpacity(0.2),
            ),
          );
        },
      ),
    ),
    SizedBox(
      height: screenHeight * 0.01,
    ),



   ],
),
),

          ],
        ),
      ),
    );
  }
}
