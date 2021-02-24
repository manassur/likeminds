import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'build_leader_board_list.dart';
import 'build_stories_list.dart';
import 'list_model.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<BasicUserDetails> dummyUsers = List();
  List<BasicUserDetails> dummyStories = List();
  @override
  void initState() {
    dummyUsers.add(new BasicUserDetails.create('Clemens Fischer','SYP','1.jpg',false));
    dummyUsers.add(new BasicUserDetails.create('Ravasz Gyorgy ','IDEO','2.jpg',false));
    dummyUsers.add(new BasicUserDetails.create('Gilbert Lambert','BEWorks','3.jpg',false));


    dummyStories.add(new BasicUserDetails.create('SYP','UI Designer','8.jpg',false));
    dummyStories.add(new BasicUserDetails.create('IBDO ','Design Strategy','9.jpg',false));
    dummyStories.add(new BasicUserDetails.create('DWorks','Mobile Developer','10.jpg',false));
    dummyStories.add(new BasicUserDetails.create('CI','Mobile Developer','7.jpg',false));
    dummyStories.add(new BasicUserDetails.create('INNO','Mobile Developer','11.jpg',false));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("HOME",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),)),
        backgroundColor: Colors.white,
        elevation: 0,
        leading:   Center(
          child: SvgPicture.asset(
            "drawable/menu.svg",
            height: 15,
            width: 15,
          ),
        ),
        actions: [
          InkResponse(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>Home()));
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SvgPicture.asset(
                "drawable/003-loupe.svg",
                height: 20,
                width: 20,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              color: Colors.white,
              child: BuildStoriesList(users: dummyStories,),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Stack(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text("APPRECIATE ALL",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                    height: 365,
                    margin: EdgeInsets.only(right: 30,top: 60),
                    decoration:BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                        color:Color(0xff9554FE).withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(2, 2), // chandow position
                      ),],
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xff9554FE), Color(0xff577BFF)]),
                      borderRadius: BorderRadius.circular(10),),
                  ),


                  Container(
                    margin: EdgeInsets.only(left: 30,top: 20),
                    height: 350,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                        BoxShadow(
                          color: Colors.grey[400],
                          blurRadius: 5,
                          offset: Offset(2, 2), // Shadow position
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top:30.0,left: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         Text("LEADER BOARD",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          Expanded(child: Padding(
                            padding: const EdgeInsets.only(top:10.0),
                            child: BuildLeaderBoardList(users: dummyUsers),
                          ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10,top: 15,right: 10,bottom: 20),
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[400],
                    blurRadius: 5,
                    offset: Offset(2, 2), // Shadow position
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(top:20.0,left: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("WORK SPACE",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right:10.0),
                                child: SvgPicture.asset(
                                  "drawable/001-clock.svg",
                                  height: 15,
                                  width: 15,
                                ),
                              ),

                              Text("9.00 AM",style: TextStyle(color: Colors.grey,fontSize: 13),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Stack(
                      children: [

                        Padding(
                          padding: const EdgeInsets.only(left:38.0),
                          child:  Container(
                            decoration:BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey[300],
                                  blurRadius: 10,
                                  spreadRadius: 1,
                                  offset: Offset(0, 8), // Shadow position
                                ),
                              ],
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 25,
                              child:SvgPicture.asset(
                                "drawable/block.svg",
                                height: 25,
                                width: 25,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration:BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[300],
                                blurRadius: 4,
                                offset: Offset(0, 8), // Shadow position
                              ),
                            ],
                              color: Colors.black.withOpacity(0.7),
                              shape: BoxShape.circle,
                          ),
                          child: Container(
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 25,
                              child:SvgPicture.asset(
                                "drawable/office-chair.svg",
                                height: 25,
                                width: 25,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20,)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
