import 'package:flutter/material.dart';

class AppTextStyle {

  static normalText(width) =>width>550?const TextStyle(fontWeight: FontWeight.w300,fontSize: 20):const TextStyle(fontWeight: FontWeight.w300,fontSize:15);

 static headerText1(width) =>width>550?const TextStyle(fontWeight: FontWeight.w400,fontSize: 24): const TextStyle(fontWeight: FontWeight.w400,fontSize:20 );

  static headerText2(width) =>width>550?const TextStyle(fontWeight: FontWeight.w500,fontSize: 26):const TextStyle(fontWeight: FontWeight.w500,fontSize:23 );

 static headerText3(width) =>width>550?const TextStyle(fontWeight: FontWeight.w600,fontSize: 30):const TextStyle(fontWeight: FontWeight.w600,fontSize:26 );

 static homeCard1(width) =>width>550?const TextStyle(color:Colors.white, fontWeight:FontWeight.w400,fontSize: 25):const TextStyle(color:Colors.white,fontWeight: FontWeight.w400,fontSize:17 );



 static homeCardSalary(width) =>width>550?const TextStyle(color:Colors.white, fontWeight:FontWeight.w600,fontSize: 40):const TextStyle(color:Colors.white,fontWeight: FontWeight.w600,fontSize:35 );


  static mywalletText(width) =>width>550?const TextStyle(color:Colors.white,fontWeight: FontWeight.w300,fontSize: 20):const TextStyle(fontWeight: FontWeight.w300,fontSize:15,color:Colors.white);


  static normalTextWight(width) =>width>550?const TextStyle(color:Colors.white,fontWeight: FontWeight.w300,fontSize: 20):const TextStyle(fontWeight: FontWeight.w300,fontSize:15,color:Colors.white);
 
 static headerText1Wight(width) =>width>550?const TextStyle(color:Colors.white,fontWeight: FontWeight.w600,fontSize: 24): const TextStyle(color:Colors.white,fontWeight: FontWeight.w600,fontSize:17 );

 static seeAll(width) =>width>550?const TextStyle(color:Colors.blue,fontWeight: FontWeight.w600,fontSize: 24): const TextStyle(color:Colors.blue,fontWeight: FontWeight.w600,fontSize:15 );



 static normalGrey(width) =>width>550?const TextStyle(color:Colors.grey,fontWeight: FontWeight.w400,fontSize: 24): const TextStyle(color:Colors.grey,fontWeight: FontWeight.w400,fontSize:15 );


 static income(width) =>width>550? TextStyle(color:Colors.green[300],fontWeight: FontWeight.w600,fontSize: 25):  TextStyle(color:Colors.green[300],fontWeight: FontWeight.w500,fontSize:17 );



 static outcome(width) =>width>550? TextStyle(color:Colors.red[300],fontWeight: FontWeight.w600,fontSize: 25):  TextStyle(color:Colors.red[300],fontWeight: FontWeight.w500,fontSize:17);





}
