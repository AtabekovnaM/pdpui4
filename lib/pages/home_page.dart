import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = 'home_page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text("Cars",style: TextStyle(color: Colors.red,fontSize: 25),),
        brightness: Brightness.light,
        actions: [
          IconButton(
              icon: Icon(Icons.notifications_none,color: Colors.red,size: 25,),
              onPressed: null
          ),
          IconButton(
              icon: Icon(Icons.shopping_cart,color: Colors.red,size: 25,),
              onPressed: null
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    singleTab(true,"All"),
                    singleTab(false,"Red"),
                    singleTab(false,"Blue"),
                    singleTab(false,"Green"),
                    singleTab(false,"Grey"),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              makeItem("assets/images/im_car1.jpg"),
              makeItem("assets/images/im_car2.jpg"),
              makeItem("assets/images/im_car3.jpg"),
              makeItem("assets/images/im_car4.png"),
              makeItem("assets/images/im_car5.jpg"),
            ],
          ),
        ),
      ),
    );
  }
  Widget singleTab(bool type, String text){
    return AspectRatio(
      aspectRatio: 2.2/1,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: type ? Colors.red : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(text,style: TextStyle(fontSize: type? 20: 17,color: type? Colors.white:Colors.black),),
        ),
      ),
    );
  }

  Widget makeItem(String image){
    return Container(
      height: 250,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[400],
              blurRadius: 10,
              offset: Offset(0,10),
            ),
          ]
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.6),
                Colors.black.withOpacity(0.3),
                Colors.black.withOpacity(0.2),
              ]
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("PDP Car",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                      SizedBox(width: 10),
                      Container(
                        margin: EdgeInsets.only(top: 4),
                        child: Text("Electric",style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(bottom: 90),
              child:  Text("100\$", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
            ),
            Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red
              ),
              child: Center(
                child: Icon(Icons.favorite_border, size: 20,color: Colors.white,),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
