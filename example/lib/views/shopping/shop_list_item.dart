import 'package:example/views/shopping/shopping.dart';
import 'package:flutter/material.dart';
import 'package:contra_ui/contra_ui.dart';
import 'package:flutter_svg/svg.dart';

class ShopListItemWidget extends StatelessWidget {
  const ShopListItemWidget(
      {Key? key, required this.shopItem, required this.onTap})
      : super(key: key);
  final ShopItem shopItem;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(24),
        child: Row(
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: ShapeDecoration(
                  color: shopItem.backgroundColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                    side: BorderSide(color: ContraColor.wood_smoke, width: 2),
                  ),
                ),
                child: SvgPicture.asset(
                  shopItem.image,
                  width: 100,
                  height: 120,
                ),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              shopItem.by,
                              style: TextStyle(
                                color: ContraColor.trout,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                shopItem.name,
                                maxLines: 2,
                                style: TextStyle(
                                  color: ContraColor.wood_smoke,
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$" + shopItem.price,
                        style: TextStyle(
                          color: ContraColor.wood_smoke,
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      CartAddRemoveButton()
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
