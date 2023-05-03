// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:party_app_ui/animation/fade_animaton.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String id = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isLogin = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/im_party.jpeg'),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.black.withOpacity(.6),
                Colors.black.withOpacity(.5),
                Colors.black.withOpacity(.4),
                Colors.black.withOpacity(.1),
              ]
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FadeAnimation(1, Text('Find the best parties near you.', style: TextStyle(color: Colors.amber, fontSize: 40),)),
              SizedBox(height: 40,),
              Text('Let us find you a tutorial for your interest', style: TextStyle(color: Colors.cyan, fontSize: 28),),
              SizedBox(height: 500,),
              _isLogin ?
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.orange
                ),
                child: TextButton(
                  onPressed: (){},
                  child: Text('Start', style: TextStyle(color: Colors.white, fontSize: 18),),
                ),
              ) :
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 5),
                      height: 55,
                      // width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.red
                      ),
                      child: TextButton(
                        onPressed: (){},
                        child: Text('Goole', style: TextStyle(color: Colors.white, fontSize: 18),),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 5),
                      height: 55,
                      // width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.blue
                      ),
                      child: TextButton(
                        onPressed: (){},
                        child: Text('Facebook', style: TextStyle(color: Colors.white, fontSize: 18),),
                      ),
                    ),
                  )

                ],
              )


            ],
          ),
        ),
      ),
    );
  }
}
