import 'package:contra_ui/contra_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContactUsForm extends StatelessWidget {
  const ContactUsForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(24.0),
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      ContraText(
                        text: 'Contact us',
                        alignment: Alignment.centerLeft,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Wireframe is still important for ideation.",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 21,
                          color: trout,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      ContraInputText(
                        hintText: 'Full name',
                        prefixIcon:
                            SvgPicture.asset('../assets/icons/user.svg'),
                      ),
                      SizedBox(
                        height: 24.0,
                      ),
                      ContraDescriptionTextField(
                        hintText: "Write your message",
                        icon: Container(
                          height: 128,
                          width: 48,
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.all(4.0),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 13.0),
                            child: SvgPicture.asset(
                              '../assets/icons/mail.svg',
                              height: 24,
                              width: 24,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 24.0,
                      ),
                      ContraIconButton(
                        onPressed: () {},
                        label: 'Send Message',
                        isPrefixIcon: true,
                        icon: SvgPicture.asset(
                          '../assets/icons/arrow_next.svg',
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 24,
            top: 80,
            child: ContraIconCircleButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: SvgPicture.asset('../assets/icons/close.svg'),
              size: 48,
            ),
          )
        ],
      ),
    );
  }
}
