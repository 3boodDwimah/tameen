
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tameen/Ui/AppBarCustum/custumAppbar.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar:  CustmAppBar(),
      backgroundColor: Color(0xff00e4981),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
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
              Container(
                child: Text('Insurance Type'),
              ),
              SizedBox(height: 20,),

              Container(

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: (MediaQuery.of(context).size.width / 2.4),
                      height: (MediaQuery.of(context).size.width / 2.4),
                      child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset (
                              'assets/images/car_ins_btn.svg',

                              height: 80,
                              width: 80,
                            ),
                            SizedBox(height: 15,),
                            Container(
                              child: Text('Motor Insurco'),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      width: (MediaQuery.of(context).size.width / 2.4) ,
                      height: (MediaQuery.of(context).size.width / 2.4) ,
                      child: Card(
                        elevation: 10,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            SvgPicture.asset (
                              'assets/images/car_ins_btn.svg',

                              height: 80,
                              width: 80,
                            ),
                            SizedBox(height: 15,),

                            Container(
                              child: Text('Motor Insurco'),
                            )
                          ],
                        ),
                      ),
                    ),


                  ],
                ),
              ),
              SizedBox(height: 10,),

              Container(

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: (MediaQuery.of(context).size.width / 2.4),
                      height: (MediaQuery.of(context).size.width / 2.4),
                      child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset (
                              'assets/images/car_ins_btn.svg',

                              height: 80,
                              width: 80,
                            ),
                            SizedBox(height: 15,),
                            Container(
                              child: Text('Motor Insurco'),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      width: (MediaQuery.of(context).size.width / 2.4) ,
                      height: (MediaQuery.of(context).size.width / 2.4) ,
                      child: Card(
                        elevation: 10,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            SvgPicture.asset (
                              'assets/images/car_ins_btn.svg',

                              height: 80,
                              width: 80,
                            ),
                            SizedBox(height: 15,),

                            Container(
                              child: Text('Motor Insurco'),
                            )
                          ],
                        ),
                      ),
                    ),


                  ],
                ),
              ),

              Container(

                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 33,vertical: 10),
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Colors.white),
                child: ImageSlideshow(
                  width: double.infinity,
                  initialPage: 0,
                  indicatorColor: Colors.transparent,
                  indicatorBackgroundColor: Colors.transparent,
                  onPageChanged: (value) {
                    setState(() {
                      // currentSplashIndex = value;
                    });
                  },
                  autoPlayInterval: 3000,
                  // isLoop: true,
                  children:
                  List.generate(
                    3,
                    // (Companeysmotor == null )
                    //     ? 1 :
                    // Companeysmotor.length,
                        (index) {
                      return InkWell(
                        onTap: (){
                          // _launchURL(
                          //     (Companeysmotor == null)?'':
                          //
                          //     Companeysmotor[index].url
                          // );
                        },
                        child: Image.asset(

                         'assets/images/done.png'
                          // 'assets/images/app_circle_logo.png',
                          // fit: BoxFit.cover,

                        ),
                      );
                    },
                  ),
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
