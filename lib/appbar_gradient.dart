import 'package:assignment_app/profile_page.dart';
import "package:flutter/material.dart";

class Page extends StatefulWidget {
  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {

  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return new Container(
      width: double.infinity,
          height: double.infinity,
          child: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Positioned(
                bottom:MediaQuery.of(context).size.height * 0.2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[

                    Image(
                      image: AssetImage('assets/child.gif'),
                      height: 250.0,
                    ),
                    SizedBox(height: 25.0,),

                    Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                        child: Container(
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 8.0,),
                                TextField(
                                  controller: nameController,
                                  decoration: InputDecoration(
                                    hintText: "Enter a Username",
                                    prefixIcon: Icon(Icons.drafts,color: Colors.black,size: 20.0,),

                                    filled: true,
                                    fillColor: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 8.0,),
                                TextField(
                                  controller: nameController,
                                  decoration: InputDecoration(
                                      hintText: "Password",

                                      prefixIcon: Icon(Icons.lock,color: Colors.black,size: 20.0,),
                                      filled: true,
                                      fillColor: Colors.white,
                                      suffixIcon: Icon(Icons.remove_red_eye)
                                  ),

                                ),

                              ],
                            ),

                            constraints: BoxConstraints(
                                maxHeight: 150.0,
                                maxWidth: 300.0,
                                minWidth: 150.0,
                                minHeight: 150.0
                            )
                        )

                    ),

                  ],
                ),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height * 0.17,
                child: RaisedButton(
                  elevation: 5.0,
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: new Text("LOGIN",style: TextStyle(color: Colors.white),),
                  color: Colors.redAccent,
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(5.0)),
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Profile( userFullName :nameController.text)));
                    print(nameController.text);
                  },
                ),
              ),
            ],

          ),
            decoration: new BoxDecoration(
              gradient: new LinearGradient(
              colors:[Colors.deepOrange,Colors.yellowAccent],
              begin: const FractionalOffset(1.0, 0.8),
              end: const FractionalOffset(1.5, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
      ),
    );
  }
  }