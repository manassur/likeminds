import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'build_user_list.dart';
import 'home.dart';
import 'list_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Helvetica",
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {



  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<BasicUserDetails> dummyUsers = List();

  @override
  void initState() {
      dummyUsers.add(new BasicUserDetails.create('Debra Boyd','UI Designer','1.jpg',false));
      dummyUsers.add(new BasicUserDetails.create('David Nguyen','Design Strategy','2.jpg',false));
      dummyUsers.add(new BasicUserDetails.create('Ologunde Manasseh','Mobile Developer','6.jpg',true));
      dummyUsers.add(new BasicUserDetails.create('Lisa Rose','Ux Designer','3.jpg',false));
      dummyUsers.add(new BasicUserDetails.create('Mark Stevens','Visual Designer','4.jpg',false));
      dummyUsers.add(new BasicUserDetails.create('Janet Greene','Interaction Designer','5.jpg',true));
  }

  @override
  Widget build(BuildContext context) {
     return DefaultTabController(
         length: 2,
         child: Scaffold(
           backgroundColor: Colors.grey[100],
           appBar: AppBar(
             title: Center(child: Text("PEOPLE",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),)),
             backgroundColor: Colors.white,
             elevation: 0,
             leading:  Center(
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
             bottom: TabBar(
                 unselectedLabelColor: Colors.black,
                 indicatorSize: TabBarIndicatorSize.label,
                 indicator:BoxDecoration(
                      boxShadow: [  BoxShadow(
                        color:Color(0xff9554FE).withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(2, 2), // chandow position
                      ),
                      ],
                     gradient: LinearGradient(
                         colors: [Color(0xff9554FE), Color(0xff577BFF)]),
                     borderRadius: BorderRadius.circular(50),),
                 tabs: [
                   Tab(
                     child: Align(
                       alignment: Alignment.center,
                       child: Text("LIST VIEW",style: TextStyle(fontWeight: FontWeight.bold),),
                     ),
                   ),
                   Tab(
                     child: Align(
                       alignment: Alignment.center,
                       child: Text("CARDS",style: TextStyle(fontWeight: FontWeight.bold),),
                     ),
                   ),
                 ]),
           ),
           body: Column(
             children: [
               Container(height: 20,color: Colors.white),
               Expanded(
                 child: TabBarView(children: [
                   BuildUserList(users: dummyUsers),
                   Container(),
                 ]),
               ),
             ],
           ),
         )
     )
     ;
  }
}
