
import 'package:contra_ui/contra_ui.dart';
import 'package:example/views/shopping/shop_list_item.dart';
import 'package:example/views/shopping/shopping.dart';
import 'package:example/views/shopping/shopping_views/shopping_detail_page_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ShoppingListPageOne extends StatefulWidget {
  const ShoppingListPageOne({Key? key}) : super(key: key);

  @override
  _ShoppingListPageOneState createState() => _ShoppingListPageOneState();
}

class _ShoppingListPageOneState extends State<ShoppingListPageOne> {
  List<ShopItem> items = [];
  List<String> filters = [];

  @override
  void initState() {
    super.initState();
    filters.add('Small');
    filters.add("Medium");
    filters.add("Shirt");
    filters.add("Shirt");
    filters.add("Shirt");
    filters.add("Tee");
    items.add(ShopItem(
        image: "../assets/images/shopping/coat_fur.svg",
        name: "Rebousa - White striped tee",
        price: "189",
        backgroundColor: ContraColor.flamingo,
        by: "Company name"));
    items.add(ShopItem(
        image: "../assets/images/shopping/shirt_and_coat.svg",
        name: "Rebousa - White striped tee",
        price: "189",
        backgroundColor: ContraColor.caribbean_color,
        by: "Company name"));
    items.add(ShopItem(
        image: "../assets/images/shopping/striped_tee.svg",
        name: "Rebousa - White striped tee",
        price: "189",
        backgroundColor: ContraColor.lightening_yellow,
        by: "Company name"));
    items.add(ShopItem(
        image: "../assets/images/shopping/thunder_tshirt.svg",
        name: "Rebousa - White striped tee",
        price: "189",
        backgroundColor: ContraColor.pink_salomn,
        by: "Company name"));
    items.add(ShopItem(
        image: "../assets/images/shopping/coat_fur.svg",
        name: "Rebousa - White striped tee",
        price: "189",
        backgroundColor: ContraColor.flamingo,
        by: "Company name"));
    items.add(ShopItem(
        image: "../assets/images/shopping/shirt_and_coat.svg",
        name: "Rebousa - White striped tee",
        price: "189",
        backgroundColor: ContraColor.flamingo,
        by: "Company name"));
    items.add(ShopItem(
        image: "../assets/images/shopping/striped_tee.svg",
        name: "Rebousa - White striped tee",
        price: "189",
        backgroundColor: ContraColor.flamingo,
        by: "Company name"));
    items.add(ShopItem(
        image: "../assets/images/shopping/thunder_tshirt.svg",
        name: "Rebousa - White striped tee",
        price: "189",
        backgroundColor: ContraColor.flamingo,
        by: "Company name"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ContraAppBar(
        height: 100,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 24),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: ContraIconCircleButton(
                    size: 48,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: SvgPicture.asset('../assets/icons/arrow_back.svg'),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ContraText(
                text: 'T-Shirts',
                alignment: Alignment.bottomCenter,
                fontSize: 27,
              ),
            ),
            Expanded(
                child: SizedBox(
              width: 20,
            )),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 12),
              child: ChipFilterWidget(
                filters: filters,
              )
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              reverse: false,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ShopListItemWidget(shopItem: items[index], onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ShoppingDetailPageTwo()));
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
