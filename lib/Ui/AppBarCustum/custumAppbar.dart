//
// import 'package:flutter/material.dart';
//
// class CustomAppBar extends StatefulWidget implements PreferredSizeWidget  {
//   @override
//   _CustomAppBarState createState() => _CustomAppBarState();
//
//   @override
//   // TODO: implement preferredSize
//   Size get preferredSize => throw UnimplementedError();
// }
//
// class _CustomAppBarState extends State<CustomAppBar> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       alignment: Alignment.center,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.only(
//             bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
//       ),
//
//         child: AppBar(
//           backgroundColor: Colors.white,
//           centerTitle: true,
//           title: Container(
//
//             child: Padding(
//               // padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
//                 padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
//
//                 child: Image.asset('assets/images/Inserco 1.png',
//                   height: 140,
//                   width: 140,
//
//                 )
//
//
//             ),
//           ),
//
//         ),
//
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustmAppBar extends StatefulWidget implements PreferredSizeWidget{
  @override
  _CustmAppBarState createState() => _CustmAppBarState();
  CustmAppBar({Key? key})
      : preferredSize = Size.fromHeight(ScreenUtil().setHeight(140)),
        super(key: key);

  @override
  final Size preferredSize; //

}

class _CustmAppBarState extends State<CustmAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(

        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),


            )
        ),
        child: Image.asset('assets/images/Inserco 1.png',
          height: 70,
          // width: 70,

        )



    );
  }
}

