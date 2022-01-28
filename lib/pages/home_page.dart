import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = "/home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List images = [
    "assets/images/image_1.jpeg",
    "assets/images/image_2.jpg",
    "assets/images/image_3.png",
    "assets/images/image_4.jpg",
    "assets/images/image_5.jpg",
    "assets/images/image_1.jpeg",
    "assets/images/image_2.jpg",
    "assets/images/image_3.png",
    "assets/images/image_4.jpg",
    "assets/images/image_5.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Apple products",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 12.5, horizontal: 5),
              height: 35,
              width: 35,
              alignment: Alignment.center,
              child: Text(
                "7",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(7.5)),
            )
          ],
        ),
        drawer: Drawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 225,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/image_3.png"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.center,
                          colors: [
                        Colors.black.withOpacity(0.5),
                        Colors.black.withOpacity(0.3),
                        Colors.black.withOpacity(0.1),
                      ])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // #lafestyle safe
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "Lifestyle safe",
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                        ),
                      ),
                      // #shop_new_button
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 25, horizontal: 30),
                        child: MaterialButton(
                          height: 55,
                          minWidth: double.infinity,
                          onPressed: () {},
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            "Shop Now",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              // #body
              GridView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.all(20),physics: NeverScrollableScrollPhysics(),
                gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                ),
                itemCount: 10,
                itemBuilder: (context, index) {
                  {
                    return buildGridTile(index);
                  }
                },
              ),

            ],
          ),
        ));
  }

  GridTile buildGridTile(int index) {
    return GridTile(
                    footer: GridTileBar(
                    backgroundColor: Colors.transparent,
                    subtitle: Text("ok"),
                    trailing: Icon(Icons.star_border_outlined,size: 25,color: Colors.yellow,),
                  ),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: DecorationImage(fit: BoxFit.cover,
                              image: AssetImage(images[index])
                          )
                      ),
                    ),
                  );
  }

  Container griedViewOfiteam(BuildContext context, int index) {
    return Container(
                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.all(5),
                  height:MediaQuery.of(context).size.height,
                  width:MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(images[index],
                      ))),
                  child: Icon(Icons.star_border_outlined,size: 25,color: Colors.yellow  ,),
                );
  }

}
