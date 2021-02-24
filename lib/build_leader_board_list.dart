import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'list_model.dart';

class BuildLeaderBoardList extends StatefulWidget {
  final List<BasicUserDetails> users;

  BuildLeaderBoardList({Key  key, this.users}) : super(key : key); // constructor

  @override
  _BuildLeaderBoardListState createState() => _BuildLeaderBoardListState();
}

class _BuildLeaderBoardListState extends State<BuildLeaderBoardList> {

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.users.length,
        itemBuilder: (ctx, pos) {
          return Container(
              color: Colors.white,
              height: 60,
              margin: EdgeInsets.only(bottom:25.0,right: 20),
              child: Row(
                  children: <Widget>[
                  Text((pos+1).toString(), style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black87,
                  ),),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 8.0, 0.0, 8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 22,
                        backgroundImage:AssetImage("drawable/"+widget.users[pos].image),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(
                          15.0, 0.0, 15.0, 0.0),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(widget.users[pos].name, style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.black87,
                            )
                            ),
                            SizedBox(height: 2,),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(5.0))
                              ),
                              child:Text(widget.users[pos].job, style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                              )
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    SvgPicture.asset(
                      "drawable/005-clapping.svg",
                      height: 22,
                      width: 22,
                    ),
                    SizedBox(width: 15,),
                  ]
              )
          );
        }
    );
  }
}