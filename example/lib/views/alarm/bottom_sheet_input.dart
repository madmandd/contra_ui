import 'package:contra_ui/contra_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomSheetInput extends StatelessWidget {
  const BottomSheetInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        height: 200,
        color: Color(0xFF737373),
        child: Container(
          height: 200,
          decoration: ShapeDecoration(
            color: ContraColor.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              ),

            ),

          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ContraText(
                      text: 'Label',
                      alignment: Alignment.centerLeft,
                      textColor: ContraColor.wood_smoke,
                      fontSize: 21,


                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: SvgPicture.asset('../assets/icons/close.svg'),
                    ),
                  ],
                ),
              ),
              Container(
                height: 2,
                color: ContraColor.wood_smoke,
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ContraInputText(
                  hintText: 'Enter name',
                  prefixIcon: SvgPicture.asset('../assets/icons/mail.svg'),

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
