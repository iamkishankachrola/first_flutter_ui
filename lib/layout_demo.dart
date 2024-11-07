import 'package:flutter/material.dart';
import 'colors.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class HomePage extends StatelessWidget{
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text("Layout Demo",style: TextStyle(color: Colors.white),),backgroundColor: Colors.blue,centerTitle: true,),
      body: Row(
        children: [
          Container(
            width: 300,
            height: 400,
            padding: const EdgeInsets.only(left: 25,right: 25),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 30,
                  margin: const EdgeInsets.only(top: 26,bottom: 10),
                  decoration: BoxDecoration(
                      color: AppColors.containerBgColor,
                      border: Border.all(color: Colors.black,width: 1),
                  ),
                  child: const Center(child: Text("Strawberry Pavlova",style: TextStyle(fontWeight: FontWeight.bold,color: AppColors.fontColor,fontSize: 20))),
                ),
                Container(
                  width: double.infinity,
                  height: 140,
                  margin:const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    color: AppColors.containerBgColor,
                    border: Border.all(color: Colors.black,width: 1),
                  ),
                  child: const Text("Pavlova is a meringue-based dessert named after the Russian \n    ballerine Anna Pavlova. Pavlova featues a crisp crust and soft, light inside, topped with fruit and whipped cream.",
                    textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  width:double.infinity,
                  height: 20,
                  decoration: BoxDecoration(
                    color: AppColors.containerBgColor,
                    border: Border.all(color: Colors.black,width: 1),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star,color: AppColors.fontColor,size: 18,),
                          Icon(Icons.star,color: AppColors.fontColor,size: 18,),
                          Icon(Icons.star,color: AppColors.fontColor,size: 18,),
                          Icon(Icons.star,color: AppColors.fontColor,size: 18,),
                          Icon(Icons.star,color: AppColors.fontColor,size: 18,),
                        ],
                      ),
                      Text("170 Reviews",style: TextStyle(color: AppColors.fontColor,fontSize: 14),)
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    color: AppColors.containerBgColor,
                    border: Border.all(color: Colors.black,width: 1),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.kitchen_sharp,color: AppColors.iconColor,size: 22,),
                          Text("PREP:",style: TextStyle(color: AppColors.fontColor,fontSize: 14),),
                          Text("25 min",style: TextStyle(color: AppColors.fontColor,fontSize: 14),),
                        ],
                      ),Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.timer_outlined,color: AppColors.iconColor,size: 22,),
                          Text("COOK:",style: TextStyle(color: AppColors.fontColor,fontSize: 14),),
                          Text("1 hr",style: TextStyle(color: AppColors.fontColor,fontSize: 14),),
                        ],
                      ),Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.restaurant_sharp,color: AppColors.iconColor,size: 22,),
                          Text("FEEDS:",style: TextStyle(color: AppColors.fontColor,fontSize: 14),),
                          Text("4-6",style: TextStyle(color: AppColors.fontColor,fontSize: 14),),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          ///image with circle radius
          SizedBox(
            width: 550,
            height: 400,
            child: ClipRRect(borderRadius: BorderRadius.circular(22),
                child: Image.asset("assets/images/bg_dessert.jpg",
                    fit: BoxFit.fill)),
          )
          // Container(
          //   width: 550,
          //   height: 400,
          //   decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(22),
          //     image: DecorationImage(image: AssetImage("assets/images/bg_dessert.jpg"),fit: BoxFit.fill)
          //   ),
          // )
        ],
      ),
    );
  }
}