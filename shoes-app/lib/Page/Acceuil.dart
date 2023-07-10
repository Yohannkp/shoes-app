import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/Page/Details.dart';
class Acceuil extends StatefulWidget {
  const Acceuil({super.key});

  @override
  State<Acceuil> createState() => _AcceuilState();
}

class _AcceuilState extends State<Acceuil> {
  int currentpage = 0;
  late PageController _controllerPage;
  double turn = 3.7/4;
  late List<double> listTurn;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controllerPage = new PageController(initialPage: currentpage,viewportFraction: 0.9);
    listTurn = [
      turn,
      turn,
      turn,
      turn
    ];
  }
  //Sa prend en paramètre l'index du container
  void changeanimation(int index){
    if(currentpage>index && currentpage<index+2){
      listTurn[index] += 0.08;
    }else{
      listTurn[index] = 3.7/4;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_sharp,size: 30,),
        actions: [
          Icon(Icons.search,size: 30,),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("Shoes",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
            //Categories
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  TextButton(onPressed: (){}, child: Container(
                    width: 50,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(50),
                    ),
                      child: Center(child: Text("All",style: TextStyle(color: Colors.white),)))),
                  TextButton(onPressed: (){}, child: Container(
                      width: 90,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.grey,width: 0.2)
                      ),
                      child: Center(child: Text("Balenciaga",style: TextStyle(color: Colors.black),)))),
                  TextButton(onPressed: (){}, child: Container(
                      width: 70,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.grey,width: 0.2)
                      ),
                      child: Center(child: Text("Air Max",style: TextStyle(color: Colors.black),)))),
                  TextButton(onPressed: (){}, child: Container(
                      width: 60,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.grey,width: 0.2)
                      ),
                      child: Center(child: Text("Presto",style: TextStyle(color: Colors.black),)))),
                  TextButton(onPressed: (){}, child: Container(
                      width: 70,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.grey,width: 0.2)
                      ),
                      child: Center(child: Text("Huarche",style: TextStyle(color: Colors.black),)))),
                  TextButton(onPressed: (){}, child: Container(
                      width: 60,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.grey,width: 0.2)
                      ),
                      child: Center(child: Text("Gucci",style: TextStyle(color: Colors.black),)))),

                ],
              ),
            ),

            //Chaussures
            Container(
              height: MediaQuery.of(context).size.height/2.5,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: PageView(
                  onPageChanged: (value){
                    setState(() {
                      currentpage = value;
                      print(currentpage);
                    });

                    if(currentpage>0 && currentpage<2){
                      listTurn[0] += 0.08;
                    }else{
                      listTurn[0] = 3.7/4;
                    }

                    if(currentpage>1 && currentpage<3){
                      listTurn[1] += 0.08;
                    }else{
                      listTurn[1] = 3.7/4;
                    }

                    if(currentpage>2 && currentpage<4){
                      listTurn[2] += 0.08;
                    }else{
                      listTurn[2] = 3.7/4;
                    }


                  },
                  controller: _controllerPage,
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                          PageRouteBuilder(
                              transitionDuration: Duration(seconds: 1),
                              reverseTransitionDuration: Duration(seconds: 1),
                              pageBuilder: (context,animation,secondaryAnimation){
                            final curvecAnimation = CurvedAnimation(parent: animation, curve: Interval(0, 0.5));
                            return FadeTransition(opacity: curvecAnimation,
                              child: Details(url: "https://th.bing.com/th/id/R.2a9712c75e9c28cda8b981e5b78280f9?rik=Ss0mcSghya%2fghA&pid=ImgRaw&r=0"),);
                          })
                        );
                      },
                      child: Container(
                        child: Row(
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                HeroMode(
                                  child: Hero(
                                    tag: "container",
                                    child: Container(
                                      width: MediaQuery.of(context).size.width/1.4,
                                      height: MediaQuery.of(context).size.height/2.5,

                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.red,
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: ListTile(
                                              title: Text("Alpha Savage",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                                              subtitle: Text("\$ 8.895",style: TextStyle(color: Colors.white,fontSize: 20),),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 25),
                                            child: Row(
                                              children: [
                                                Container(
                                                  width: 1,
                                                  height: MediaQuery.of(context).size.height/4,
                                                  color: Colors.grey[200],
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  enabled: false,
                                ),
                                Positioned(
                                  bottom:60,
                                  top: 100,
                                  left: 30,


                                  child: AnimatedRotation(
                                      turns: listTurn[0],
                                      duration: Duration(milliseconds: 200),
                                      child: Hero(
                                        tag: "imgage1",
                                          child: Image.network("https://th.bing.com/th/id/R.2a9712c75e9c28cda8b981e5b78280f9?rik=Ss0mcSghya%2fghA&pid=ImgRaw&r=0",))),
                                )
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width/1.4,
                                height: MediaQuery.of(context).size.height/2.5,

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.orange,
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ListTile(
                                        title: Text("Alpha Savage",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                                        subtitle: Text("\$ 8.895",style: TextStyle(color: Colors.white,fontSize: 20),),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 25),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 1,
                                            height: MediaQuery.of(context).size.height/4,
                                            color: Colors.grey[200],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                bottom:0,
                                top: 60,
                                left: 30,


                                child: AnimatedRotation(
                                    turns: listTurn[1],
                                    duration: Duration(milliseconds: 200),
                                    child: Image.asset("lib/assets/s7.3022050-700_A_1-removebg-preview.png",)),
                              )
                            ],
                          ),

                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width/1.4,
                                height: MediaQuery.of(context).size.height/2.5,

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.blue,
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ListTile(
                                        title: Text("Alpha Savage",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                                        subtitle: Text("\$ 8.895",style: TextStyle(color: Colors.white,fontSize: 20),),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 25),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 1,
                                            height: MediaQuery.of(context).size.height/4,
                                            color: Colors.grey[200],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                bottom:60,
                                top: 100,
                                left: 30,


                                child: AnimatedRotation(
                                    turns: listTurn[2],
                                    duration: Duration(milliseconds: 200),
                                    child: Image.network("https://i0.wp.com/www.kintec.net/wp-content/uploads/2016/04/hayate-2-mens.png?resize=960%2C598&ssl=1",)),
                              )
                            ],
                          ),

                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width/1.4,
                                height: MediaQuery.of(context).size.height/2.5,

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.purple,
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ListTile(
                                        title: Text("Alpha Savage",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                                        subtitle: Text("\$ 8.895",style: TextStyle(color: Colors.white,fontSize: 20),),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 25),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 1,
                                            height: MediaQuery.of(context).size.height/4,
                                            color: Colors.grey[200],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                bottom:60,
                                top: 100,
                                left: 30,


                                child: AnimatedRotation(
                                    turns: listTurn[3],
                                    duration: Duration(milliseconds: 200),
                                    child: Image.network("https://i.pinimg.com/originals/26/e0/45/26e0454231dfc6bfd08d7bd3358cef54.png",)),
                              )
                            ],
                          ),

                        ],
                      ),
                    )


                  ],
                ),
              ),
            ),
            //Partie Text
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 25),
              child: Row(
                children: [
                  Text("243 OPTIONS"),
                ],
              ),
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                        width: 150,
                        child: Image.network("https://th.bing.com/th/id/R.dac63685cd864fc935b493095d1b5bc5?rik=y0CbeTrPVTEweA&pid=ImgRaw&r=0",fit: BoxFit.fill,)),
                  ],
                ),
                Column(
                  children: [
                    Container(

                      width: MediaQuery.of(context).size.width/1.7,
                      child: ListTile(

                          title: Text("Lebron for basket ball players"),
                        subtitle: Text("\$ 12.5649",style: TextStyle(color: Colors.grey),),
                        ),

                    )
                  ],
                )
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                        width: 150,
                        child: Image.network("https://th.bing.com/th/id/R.b6e95b31036f1d6775491aa1baa8f15e?rik=BiYUDcm0DdIjoQ&pid=ImgRaw&r=0",fit: BoxFit.fill,)),
                  ],
                ),
                Column(
                  children: [
                    Container(

                      width: MediaQuery.of(context).size.width/1.7,
                      child: ListTile(

                        title: Text("Air Jordan for basket ball players"),
                        subtitle: Text("\$ 12.5649",style: TextStyle(color: Colors.grey),),
                      ),

                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
