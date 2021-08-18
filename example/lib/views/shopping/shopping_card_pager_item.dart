import 'package:contra_ui/contra_ui.dart';
import 'package:example/views/shopping/shopping.dart';
import 'package:example/views/shopping/shopping_views/shopping_detail_page_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ShoppingCardPagerItem extends StatelessWidget {
  final CategoryBig categoryBig;

  const ShoppingCardPagerItem({Key? key, required this.categoryBig})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: ShapeDecoration(
        color: categoryBig.backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          side: BorderSide(
            width: 2,
            color: ContraColor.wood_smoke,
          ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 24, top: 24),
                  child: Text(
                    categoryBig.name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: ContraColor.wood_smoke,
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 24, bottom: 24),
                  child: ContraButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ShoppingDetailPageTwo()));
                    },
                    text: 'Shop Now',
                    height: 96,
                  ),
                )
              ],
            ),
          ),
          Expanded(
              flex: 4,
              child: SvgPicture.asset(
                categoryBig.image,
                width: 210,
                height: 230,
              ))
        ],
      ),
    );
  }
}
