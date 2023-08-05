
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tameen/Ui/ChooseLanguge/pages/chooselanguge.dart';
import 'package:tameen/Ui/Home/homepage.dart';
import 'package:tameen/Ui/SplachScreen/pages/splachscreen.dart';

import '../../about.dart';
import '../../more.dart';



class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  // PersistentTabController _controller = PersistentTabController(initialIndex: 0);
  //
  // MotionTabController _tabController;

  int _currentIndex = 1;
  final List<Widget> _children = [AboutUs(), HomeScreen(), More()];

  @override
  void initState() {
    super.initState();
    // _tabController = MotionTabController(initialIndex: 1, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return  WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        // backgroundColor: AppColors.themeBlue,
        // appBar: CustomAppBar(),
        body: _children[_currentIndex],

        bottomNavigationBar: ConvexAppBar(
          activeColor: Color(0xff00e4981),
          backgroundColor: Colors.white,
          color: Color(0xff00e4981),
          style: TabStyle.reactCircle,
          items: [

            TabItem(icon: Icons.app_blocking_outlined, title: 'About'),
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.settings, title: 'More'),
          ],
          initialActiveIndex: 1 /*optional*/,
          onTap: (int i) => onTabTapped(i),
        ),

        // bottomNavigationBar:Directionality(
        //   textDirection: TextDirection.rtl, // set it to rtl
        //   child:  MotionTabBar(
        //   textStyle: TextStyle(
        //       color: Colors.blueGrey,
        //       fontSize: ScreenUtil().setSp(30),
        //       fontFamily: 'Montserrat',
        //       fontWeight: FontWeight.bold),
        //
        //   labels: ["About", "Home", "More"],
        //   initialSelectedTab: "Home",
        //   tabIconColor: AppColors.themeBlue,
        //   tabSelectedColor: AppColors.themeBlue,
        //
        //   onTabItemSelected: (int value) {
        //     print(value);
        //     setState(() {
        //       _tabController.index = value;
        //     });
        //     onTabTapped(value);
        //   },
        //
        //   icons: [
        //     Icons.app_blocking_outlined,
        //     MaterialIcons.home,
        //     Icons.settings
        //   ],
        //
        //   //textStyle: TextStyle(color: AppColors.themeLightBlue),
        // ),

        //     Container(
        //   //height: MediaQuery.of(context).size.height / 10,
        //   height: ScreenUtil().setHeight(170),
        //   decoration: BoxDecoration(
        //     color: AppColors.themeBlue,
        //     borderRadius: BorderRadius.only(
        //         topRight: Radius.circular(0), topLeft: Radius.circular(0)),
        //   ),
        //   child: ClipRRect(
        //     borderRadius: BorderRadius.only(
        //       topLeft: Radius.circular(20.0),
        //       topRight: Radius.circular(20.0),
        //     ),
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Expanded(
        //           child: BottomNavigationBar(
        //               backgroundColor: Colors.white,
        //               //backgroundColor: Colors.transparent,
        //               elevation: 0.0,
        //               currentIndex: _currentIndex,
        //               onTap: (int index) {
        //                 setState(() {
        //                   this._currentIndex = index;
        //                 });
        //                 onTabTapped(index);
        //               },
        //               type: BottomNavigationBarType.fixed,
        //               items: [
        //                 new BottomNavigationBarItem(
        //                     title: _currentIndex == 0
        //                         ? Text(
        //                             S.of(context).about,
        //                             style: TextStyle(
        //                                 color: AppColors.themeBlue,
        //                                 fontSize: ScreenUtil().setSp(35),
        //                                 fontFamily: 'Montserrat',
        //                                 fontWeight: FontWeight.bold),
        //                           )
        //                         : Text(
        //                             S.of(context).about,
        //                             style: TextStyle(
        //                                 color: Colors.blueGrey,
        //                                 fontSize: ScreenUtil().setSp(30),
        //                                 fontFamily: 'Montserrat',
        //                                 fontWeight: FontWeight.bold),
        //                           ),
        //                     icon: _currentIndex == 0
        //                         ? Icon(
        //                             Icons.app_blocking_outlined,
        //                             color: AppColors.themeBlue,
        //                             size: ScreenUtil().setSp(55),
        //                             semanticLabel: S.of(context).contact,
        //                           )
        //                         : Icon(
        //                             Icons.app_blocking_outlined,
        //                             color: Colors.blueGrey,
        //                             size: ScreenUtil().setSp(55),
        //                             semanticLabel: S.of(context).contact,
        //                           )),
        //                 new BottomNavigationBarItem(
        //                     backgroundColor: AppColors.themeBlueWhite,
        //                     title: _currentIndex == 1
        //                         ? Text(
        //                             S.of(context).home,
        //                             style: TextStyle(
        //                                 color: AppColors.themeBlue,
        //                                 fontSize: ScreenUtil().setSp(35),
        //                                 fontFamily: 'Montserrat',
        //                                 fontWeight: FontWeight.bold),
        //                           )
        //                         : Text(
        //                             S.of(context).home,
        //                             style: TextStyle(
        //                                 color: AppColors.themeBlueGrey,
        //                                 fontSize: ScreenUtil().setSp(30),
        //                                 fontFamily: 'Montserrat',
        //                                 fontWeight: FontWeight.bold),
        //                           ),
        //                     icon: _currentIndex == 1
        //                         ?
        //                         //  Icon(MaterialIcons.home)
        //                         Icon(
        //                             Icons.home,
        //                             color: AppColors.themeBlue,
        //                             size: ScreenUtil().setSp(55),
        //                             semanticLabel: S.of(context).home,
        //                           )
        //                         : Icon(
        //                             Icons.home,
        //                             color: Colors.blueGrey,
        //                             size: ScreenUtil().setSp(55),
        //                             semanticLabel: S.of(context).home,
        //                           )),
        //                 new BottomNavigationBarItem(
        //                   title: _currentIndex == 2
        //                       ? Text(
        //                           S.of(context).more,
        //                           style: TextStyle(
        //                               color: AppColors.themeBlue,
        //                               fontSize: ScreenUtil().setSp(35),
        //                               fontFamily: 'Montserrat',
        //                               fontWeight: FontWeight.bold),
        //                         )
        //                       : Text(
        //                           S.of(context).more,
        //                           style: TextStyle(
        //                               color: Colors.blueGrey,
        //                               fontSize: ScreenUtil().setSp(30),
        //                               fontFamily: 'Montserrat',
        //                               fontWeight: FontWeight.bold),
        //                         ),
        //                   icon: _currentIndex == 2
        //                       ? Icon(
        //                           Icons.settings,
        //                           color: AppColors.themeBlue,
        //                           size: ScreenUtil().setSp(55),
        //                           semanticLabel: S.of(context).more,
        //                         )
        //                       : Icon(
        //                           Icons.settings,
        //                           color: Colors.blueGrey,
        //                           size: ScreenUtil().setSp(55),
        //                           semanticLabel: S.of(context).more,
        //                         ),
        //                 ),
        //               ]),
        //         )
        //       ],
        //     ),
        //   ),
        // ),
      ),
      //),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}


