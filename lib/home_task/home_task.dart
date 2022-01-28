import 'package:flutter/material.dart';

class HomeTask extends StatefulWidget {
  const HomeTask({Key? key}) : super(key: key);

  @override
  _HomeTaskState createState() => _HomeTaskState();
}

class _HomeTaskState extends State<HomeTask> {
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
        backgroundColor: Colors.red.shade500,
        extendBodyBehindAppBar: false,
        // #appbar
        appBar: AppBar(
          backgroundColor: Colors.red.shade500,
          elevation: 0,
          leading: Icon(Icons.menu),
          title: Text("Apple Products"),
          centerTitle: true,
          actions: [
            Container(child: Text("7",style: TextStyle(color: Colors.white,fontSize: 12),),
              decoration: BoxDecoration(
                  color: Colors.red.shade200,
                  borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.only(right: 10, top: 12, bottom: 5),
              alignment: Alignment.center,
              width: 35,
              height: 35,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // #header
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(25),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/image_4.jpg"))),
                child: Column(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Lifestyle safe",style: TextStyle(color: Colors.white,fontSize: 35
                    ),),
                    SizedBox(height: 20,),
                    MaterialButton(onPressed: (){},
                      child: Text("Shop Now"),
                      height: 50,
                      minWidth:MediaQuery.of(context).size .width*0.7,
                      color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.5),
                    ),
                    ),
                    SizedBox(height: 40,)
                  ],
                ),
              ),
              GridView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 20
              ),
                  itemCount: 10,
                  itemBuilder:(context,index){
                return  iteamOfgriedview(context, index);
                  })
            ],
          ),
        ));
  }

  Container iteamOfgriedview(BuildContext context, int index) {
    return Container(
                alignment: Alignment.topRight,
                padding: EdgeInsets.all(10),
                height:MediaQuery.of(context).size.height,
                width:MediaQuery.of(context).size.width,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(images[index],
                        ))),
                child: Icon(Icons.email,size: 25,color: Colors.red  ,),
              );
  }
}
