// import 'package:contra_ui/contra_ui.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:flutter_swiper/flutter_swiper.dart';

// class DetailViewTypeThree extends StatefulWidget {
//   @override
//   _DetailViewTypeThreeState createState() => _DetailViewTypeThreeState();
// }

// class _DetailViewTypeThreeState extends State<DetailViewTypeThree> {
//   List<Color> bgs = [];

//   @override
//   void initState() {
//     super.initState();
//     bgs.add(ContraColor.flamingo);
//     bgs.add(ContraColor.lightening_yellow);
//     bgs.add(ContraColor.pastel_pink);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Column(
//             children: [
//               Expanded(
//                 flex: 5,
//                 child: Column(
//                   children: [
//                     ContraAppBar(
//                       height: 140,
//                       title: Row(
//                         children: [],
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.all(10),
//                       child: ContraText(
//                         text: 'SIMPLE TAG',
//                         fontSize: 17,
//                         alignment: Alignment.center,
//                         textAlign: TextAlign.center,
//                         textColor: ContraColor.trout,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.all(10.0),
//                       child: ContraText(
//                         text: 'Contra wireframe kit due, yeah',
//                         fontSize: 36,
//                         fontWeight: FontWeight.w800,
//                         textAlign: TextAlign.center,
//                         alignment: Alignment.center,
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.all(10.0),
//                       child: ContraText(
//                         text:
//                             "Wireframe is still important for ideation. It will help you to quickly test idea.",
//                         fontSize: 17,
//                         alignment: Alignment.center,
//                         textAlign: TextAlign.center,
//                         textColor: ContraColor.trout,
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.all(10),
//                       child: ContraButton(
//                         onPressed: () {},
//                         text: 'More',
//                         primaryColor: ContraColor.persian_blue,
//                         onPrimaryColor: ContraColor.white,
//                         borderColor: ContraColor.persian_blue,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Expanded(
//                 flex: 4,
//                 child: Swiper(
//                   itemCount: bgs.length,
//                   itemWidth: 450,
//                   itemHeight: 450,
//                   layout: SwiperLayout.TINDER,
//                   itemBuilder: (context, index) {
//                     return Container(
//                       decoration: ShapeDecoration(
//                           color: bgs[index],
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.all(Radius.circular(16)),
//                           )),
//                       child: Center(
//                         child: SvgPicture.asset(
//                           '../assets/icons/placeholder_icon.svg',
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//           Positioned(
//             left: 24,
//             top: 56,
//             child: ContraIconCircleButton(
//                 size: 48,
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//                 icon: SvgPicture.asset('../assets/icons/arrow_back.svg')),
//           )
//         ],
//       ),
//     );
//   }
// }
