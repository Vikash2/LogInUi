import 'package:flutter/material.dart';


class Profile extends StatelessWidget {

  final String userFullName;
  Profile({this.userFullName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar : AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.deepOrange,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Icon(Icons.arrow_back,color:Colors.white),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: new Text(
                "Profile",
              ),
            ),
          ],
        ),
      ),


      body: Stack(
        children: <Widget>[
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 20.0,),
          Image(
          image: AssetImage('assets/clipart.gif'),
          height: 220.0,
          ),
                SizedBox(height: 16.0,),
                Container(
                  height: 304.0,

                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 10.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                        Text(
                          "12",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.w800,color: Colors.white),
                        ),
                        SizedBox(height: 4.0,),
                        Text(
                          "Post",style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w500,color: Colors.white),
                        ),
              ],
            ),
            SizedBox(width: 30.0,),
            Column(
              children: <Widget>[
                        Text(
                          "Jimmy Nelson",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.w800,color: Colors.white),
                        ),
                        SizedBox(height: 4.0,),
                        Text(
                          "Photographer",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w500,color: Colors.white),
                        ),
              ],
            ),
          ],
                        ),

                        SizedBox(height: 15.0,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "23",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.w800,color: Colors.white),
                                ),
                                SizedBox(height: 4.0,),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Followers",style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w500,color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 15.0,),
                            Column(
                              children: <Widget>[
                                Text(
                                  "A famous photographer,from UK",
                                  textAlign: TextAlign.right,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w300,color: Colors.white),
                                ),
                                SizedBox(height: 4.0,),
                                Text(
                                  "Photographer since 1987.",
                                  style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w300,color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "56",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.w800,color: Colors.white),
                                ),
                                SizedBox(height: 4.0,),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Following",style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w500,color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 15.0,),
                            Column(
                              children: <Widget>[
                                Text(
                                  "Since,2010 he has been working on  ",
                                  textAlign: TextAlign.right,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w300,color: Colors.white),
                                ),
                                SizedBox(height: 4.0,),
                                Text(
                                  "a series 'Before they Pass Away'.",
                                  textAlign: TextAlign.right,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w300,color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  decoration: new BoxDecoration(
                    gradient: new LinearGradient(
                        colors:[Colors.deepOrange,Colors.yellowAccent],
                        begin: const FractionalOffset(1.0, 0.5),
                        end: const FractionalOffset(0.0, 1.5),
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp),

                  ),

                )
          ]
          ),
      Positioned(
        top:215.0,
        left:20.0,
        child: Stack(
          children: <Widget>[
            IconButton(
              color: Colors.white,
              icon: Icon(Icons.lens, size: 65.0,color: Colors.red,), onPressed: () {},
            ),
            IconButton(
              alignment: Alignment.center,
              color: Colors.white,
              icon: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Icon(Icons.add, size: 35.0,color: Colors.white,),
              ), onPressed: () {},
            ),
          ],
        ),
      )
        ],
      ),

    );
  }
}
