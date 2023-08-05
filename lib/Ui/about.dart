
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00e4981),

      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 570,
                  child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: 20,
                      gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return  Container(
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
                        );


                        // return _tile(data[index].name, data[index].name, Icons.work);
                      })

              ),







            ],
          ),
        ),
      ),
    );
  }
}
