import 'package:flutter/material.dart';
import 'list_model.dart';

class BuildStoriesList extends StatefulWidget {
  final List<BasicUserDetails> users;

  BuildStoriesList({Key  key, this.users}) : super(key : key); // constructor

  @override
  _BuildStoriesListState createState() => _BuildStoriesListState();
}

class _BuildStoriesListState extends State<BuildStoriesList> {

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.users.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, pos) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 3.0, 0.0,0),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.deepPurpleAccent,
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xff9554FE), Color(0xff577BFF)]),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(2.5),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 32,
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 30,
                          backgroundImage:AssetImage("drawable/"+widget.users[pos].image),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 5.0, 0.0,0),
                child: Text(widget.users[pos].name, style: TextStyle(
                  fontSize: 12,
                  color: Colors.black87,
                )),
              )
              ]
          );
        }
    );
  }
}