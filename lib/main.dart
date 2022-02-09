// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<String> topCategories = ["U POST UP","U SHOP UP","U BOOK UP","U CALL UP"
    ,"U POST UP","U SHOP UP","U BOOK UP","U CALL UP",];

  List<StoriesModel> storiesList =  [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    storiesList.add(StoriesModel(image: "assets/abc.jpg",name: "@_sarfaraz"));
    storiesList.add(StoriesModel(image: "assets/def.jpg",name: "@_user2"));
    storiesList.add(StoriesModel(image: "assets/ghi.jpg",name: "@_user3"));
    storiesList.add(StoriesModel(image: "assets/jkl.jpg",name: "@_user4"));
    storiesList.add(StoriesModel(image: "assets/abc.jpg",name: "@_sarfaraz"));
    storiesList.add(StoriesModel(image: "assets/def.jpg",name: "@_user2"));
    storiesList.add(StoriesModel(image: "assets/ghi.jpg",name: "@_user3"));
    storiesList.add(StoriesModel(image: "assets/jkl.jpg",name: "@_user4"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            SizedBox(height: 16,),
            Row(
              children: [
                SizedBox(width: 16,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("U",style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        height: 0.8
                    ),),
                    Text("U",style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        height: 0.8
                    ),),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 8,),
                    Text("DRIVE",style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        height: 0.8
                    ),),
                    Text("p",style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        height: 0.8
                    ),),
                  ],
                ),
                SizedBox(width: 16,),
                Expanded(
                    child: TextField(
                      autofocus: false,
                      style: TextStyle(fontSize: 15.0, color: Colors.black),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintText: 'Search',
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.4),
                        contentPadding: const EdgeInsets.only(
                            left: 14.0, bottom: 6.0, top: 8.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                ),
                SizedBox(width: 16,),
              ],
            ),
            SizedBox(
              height: 50,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: topCategories.length,
                  itemBuilder: (context,index){
                    return SizedBox(
                        width: 130,
                        child: Center(
                          child: Text(
                              topCategories[index],
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500
                              ),
                          ),
                        )
                    );
                  }),
            ),
            Container(
                height: 200,
                width: double.infinity,
                child: Stack(
                  children: [
                    Image.asset(
                        "assets/shop_bag.jpeg",
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: double.infinity,
                        height: 30,
                        color: Colors.white.withOpacity(0.3),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "AED 300/-",
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 16
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.orange
                              ),
                              child: Text(
                                "50% off",
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.6),
                                    fontSize: 16
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )),
            SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("#FOR U",style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                  ),),
                  Text("View All",style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                  ),),
                ],
              ),
            ),
            SizedBox(height: 12,),
            GridView.builder(
                itemCount: 6,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 5.0,
                  mainAxisSpacing: 5.0,
                  childAspectRatio: 0.63
                ),
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context,index){
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/jacket.jpg"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("0.000",style: TextStyle(decoration: TextDecoration.lineThrough),),
                          Container(
                              padding: EdgeInsets.symmetric(horizontal: 4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.orange
                              ),
                              child: Text(
                                "0.000%",
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough
                                ),
                              )
                          ),
                        ],
                      ),
                      Text("0.000",),
                      Text("Product Service",),
                      Text("Title Product",),
                    ],
                  );
                }),
            SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("#TOP STORIES",style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                  ),),
                  Text("View All",style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                  ),),
                ],
              ),
            ),
            SizedBox(height: 12,),
            SizedBox(
              height: 120,
              child: Center(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: storiesList.length,
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset(
                                storiesList[index].image,
                                height: 70,
                                width: 70,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 6,),
                            Text(storiesList[index].name),
                          ],
                        ),
                      );
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("#SHOP BY CATEGORY",style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                  ),),
                  Text("View All",style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                  ),),
                ],
              ),
            ),
            SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blueGrey[500],
                            ),
                            child: Icon(
                                Icons.layers_sharp,
                                size: 40,
                                color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 12,),
                          Text("Sub Category")
                        ],
                      )
                  ),
                  Expanded(
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blueGrey[500],
                            ),
                            child: Icon(
                                Icons.layers_sharp,
                                size: 40,
                                color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 12,),
                          Text("Category")
                        ],
                      )
                  )
                ],
              ),
            ),
            SizedBox(height: 12,),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/jacket.jpg",
                        height: 120,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 6,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("0.000",style: TextStyle(decoration: TextDecoration.lineThrough),),
                          Container(
                              padding: EdgeInsets.symmetric(horizontal: 4),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Colors.orange
                              ),
                              child: Text(
                                "0.000%",
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough
                                ),
                              )
                          ),
                        ],
                      ),
                      Text("0.000",),
                      Text("Product Service",),
                      Text("Title Product",)
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/jacket.jpg",
                        height: 120,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 6,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("0.000",style: TextStyle(decoration: TextDecoration.lineThrough),),
                          Container(
                              padding: EdgeInsets.symmetric(horizontal: 4),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Colors.orange
                              ),
                              child: Text(
                                "0.000%",
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough
                                ),
                              )
                          ),
                        ],
                      ),
                      Text("0.000",),
                      Text("Product Service",),
                      Text("Title Product",)
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/jacket.jpg",
                        height: 120,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 6,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("0.000",style: TextStyle(decoration: TextDecoration.lineThrough),),
                          Container(
                              padding: EdgeInsets.symmetric(horizontal: 4),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Colors.orange
                              ),
                              child: Text(
                                "0.000%",
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough
                                ),
                              )
                          ),
                        ],
                      ),
                      Text("0.000",),
                      Text("Product Service",),
                      Text("Title Product",)
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("TERM OF USE",style: TextStyle(color: Colors.black.withOpacity(0.4)),),
                  Text("CONTACT",style: TextStyle(color: Colors.black.withOpacity(0.4)),),
                  Text("CAREER",style: TextStyle(color: Colors.black.withOpacity(0.4)),),
                  Text("AREA RANGE",style: TextStyle(color: Colors.black.withOpacity(0.4)),),
                ],
              ),
            ),
            SizedBox(height: 16,),
            Row(
              children: [
                SizedBox(width: 16,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("U",style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        height: 0.8
                    ),),
                    Text("U",style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        height: 0.8
                    ),),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 8,),
                    Text("DRIVE",style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        height: 0.8
                    ),),
                    Text("p",style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        height: 0.8
                    ),),
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Text("Project by ",style: TextStyle(
                        color: Colors.black.withOpacity(0.4),
                        fontWeight: FontWeight.w400,
                    ),),
                    Text("EZENESS TECHNOLOGY",style: TextStyle(
                        color: Colors.black.withOpacity(0.4),
                        fontWeight: FontWeight.bold
                    ),),
                  ],
                ),
                SizedBox(width: 16,),
              ],
            ),
            SizedBox(height: 16,),
          ],
        ),
      ),
    );
  }
}

class StoriesModel {
  final String image;
  final String name;

  StoriesModel({
    required this.image,
    required this.name,
  });
}

