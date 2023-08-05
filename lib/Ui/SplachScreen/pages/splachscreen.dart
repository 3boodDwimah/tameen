
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tameen/Ui/ChooseLanguge/pages/chooselanguge.dart';


class SplachScreen extends StatefulWidget {
  @override
  _SplachScreenState createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {

  void delay() {
    Future.delayed(Duration(milliseconds: 5000), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>  ChooseLanScreen()),
      );

    });
  }
  @override
  void initState() {
    delay();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Color(0xff00e4981),
      body: SafeArea(
        child: Container(
          child: Center(
            child:   SvgPicture.asset (
              'assets/images/app_circle_logo.svg',

              // height: 80,
              // width: 80,
            ),
          ),
        ),
      ),
    );
  }
}
