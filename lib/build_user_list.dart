import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'list_model.dart';

class BuildUserList extends StatefulWidget {
  final List<BasicUserDetails> users;

  BuildUserList({Key  key, this.users}) : super(key : key); // constructor

  @override
  _BuildUserListState createState() => _BuildUserListState();
}

class _BuildUserListState extends State<BuildUserList> {

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:40.0),
      child: ListView.builder(
          itemCount: widget.users.length,
          itemBuilder: (ctx, pos) {
            return Container(

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 6,
                      blurRadius: 10,
                      offset: Offset(0, 10), // chandow position
                    ),

                  ],
                ),
                height: 90,
                margin: EdgeInsets.only(bottom:25.0,left: 15,right: 15),
                child: Row(
                    children: <Widget>[
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey[300],
                                  blurRadius: 4,
                                  offset: Offset(4, 8), // Shadow position
                                ),
                              ],
                            ),
                            height: 40,
                            width: 40,
                            child: Image(
                              fit: BoxFit.cover,
                              image: AssetImage("drawable/"+widget.users[pos].image),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(
                            25.0, 0.0, 15.0, 0.0),
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
                        "drawable/002-write.svg",
                        height: 15,
                        width: 15,
                      ),
                      SizedBox(width: 40,),
                      SvgPicture.asset(
                        "drawable/004-heart.svg",
                        height: 15,
                        width: 15,
                        color:widget.users[pos].isLiked? Colors.pink:Colors.black87,

                      ),
                      SizedBox(width: 30,),
                    ]
                )
            );
          }
      ),
    );
  }
}