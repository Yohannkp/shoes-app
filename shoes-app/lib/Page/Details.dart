import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
class Details extends StatefulWidget {
  String url;
  Details({required this.url});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: Icon(Icons.arrow_back_sharp,size: 30,color: Colors.white,),
        actions: [
          Icon(CupertinoIcons.heart,size: 30,color: Colors.white,),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Hero(
                      tag: "container",
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(250),),
                          color: Colors.red,
                        ),
                      ),
                    ),
                Positioned(
                    child: Hero(
                        tag: "imgage1",
                        child: Image.network(this.widget.url)))
                  ],
    ),
            Expanded(child: Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("KD13 EP",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                      Text("\$ 12.5698",style: TextStyle(fontSize: 20),)
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    child: Wrap(
                      children: [
                        ReadMoreText("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"
                      ,trimLines: 5,moreStyle: TextStyle(color: Colors.red,),lessStyle: TextStyle(color: Colors.red),)
                        ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          width:100,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.black,width: 1)
                          ),
                          child: Image.network(this.widget.url,scale: 15,),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          width:100,
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              //border: Border.all(color: Colors.black,width: 1)
                          ),
                          child: Image.network(this.widget.url,scale: 15,),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          width:100,
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              //border: Border.all(color: Colors.black,width: 1)
                          ),
                          child: Image.network(this.widget.url,scale: 15,),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 35),
                        child: Text("Select Size",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),

                  Wrap(

                    children: [
                      Container(
                        width: 90,
                        height: 50,
                        decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Center(child: Text("UK6",style: TextStyle(fontSize: 16),)),
                      ),
                      Container(
                        width: 90,
                        height: 50,
                        decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Center(child: Text("UK7",style: TextStyle(fontSize: 16),)),
                      ),
                      Container(
                        width: 90,
                        height: 50,
                        decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Center(child: Text("UK8",style: TextStyle(fontSize: 16),)),
                      ),
                      Container(
                        width: 90,
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1,color: Colors.black),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Center(child: Text("UK9",style: TextStyle(fontSize: 16),)),
                      ),
                      Container(
                        width: 90,
                        height: 50,
                        decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Center(child: Text("UK10",style: TextStyle(fontSize: 16),)),
                      ),
                      Container(
                        width: 90,
                        height: 50,
                        decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Center(child: Text("UK11",style: TextStyle(fontSize: 16),)),
                      ),
                      Container(
                        width: 90,
                        height: 50,
                        decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Center(child: Text("UK12",style: TextStyle(fontSize: 16),)),
                      ),
                      Container(
                        width: 90,
                        height: 50,
                        decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Center(child: Text("UK13",style: TextStyle(fontSize: 16),)),
                      ),





                    ],
                  )
                ],
              ),

            )),
            Container(
              height: MediaQuery.of(context).size.height/12,
              child: Center(child:
              Container(
                  width: MediaQuery.of(context).size.width/1.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.teal[900],
                  ),
                  height: 50,
                  child: Center(child: Text("Add to Bag",style: TextStyle(color: Colors.white),)))),
            )
          ],
        ),
      ),

    );
  }
}
