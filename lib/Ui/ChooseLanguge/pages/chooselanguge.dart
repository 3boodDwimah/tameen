
import 'package:flutter/material.dart';
import 'package:tameen/Ui/AppBarCustum/custumAppbar.dart';

class ChooseLanScreen extends StatefulWidget {
  @override
  _ChooseLanScreenState createState() => _ChooseLanScreenState();
}

class _ChooseLanScreenState extends State<ChooseLanScreen> {
  int IsSelected = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00e4981),


      body: SafeArea(

          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,

            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Container(

                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),


                        )
                    ),
                    child: Image.asset('assets/images/Inserco 1.png',
                      height: 50,
                      // width: 70,

                    )



                ),
              ),
              SizedBox(height: 20,),



Center(
  child: Container(
    child:   Stack(
      children: [
        Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/app_circle_logo.png',
            height: 150,
              width: 150,

            ),



              // bottom: 10,

                 Container(
                    margin: EdgeInsets.all(35),
                    height: 1.2,
                    color: Colors.white54,
                  ),


          ],
        )


      ],
    ),
  ),

),

              Container(
                // padding: EdgeInsets.all(35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Spacer(),
                    InkWell(
                      onTap: (){
                        setState(() {
                          IsSelected = 0;


                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height/22,
                        width: MediaQuery.of(context).size.width/3.7,
                        decoration: BoxDecoration(
                          color:IsSelected==0? Colors.blue:Colors.white,

                          borderRadius: BorderRadius.all(Radius.circular(7))
                        ),
                        child: Text('English'),
                      ),
                    ),
                    Spacer(),

                    InkWell(
                      onTap: (){
                        setState(() {
                          IsSelected = 1;


                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height/22,
                        width: MediaQuery.of(context).size.width/3.7,
                        decoration: BoxDecoration(
                            color:IsSelected==1? Colors.blue:Colors.white,

                            borderRadius: BorderRadius.all(Radius.circular(7))
                        ),
                        child: Text('العربيه'),
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: (){
                        setState(() {
                          IsSelected = 2;


                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height/22,
                        width: MediaQuery.of(context).size.width/3.7,
                        decoration: BoxDecoration(
                            color:IsSelected==2? Colors.blue:Colors.white,

                            borderRadius: BorderRadius.all(Radius.circular(7))
                        ),
                        child: Text('اوردو'),
                      ),
                    ),

                    Spacer(),




                  ],
                ),
              )






            ],
          ),

      ),
    );
  }
}
