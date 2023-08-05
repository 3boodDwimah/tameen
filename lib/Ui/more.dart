import 'package:adobe_xd/pinned.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

import 'package:flutter/material.dart';
String email = '';

class More extends StatefulWidget {
  @override
  _MoreState createState() => _MoreState();
}

class _MoreState extends State<More> {
  TextEditingController emailTxtController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return   ScreenUtilInit(
        designSize: Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: () =>
        MaterialApp(
        //... other code
        builder: (context, widget) {
      //add this line
      ScreenUtil.setContext(context);
      return Scaffold(
      backgroundColor: Color(0xff00e4981),

      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(

            // mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(height: 300.h,),

              Container(
                height: 70,
                //width:350,
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius:
                  BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child:  TextField(
                    controller: emailTxtController,
                    textInputAction: TextInputAction.done,
                    style: (
                        TextStyle(
                        color: Colors.red,
                        fontSize:15,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold)
                    ),
                    decoration: InputDecoration(
                      //  icon: const Icon(Icons.email),
                      border: InputBorder.none,
                      hintText: 'Email',
                      labelText: 'Emailhhh',
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize:15,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.red,
                        fontSize:15,
                      ),
                    ),
                    keyboardType:
                    TextInputType.number,
                  ),
                ),
              ),

              SizedBox(height: 20.w,),

              Stack(
                children: <Widget>[
                  Container(
                    height: 100.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      color: const Color(0xff18123a),
                      borderRadius: BorderRadius.circular(24.0),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 42.0, end: 27.0),
                    Pin(size: 27.0, middle: 0.439),
                    child: Text(
                      'الفجر',
                      style: TextStyle(
                        fontFamily: 'MadaniArabic',
                        fontSize: 20,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.right,
                      softWrap: false,
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(startFraction: 0.3849, endFraction: 0.3691),
                    Pin(size: 27.0, middle: 0.5122),
                    child: Text(
                      '3.45 am ',
                      style: TextStyle(
                        fontFamily: 'MadaniArabic-Regular',
                        fontSize: 20,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.right,
                      softWrap: false,
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 30.0, start: 19.5),
                    Pin(size: 30.3, middle: 0.496),
                    child: SvgPicture.string(
                      '<svg viewBox="48.5 563.7 30.0 30.3" ><path transform="translate(45.54, 561.0)" d="M 33 8.550000190734863 L 26.10000038146973 2.700000286102295 L 24.14999961853027 4.950000286102295 L 31.04999923706055 10.80000019073486 L 33 8.550000190734863 Z M 11.85000038146973 5.099999904632568 L 9.899999618530273 2.849999904632568 L 3 8.550000190734863 L 4.949999809265137 10.80000019073486 L 11.85000038146973 5.100000381469727 Z M 18.75 12 L 16.5 12 L 16.5 21 L 23.54999923706055 25.35000038146973 L 24.75 23.55000114440918 L 18.75 19.95000076293945 L 18.75 12 Z M 18 6 C 10.5 6 4.5 12 4.5 19.5 C 4.5 27 10.5 33 18 33 C 25.5 33 31.5 27 31.5 19.5 C 31.5 12 25.5 6 18 6 Z M 18 30 C 12.14999961853027 30 7.5 25.35000038146973 7.5 19.5 C 7.5 13.64999961853027 12.14999961853027 9 18 9 C 23.85000038146973 9 28.5 13.64999961853027 28.5 19.5 C 28.5 25.35000038146973 23.85000038146973 30 18 30 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),

              InkWell(
                onTap: ()async{
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext bc) {
                        return SafeArea(
                          child: Container(
                            color: Color(0xff0e4981),
                            child:  Wrap(
                              children: <Widget>[
                                 ListTile(
                                    leading:  Icon(
                                      Icons.photo,
                                      color: Colors.white,
                                    ),
                                    title:  Text(
                                      'Photo Library',
                                      style: TextStyle(
                                          color: Colors.white
                                      ),
                                    ),
                                    onTap: () async{
                                      final ImagePicker _picker = ImagePicker();
                                      final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
                                      Navigator.of(context).pop();
                                    }),
                                 ListTile(
                                  leading: new Icon(
                                    Icons.photo_camera,
                                    color: Colors.white,
                                  ),
                                  title:  Text(
                                    'Camera',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onTap: () async{
                                    // _openCamera();
                                    final ImagePicker _picker = ImagePicker();
                                    final XFile? image = await _picker.pickImage(source: ImageSource.camera);                                    //_imgFromCamera();
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            ),
                          ),
                        );
                      });


                },
                child: Container(
                  child: Text('Img',


                    style: TextStyle(
                        fontSize: 20
                    ),
                  ),
                ),
              ),
              Container(
                height: 68,
                width: 317,
                decoration: BoxDecoration(
                  color: const Color(0xff18123a),
                  borderRadius: BorderRadius.circular(24.0),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x29000000),
                      offset: Offset(0, 3),
                      blurRadius: 6,
                    ),
                  ],
                ),
              ),
              Text(
                'اكتساب المعلومات',
                style: TextStyle(
                  fontFamily: 'MadaniArabic',
                  fontSize: 22,
                  color: const Color(0xfffdae02),
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.right,
                softWrap: false,
              )
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [




          ],
        ),
      ),
      floatingActionButton: Container(height: 100,width: 100,color: Colors.red,),
        // return new Scaffold(
    // key: _scaffoldKey,
    // drawer: new Drawer(),
    // appBar: new AppBar(
    // leading: new IconButton(
    // icon: new Icon(Icons.settings),
    // onPressed: () => _scaffoldKey.currentState.openDrawer(),
    // ),
    // ),
    // );    );
    );
  }
        )
    );

}}
